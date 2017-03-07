<?php
/**
 * Created by PhpStorm.
 * User: pperri04
 * Date: 08/02/2017
 * Time: 09:06
 */

namespace delwhite\CoreBundle;


class logger
{
    private $message;
    public function __construct($message)
    {
        $this->message = $message;
    }

    public function logger()
    {
        // appelle du service request_stack et
        // de la methode getCurrentRequest
        // puis utiliser la methode getClientIp()
    }
}