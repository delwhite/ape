<?php

namespace BEGrA\ScolariteBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BEGrAScolariteBundle:Default:index.html.twig');
    }
}
