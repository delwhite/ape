<?php

namespace BEGrA\CoreBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BEGrACoreBundle:Default:index.html.twig');
    }
}
