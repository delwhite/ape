<?php

namespace BureauEtude\AdhesionBundle\Controller;
use BureauEtude\AdhesionBundle\Entity\Tuteur;
use BureauEtude\AdhesionBundle\Entity\Enfant;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use BureauEtude\AdhesionBundle\Form\FormulaireEnfant;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class EnfantController extends Controller
{
    public function indexAction(Request $request)
    {
        //get id
        $nb = $request->attributes->get('nb');

        if($nb < 1)
        {
            throw new NotFoundHttpException('Aucun article à afficher');
        }

        $currentPage = $nb;
        $nbPerPage = 10;//a mettre en parametre global

        $enfants = $this->getDoctrine()->getManager()->getRepository('BureauEtudeAdhesionBundle:Enfant')->findAllWithPaging($currentPage, $nbPerPage);

        $nbTotalPages = ceil(count($enfants) / $nbPerPage);

        return $this->render('BureauEtudeAdhesionBundle:Enfant:index.html.twig', ['nbPage' => $nbTotalPages, 'currentPage' => $currentPage, 'enfants' => $enfants]);
    }


    /**
     * @param Request $request
     */
    public function vueAction(Request $request)
    {
        //get id
        $id = $request->attributes->get("id");

        //findById
        $enfant = $this->getDoctrine()->getManager()->getRepository("BureauEtudeAdhesionBundle:Enfant")->findById($id);

        //plusieur possible a modif (find one by id ...)
        $enfant = $enfant[0];

        return $this->render('BureauEtudeAdhesionBundle:Enfant:vue.html.twig', ["enfant" => $enfant ]);
    }

    /**
     * @param Request $request
     */
    public function creerAction(Request $request)
    {
        $enfant = new Enfant();
        $enfant->setTuteur(1);
        $form = $this->createForm(FormulaireEnfant::class,$enfant);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $em->persist($enfant);
            $em->flush();
        }

        return $this->render('BureauEtudeAdhesionBundle:Enfant:creer.html.twig', ["form" => $form->createView(), ]);
    }

    /**
     * @param Request $request
     */
    public function editerAction(Request $request)
    {
        //get id
        $id = $request->attributes->get("id");

        //findById
        $enfant = $this->getDoctrine()->getManager()->getRepository("BureauEtudeAdhesionBundle:Enfant")->findById($id);

        //plusieur possible a modif (find one by id ...)
        $enfant = $enfant[0];
        //$enfant = new Enfant();
        //$enfant->setTuteur(1);
        $form = $this->createForm(FormulaireEnfant::class, $enfant);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $em->persist($enfant);
            $em->flush();
        }

        return $this->render('BureauEtudeAdhesionBundle:Enfant:editer.html.twig', ["form" => $form->createView(), ]);
    }

    /**
     * @param Request $request
     */
    public function supprimerAction(Request $request)
    {
        //get id
        $id = $request->attributes->get("id");

        //findById
        $enfant = $this->getDoctrine()->getManager()->getRepository("BureauEtudeAdhesionBundle:Enfant")->findById($id);

        //plusieur possible a modif (find one by id ...)
        $enfant = $enfant[0];
        //$enfant = new Enfant();
        //$enfant->setTuteur(1);
        $form = $this->createForm(FormulaireEnfant::class, $enfant);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $em->remove($enfant);
            $em->flush();
        }

        //redirection a faire
        return $this->render('BureauEtudeAdhesionBundle:Enfant:editer.html.twig', ["form" => $form->createView(), ]);
    }
}
