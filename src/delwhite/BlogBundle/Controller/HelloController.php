<?php

namespace delwhite\BlogBundle\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class HelloController extends Controller
{
    public function indexAction()
    {
        return $this->render('delwhiteBlogBundle:Hello:hello.html.twig', array("title" => "Symfony"));
    }
}