<?php

define( 'APPS_PATH'     ,  __DIR__ . '/../app/'  );
define( 'VENDOR_PATH'   ,  __DIR__ . '/../vendor/'  );
define( 'OPERACORE_PATH', VENDOR_PATH . 'natxet/OperaCore/src/OperaCore/' );

require( OPERACORE_PATH . 'Bootstrap.php' );

$bootstrap  = new \OperaCore\Bootstrap();
$dispatcher = new \OperaCore\Dispatcher( $bootstrap->getContainer() );
