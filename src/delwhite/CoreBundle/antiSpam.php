<?php
namespace delwhite\CoreBundle;

class antiSpam
{
    private $message;
    public function __construct($message)
    {
        $this->message = $message;
    }

    public function antiSpam()
    {
        $arraySpam = $this->getParameter('arraySpam');
        $isSpam = false;

        $nbStringSpam = count($arraySpam);
        for($i=0; $i < $nbStringSpam; $i++)
        {
            if(strstr($this->message, $arraySpam[$i]))
            {
                $isSpam = true;
            }
        }

        return $isSpam;
    }
}