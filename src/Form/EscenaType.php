<?php

namespace App\Form;

use App\Entity\Escena;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EscenaType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('fecha')
            ->add('ciudad')
            ->add('tipo_crimen')
            ->add('descripcion')
            ->add('testigo1')
            ->add('testigo2')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Escena::class,
        ]);
    }
}
