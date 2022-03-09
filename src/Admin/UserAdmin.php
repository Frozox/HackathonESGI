<?php 

namespace App\Admin;

use App\Entity\User;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Component\Form\Extension\Core\Type\EmailType;


final class UserAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $form): void
    {
        $form
            ->with('Content', ['class' => 'col-md-9'])
            ->add('email', EmailType::class)
            ->end();
    }

    protected function configureDatagridFilters(DatagridMapper $datagrid): void
    {
        $datagrid->add('email');
    }

    protected function configureListFields(ListMapper $list): void
    {
        $list->addIdentifier('email');
    }

    protected function configureShowFields(ShowMapper $show): void
    {
        $show->add('email');
    }

    public function toString(object $object): string
    {
        return $object instanceof User
            ? $object->getEmail()
            : 'User'; // shown in the breadcrumb on the create view
    }
}