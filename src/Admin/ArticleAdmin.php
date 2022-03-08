<?php 

namespace App\Admin;

use App\Entity\Article;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Component\Form\Extension\Core\Type\TextType;

final class ArticleAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $form): void
    {
        $form
            ->with('Content', ['class' => 'col-md-9'])
            ->add('title', TextType::class)
            ->add('body', TextareaType::class)
            ->end()
            ->with('Meta Data', ['class' => 'col-md-3'])
            ->add('category', ModelType::class, [
                'class' => Category::class,
                'choice_label' => 'name',
            ])
            ->end();
    }

    protected function configureDatagridFilters(DatagridMapper $datagrid): void
    {
        $datagrid->add('title');
    }

    protected function configureListFields(ListMapper $list): void
    {
        $list->addIdentifier('title');
    }

    protected function configureShowFields(ShowMapper $show): void
    {
        $show->add('title');
    }

    public function toString(object $object): string
    {
        return $object instanceof Article
            ? $object->getTitle()
            : 'Article'; // shown in the breadcrumb on the create view
    }
}