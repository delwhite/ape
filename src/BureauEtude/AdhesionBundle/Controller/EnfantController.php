<?php

namespace BureauEtude\AdhesionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class EnfantController extends Controller
{
    public function indexAction()
    {
        // create a task and give it some dummy data for this example
        $task = new Task();
        $task->setTask('Write a blog post');
        $task->setDueDate(new \DateTime('tomorrow'));

        $form = $this->createFormBuilder($task)
            ->add('task', TextType::class)
            ->add('dueDate', DateType::class)
            ->add('save', SubmitType::class, array('label' => 'Create Post'))
            ->getForm();

        return $this->render('BureauEtudeAdhesionBundle:Enfant:index.html.twig', array(
            'form' => $form->createView(),
        ));
    }
}
