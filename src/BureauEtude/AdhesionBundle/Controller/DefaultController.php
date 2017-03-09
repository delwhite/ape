<?php

namespace BureauEtude\AdhesionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BureauEtudeAdhesionBundle:Default:index.html.twig');
    }
}
