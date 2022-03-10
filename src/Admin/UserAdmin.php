<?php 

namespace App\Admin;

use App\Entity\User;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Mailer\Mailer;
use Symfony\Component\Mailer\Transport;
use Symfony\Component\Mime\Address;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Generator\UrlGenerator;
use Symfony\Component\Routing\RouterInterface;

final class UserAdmin extends AbstractAdmin
{
    /** @var ContainerInterface */
    private $twig;

    /** @var RouterInterface */
    private $router;

    public function setRender (\Twig\Environment $twig) {
        $this->twig = $twig;
    }

    public function setRouter(RouterInterface $router){
        $this->router = $router;
    }

    protected function postPersist(object $object): void
    {      
        $urlConfirmation = $this->router->generate('confirm_account', [
            'id' => $object->getId(),
            'token' => $object->getConfirmToken()
        ],
        UrlGenerator::ABSOLUTE_URL);

        $email = (new Email())
            ->from( $_ENV['MAILER_ADMIN'])
            ->to(new Address($object->getEmail()))
            ->subject('Wired Beauty account confirmation')
            ->html($this->twig->render('email/account.confirm.html.twig', [
                'url_confirmation' => $urlConfirmation
            ]));

        (new Mailer(Transport::fromDsn($_ENV['MAILER_DSN'])))->send($email);
    }

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