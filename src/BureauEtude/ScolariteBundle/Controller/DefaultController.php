<?php

namespace BureauEtude\ScolariteBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BureauEtudeScolariteBundle:Default:index.html.twig');
    }
}
