<?php

namespace BureauEtude\AdhesionBundle\Controller;
use BureauEtude\AdhesionBundle\Entity\Tuteur;
use BureauEtude\AdhesionBundle\Entity\Enfant;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use BureauEtude\AdhesionBundle\Form\FormulaireEnfant;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class TuteurController extends Controller
{
    public function indexAction()
    {
        return $this->render('BureauEtudeAdhesionBundle:Tuteur:index.html.twig');
    }

    /**
     * @param Request $request
     */
    public function creerAction(Request $request)
    {
        $tuteur = new Tuteur();
        $form = $this->createForm(FormulaireTuteur::class, $tuteur);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $em->persist($tuteur);
            $em->flush();
        }

        return $this->render('BureauEtudeAdhesionBundle:Tuteur:creer.html.twig', ["form" => $form->createView(), ]);
    }
}
