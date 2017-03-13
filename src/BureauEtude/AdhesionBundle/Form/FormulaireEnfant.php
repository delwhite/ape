<?php
namespace BureauEtude\AdhesionBundle\Form;
use BureauEtude\AdhesionBundle\Entity\Enfant;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;

/**
 * Created by PhpStorm.
 * User: pperri04
 * Date: 13/03/2017
 * Time: 16:24
 */
class FormulaireEnfant extends AbstractType
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
            'data_class' => Enfant::class,
        ));
    }
}