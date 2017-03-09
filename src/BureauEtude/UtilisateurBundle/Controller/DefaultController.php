<?php

namespace BureauEtude\UtilisateurBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BureauEtudeUtilisateurBundle:Default:index.html.twig');
    }
}
