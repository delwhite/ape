<?php

namespace BureauEtude\OperationBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BureauEtudeOperationBundle:Default:index.html.twig');
    }
}
