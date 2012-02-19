<?php

/*
 * calls should be done like this:
 *
 */

ini_set( 'error_reporting', E_ALL );
ini_set( 'display_errors', 1 );

set_error_handler( "error_handler_cli" );

if ( !isCli() ) trigger_error( 'This file must be executed by php-cli' );

date_default_timezone_set( 'Europe/Madrid' );

require( __DIR__ . '/../vendor/natxet/OperaCore/Bootstrap.php' );

$bootstrap = new \natxet\OperaCore\BootstrapCli();

list( , $class_name, $env, $app ) = $argv;

if ( strpos( $class_name, '\\' ) === false ) $class_name = "\\$app\\Cli\\$class_name";

$script = new $class_name( $argv, $bootstrap->getContainer() );

function error_handler_cli( $errno, $errstr, $errfile, $errline )
{
	fwrite( STDERR, "Error $errno: $errstr in $errfile on line $errline\n" );
}

function isCli()
{
	return php_sapi_name() === "cli";
}
