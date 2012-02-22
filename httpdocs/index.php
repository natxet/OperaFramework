<?php

require( __DIR__ . '/../vendor/natxet/OperaCore/src/OperaCore/Bootstrap.php' );

$bootstrap  = new OperaCore\Bootstrap();
$dispatcher = new OperaCore\Dispatcher( $bootstrap->getContainer() );
