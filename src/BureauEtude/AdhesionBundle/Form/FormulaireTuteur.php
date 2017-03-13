<?php

namespace BureauEtude\AdhesionBundle\Form;
use BureauEtude\AdhesionBundle\Entity\Tuteur;

class FormulaireTuteur
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom', TextType::class)
            ->add('prenom', TextType::class)
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => Tuteur::class,
        ));
    }
}