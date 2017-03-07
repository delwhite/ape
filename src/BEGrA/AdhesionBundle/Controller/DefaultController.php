<?php

namespace BEGrA\AdhesionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BEGrAAdhesionBundle:Default:index.html.twig');
    }
}
