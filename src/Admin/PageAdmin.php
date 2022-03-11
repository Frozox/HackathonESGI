<?php 

namespace App\Admin;

use App\Entity\Article;
use App\Entity\PageBlock;
use Doctrine\Common\Collections\Collection;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use phpDocumentor\Reflection\Types\Collection as TypesCollection;
use Sonata\AdminBundle\Form\Type\ModelType;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Form\Type\CollectionType;
use Sonata\Form\Type\CollectionType as FormTypeCollectionType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType as TypeCollectionType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Validator\Constraints\Collection as ConstraintsCollection;

final class PageAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $form): void
    {
        $form
            ->with('Content', ['class' => 'col-md-9'])
            ->add('slug', TextType::class)
            ->add('name', TextType::class)
            ->add('blockList', EntityType::class, [
                'class' => PageBlock::class,
                'choice_label' => 'name',
                'multiple' => true
            ])
            ->end();
    }

    protected function configureDatagridFilters(DatagridMapper $datagrid): void
    {
        $datagrid->add('slug');
    }

    protected function configureListFields(ListMapper $list): void
    {
        $list->addIdentifier('slug');
    }

    protected function configureShowFields(ShowMapper $show): void
    {
        $show->add('slug');
    }
}