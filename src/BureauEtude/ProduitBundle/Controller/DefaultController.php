<?php

namespace BureauEtude\ProduitBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BureauEtudeProduitBundle:Default:index.html.twig');
    }
}
