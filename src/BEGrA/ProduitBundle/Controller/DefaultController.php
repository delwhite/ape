<?php

namespace BEGrA\ProduitBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BEGrAProduitBundle:Default:index.html.twig');
    }
}
