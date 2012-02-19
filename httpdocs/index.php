<?php

error_reporting( E_ALL );

require( __DIR__ . '/../vendor/natxet/OperaCore/Bootstrap.php' );

$bootstrap  = new \natxet\OperaCore\Bootstrap();
$dispatcher = new \natxet\OperaCore\Dispatcher( $bootstrap->getContainer() );
