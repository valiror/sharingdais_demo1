<?php

if (
	!defined( 'WP_UNINSTALL_PLUGIN' )
||
	!WP_UNINSTALL_PLUGIN
||
	dirname( WP_UNINSTALL_PLUGIN ) != dirname( plugin_basename( __FILE__ ) )
) {
	status_header( 404 );
	exit;
}

// Delete all compact options
delete_option( 'jetpack_options'        );

// Delete all non-compact options
delete_option( 'jetpack_register'       );
delete_option( 'jetpack_activated'      );
delete_option( 'jetpack_active_modules' );
delete_option( 'jetpack_do_activate'    );

// Delete all legacy options
delete_option( 'jetpack_was_activated'  );
delete_option( 'jetpack_auto_installed' );
delete_transient( 'jetpack_register'    );
