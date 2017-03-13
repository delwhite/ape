<?php

namespace BureauEtude\AdhesionBundle\Form;
use BureauEtude\AdhesionBundle\Entity\Tuteur;
use BureauEtude\AdhesionBundle\Entity\Enfant;

class FormulaireTuteur extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom', TextType::class)
            ->add('prenom', TextType::class)
            ->add('adresse', TextType::class)
            ->add('telephone', TextType::class)
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => Tuteur::class,
        ));
    }
}