# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150325150437) do

  create_table "activities", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.integer  "order_id"
    t.integer  "post_requirement_id"
    t.boolean  "seeked_shared",             :default => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.integer  "skill_post_requirement_id"
  end

  create_table "ads", :force => true do |t|
    t.integer  "box_1"
    t.integer  "box_2"
    t.integer  "box_3"
    t.integer  "box_4"
    t.integer  "box_5"
    t.integer  "box_6"
    t.integer  "box_7"
    t.integer  "box_8"
    t.integer  "box_9"
    t.integer  "box_10"
    t.string   "ip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "box_11"
    t.integer  "box_12"
    t.integer  "box_13"
    t.integer  "box_14"
    t.integer  "box_15"
    t.integer  "box_16"
    t.integer  "box_17"
    t.integer  "box_18"
    t.integer  "box_19"
    t.integer  "box_20"
  end

  create_table "book_activities", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.integer  "book_order_id"
    t.integer  "book_post_requirement_id"
    t.boolean  "seeked_shared",            :default => false
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "book_messages", :force => true do |t|
    t.integer  "user_id"
    t.integer  "posted_to"
    t.text     "content"
    t.boolean  "read"
    t.string   "subject"
    t.boolean  "order_status"
    t.boolean  "accepted"
    t.boolean  "trashed"
    t.integer  "book_post_requirement_id"
    t.integer  "location_id"
    t.integer  "book_order_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "book_negotiates", :force => true do |t|
    t.integer  "book_post_requirement_id"
    t.integer  "user_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "nego_id"
  end

  create_table "book_order_cancels", :force => true do |t|
    t.integer  "book_order_id"
    t.date     "cancel_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "book_orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "provider_id"
    t.integer  "book_post_requirement_id"
    t.date     "order_date"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "book_post_requirements", :force => true do |t|
    t.integer  "service_id"
    t.integer  "city_id"
    t.integer  "location_id"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description"
    t.string   "name"
    t.string   "author"
    t.integer  "user_id"
    t.boolean  "seeker_provider"
    t.string   "isbn_number"
    t.date     "date_of_posting"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.float    "rent"
    t.integer  "category_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "city_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "food_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "location_name"
    t.integer  "city_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "meal_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "posted_to"
    t.boolean  "read",                      :default => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "subject"
    t.boolean  "order_status",              :default => false
    t.boolean  "accepted",                  :default => false
    t.boolean  "trashed",                   :default => false
    t.integer  "post_requirement_id"
    t.string   "food"
    t.string   "location"
    t.integer  "order_id"
    t.integer  "skill_post_requirement_id"
  end

  create_table "negotiates", :force => true do |t|
    t.integer  "post_requirement_id"
    t.string   "user_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "nego_id"
    t.integer  "skill_post_requirement_id"
  end

  create_table "order_cancels", :force => true do |t|
    t.integer  "order_id"
    t.date     "cancel_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer "user_id"
    t.integer "provider_id"
    t.integer "post_requirement_id"
    t.date    "order_date"
    t.integer "skill_post_requirement_id"
  end

  create_table "peer_activities", :force => true do |t|
    t.integer  "peer_service_post_requirement_id"
    t.integer  "contact_id"
    t.integer  "peer_order_id"
    t.integer  "user_id"
    t.boolean  "seeked_shared"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "peer_categories", :force => true do |t|
    t.string   "peer_category_type"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "peer_messages", :force => true do |t|
    t.boolean  "accepted"
    t.integer  "user_id"
    t.integer  "posted_to"
    t.text     "content"
    t.boolean  "read"
    t.string   "subject"
    t.integer  "peer_service_post_requirement_id"
    t.integer  "peer_order_id"
    t.integer  "location_id"
    t.boolean  "trashed"
    t.boolean  "order_status"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "peer_negotiates", :force => true do |t|
    t.integer  "peer_service_post_requirement_id"
    t.integer  "user_id"
    t.integer  "nego_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "peer_order_cancels", :force => true do |t|
    t.integer  "peer_order_id"
    t.date     "cancel_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "peer_orders", :force => true do |t|
    t.integer  "peer_service_post_requirement_id"
    t.date     "order_date"
    t.integer  "user_id"
    t.integer  "provider_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "peer_service_post_requirements", :force => true do |t|
    t.integer  "service_id"
    t.integer  "city_id"
    t.integer  "location_id"
    t.integer  "peer_category_id"
    t.integer  "user_id"
    t.float    "charges"
    t.boolean  "sun"
    t.boolean  "mon"
    t.boolean  "tue"
    t.boolean  "wed"
    t.boolean  "thu"
    t.boolean  "fri"
    t.boolean  "sat"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "seeker_provider"
    t.text     "speciality"
    t.string   "degree"
    t.string   "exp"
    t.text     "additinal_info"
    t.text     "review"
    t.datetime "peer_updated_at"
    t.integer  "peer_file_size"
    t.string   "peer_content_type"
    t.string   "peer_file_name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.binary   "peer"
  end

  create_table "post_requirements", :force => true do |t|
    t.integer  "service_id"
    t.integer  "provider_id"
    t.integer  "city_id"
    t.integer  "location_id"
    t.integer  "food_type_id"
    t.integer  "meal_type_id"
    t.integer  "region_id"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "no_of_persons"
    t.decimal  "budget",                  :precision => 8, :scale => 2
    t.text     "details"
    t.integer  "user_id"
    t.boolean  "seeker_provider",                                       :default => true
    t.datetime "created_at",                                                              :null => false
    t.datetime "updated_at",                                                              :null => false
    t.string   "food_image_file_name"
    t.string   "food_image_content_type"
    t.integer  "food_image_file_size"
    t.datetime "food_image_updated_at"
    t.boolean  "is_active",                                             :default => true
  end

  create_table "providers", :force => true do |t|
    t.string   "provider_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "rates", :force => true do |t|
    t.integer  "negotiate_id"
    t.integer  "book_negotiate_id"
    t.integer  "user_id"
    t.integer  "rated_id"
    t.integer  "post_requirement_id"
    t.integer  "book_post_requirement_id"
    t.integer  "rated_no"
    t.string   "service_type"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "skill_post_requirement_id"
    t.integer  "peer_service_post_requirement_id"
    t.integer  "peer_negotiate_id"
  end

  add_index "rates", ["book_negotiate_id"], :name => "index_rates_on_book_negotiate_id"
  add_index "rates", ["book_post_requirement_id"], :name => "index_rates_on_book_post_requirement_id"
  add_index "rates", ["negotiate_id"], :name => "index_rates_on_negotiate_id"
  add_index "rates", ["post_requirement_id"], :name => "index_rates_on_post_requirement_id"
  add_index "rates", ["user_id"], :name => "index_rates_on_user_id"

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.text     "content"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "user_id"
    t.integer  "negotiate_id"
    t.integer  "book_negotiate_id"
    t.integer  "book_post_requirement_id"
    t.integer  "post_requirement_id"
    t.integer  "skill_post_requirement_id"
    t.integer  "peer_service_post_requirement_id"
    t.integer  "peer_negotiate_id"
  end

  create_table "services", :force => true do |t|
    t.string   "service_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "skill_post_requirements", :force => true do |t|
    t.integer  "service_id"
    t.integer  "city_id"
    t.integer  "location_id"
    t.integer  "sub_category_id"
    t.integer  "user_id"
    t.boolean  "seeker_provider"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description"
    t.boolean  "home_service"
    t.text     "service_in_one_line"
    t.float    "charges"
    t.boolean  "mon"
    t.boolean  "tue"
    t.boolean  "wed"
    t.boolean  "thu"
    t.boolean  "fri"
    t.boolean  "sat"
    t.boolean  "sun"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "skill_file_name"
    t.string   "skill_content_type"
    t.integer  "skill_file_size"
    t.datetime "skill_updated_at"
  end

  add_index "skill_post_requirements", ["city_id"], :name => "index_skill_post_requirements_on_city_id"
  add_index "skill_post_requirements", ["location_id"], :name => "index_skill_post_requirements_on_location_id"
  add_index "skill_post_requirements", ["service_id"], :name => "index_skill_post_requirements_on_service_id"
  add_index "skill_post_requirements", ["sub_category_id"], :name => "index_skill_post_requirements_on_sub_category_id"
  add_index "skill_post_requirements", ["user_id"], :name => "index_skill_post_requirements_on_user_id"

  create_table "sub_categories", :force => true do |t|
    t.string   "sub_category_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0,     :null => false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "name"
    t.date     "dob"
    t.string   "phone_no"
    t.integer  "city_id"
    t.string   "location"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.text     "address"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.boolean  "admin",                  :default => false
    t.boolean  "status",                 :default => true
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
