<?php

namespace delwhite\BlogBundle\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class ArticleController extends Controller
{
    public function indexAction(Request $request)
    {
        $request->attributes->set('id', 1);

        return $this->listAction($request);
    }

    public function listAction(Request $request)
    {
        $id = $request->attributes->get("id");
        if($id < 1)
        {
            throw new NotFoundHttpException("La page " . $id . " n'existe pas");
        }

        return $this->render('delwhiteBlogBundle:Articles:list.html.twig');
    }

    public function listNbAction($nb)
    {
        if($nb < 1)
        {
            throw new NotFoundHttpException("Aucun article à afficher");
        }

        $currentPage = 1;
        $nbPerPage = 2;
        $samples = $this->getDoctrine()->getManager()->getRepository('delwhiteBlogBundle:Article')->findAllWithPaging($currentPage, $nbPerPage);
        $nbTotalPages = ceil(count($samples) / $nbPerPage);

        return $this->render('delwhiteBlogBundle::push_articles.html.twig', array('nbPage' => $nbTotalPages, 'currentPage' => $currentPage, 'articles' => $samples));
    }

    public function viewAction(Request $request)
    {
        $id = $request->attributes->get("id");
        $sample = $this->getDoctrine()->getManager()->getRepository('delwhiteBlogBundle:Article')->findById($id);
        return $this->render('delwhiteBlogBundle:Articles:view.html.twig', array('article' => $sample));
    }

    public function addAction(Request $request)
    {
        if($request->isMethod('POST'))
        {
            //ajout de l'article
            //----

            $session = $request->getSession();
            $session->getFlashBag()->add("info", "Ajout terminé avec succès");

            //redirection
            return new RedirectResponse($this->get('router')->generate('delwhite_blog_article_list'));
        }
        else
        {
            //affichage du formulaire
            return $this->render('delwhiteBlogBundle:Articles:add.html.twig');
        }
    }

    public function editAction(Request $request)
    {
        if($request->isMethod('POST'))
        {
            //ajout de l'article
            //----

            $session = $request->getSession();
            $session->getFlashBag()->add("info", "Edition terminé avec succès");

            //redirection
            return new RedirectResponse($this->get('router')->generate('delwhite_blog_article_list'));
        }
        else
        {
            //affichage du formulaire
            return $this->render('delwhiteBlogBundle:Articles:edit.html.twig');
        }
    }

    public function deleteAction(Request $request)
    {
        if($request->isMethod('POST'))
        {
            //suppression
            //-----

            $session = $request->getSession();
            $session->getFlashBag()->add("info", "Suppression terminé avec succès");

            //redirection
            return new RedirectResponse($this->get('router')->generate('delwhite_blog_article_list'));
        }
    }
}
