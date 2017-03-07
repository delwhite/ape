<?php

namespace delwhite\CoreBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('delwhiteCoreBundle:Default:index.html.twig');
    }
}
