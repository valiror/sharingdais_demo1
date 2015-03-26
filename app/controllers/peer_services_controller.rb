class PeerServicesController < ApplicationController
layout 'peer_service'
  def index
    #puts "======================#{params[:search][:skill_type_id]}================="
   @search_params = nil
   if params[:search]
     session[:city_id] = params[:search][:city_id]
     location = params[:search][:location_id]
     key = params[:search][:peer_category_id]
     city = params[:search][:city_id]
     query = ""
      if params[:search][:peer] == "0"
       query += "seeker_provider = 0"
      else
       query += "seeker_provider = 1"
      end
      if params[:search][:peer_category_id] != '1'
        if key.present?
            query += " and peer_category_id = #{key}"
        end
      end
      #if city.present?
      #   query += " and city_id = #{city}"
      #end
      #if location.present?
      #   query += " and location_id = #{location}"
      #end
      if params[:search].has_key?("include_near_by_locations")
        location = Location.where("id = ?",params[:search][:location_id]).last
        city = City.where("id = ?",params[:search][:city_id]).last
        search_area = [city.city_name, location.location_name, "India"].join(", ")
        @search_results = PeerServicePostRequirement.near("#{search_area}", 10).where(query).paginate(:page => params[:page], :per_page => 15)    
      else
        @search_results = PeerServicePostRequirement.where(query).paginate(:page => params[:page], :per_page => 15)
      end 
      #@search_results = SkillPostRequirement.where(query).paginate(:page => params[:page], :per_page => 25)
      @search_params = @search_results.count
      @locations = params[:search][:city_id].blank? ? [] : City.find(params[:search][:city_id]).locations
      @page = params[:page] || 1
   end
     redirect_to "/#{@city.city_name}/#{@location.location_name}/peer_services?key=#{params[:search][:peer_category_id]}&peer=#{params[:search][:peer]}" unless @city.nil?
  end

  def peer_result
    if params[:seeker_provider] == 'true'
      @prm = true
    else
      @prm = false
    end
    @search_results = PeerServicePostRequirement.where("location_id=? and seeker_provider=?",params[:id],@prm).paginate(:page => params[:page], :per_page => 15)
    puts "====#{@search_results}==================================================="
  end

	
end