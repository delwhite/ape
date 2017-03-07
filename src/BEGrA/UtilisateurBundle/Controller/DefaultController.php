<?php

namespace BEGrA\UtilisateurBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BEGrAUtilisateurBundle:Default:index.html.twig');
    }
}
