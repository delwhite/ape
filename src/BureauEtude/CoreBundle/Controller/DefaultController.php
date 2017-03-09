<?php

namespace BureauEtude\CoreBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BureauEtudeCoreBundle:Default:index.html.twig');
    }
}
