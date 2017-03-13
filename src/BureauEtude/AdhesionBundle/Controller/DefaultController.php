<?php

namespace BureauEtude\AdhesionBundle\Controller;
use BureauEtude\AdhesionBundle\Entity\Tuteur;
use BureauEtude\AdhesionBundle\Entity\Enfant;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use BureauEtude\AdhesionBundle\Form\FormulaireEnfant;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BureauEtudeAdhesionBundle:Default:index.html.twig');
    }


    /**
     * @param Request $request
     */
    public function creerEnfantAction(Request $request)
    {
        $enfant = new Enfant();
        $enfant->setTuteur(1);
        $form = $this->createForm(FormulaireEnfant::class, $enfant);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $em->persist($enfant);
            $em->flush();
        }

        return $this->render('BureauEtudeAdhesionBundle:Default:index.html.twig', ["form" => $form->createView(), ]);
    }

    /**
     * @param Request $request
     */
    public function creerTuteurAction(Request $request)
    {
        $tuteur = new Tuteur();
        $form = $this->createForm(FormulaireEnfant::class, $tuteur);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $em->persist($tuteur);
            $em->flush();
        }

        return $this->render('BureauEtudeAdhesionBundle:Default:index.html.twig', ["form" => $form->createView(), ]);
    }
}
