<?php

namespace BureauEtude\CoreBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class BoutonController extends Controller
{
    public function indexAction()
    {

        return $this->render('BureauEtudeCoreBundle:Default:index.html.twig');
    }

    public function listeProduitsAction()
    {


        echo("Page en cours de développement");

        /*SELECT produit.ISBN, produit.titre, produit.auteur, produit.editeur, produit.annee_parution,
        etablissement.nom_etablissement, classe.nom_classe, discipline.nom_discipline, specialite.nom_specialite
        FROM produit NATURAL JOIN lister
        NATURAL JOIN etablissement
        NATURAL JOIN classe
        NATURAL JOIN discipline
        NATURAL JOIN specialite
        WHERE `id_etablissement`=17 AND `id_classe`=15;*/

        return $this->render('BureauEtudeCoreBundle:Default:liste.html.twig');
    }


}
