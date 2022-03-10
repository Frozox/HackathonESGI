<?php 

namespace App\Admin;

use App\Entity\Article;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\File;

final class PageBlockAdmin extends AbstractAdmin
{
    protected function preRemove(object $object): void
    {
        (new Filesystem())->remove('../public' . $object->getImage());
    }

    protected function configureFormFields(FormMapper $form): void
    {
        if ($this->isCurrentRoute('create')) {
            $form
                ->with('Content', ['class' => 'col-md-9'])
                ->add('name', TextType::class)
                ->add('content', TextType::class, [
                    'required' => false
                ])
                ->add('image', FileType::class, [
                    'required' => false
                ])
                ->end();
        }
        elseif($this->isCurrentRoute('edit')){
            $form
                ->with('Content', ['class' => 'col-md-9'])
                ->add('name', TextType::class)
                ->add('content', TextType::class, [
                    'required' => false
                ])
                ->add('image', TextType::class, [
                    'required' => false
                ])
                ->end();
        }
    }

    protected function configureDatagridFilters(DatagridMapper $datagrid): void
    {
        $datagrid->add('name')
        ->add('content')
        ->add('image');
    }

    protected function configureListFields(ListMapper $list): void
    {
        $list->addIdentifier('name');
    }

    protected function configureShowFields(ShowMapper $show): void
    {
        $show->add('name')
        ->add('content')
        ->add('image');
    }
}