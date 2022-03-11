<?php

namespace App\Controller;

use App\Entity\User;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class AccountConfirmationController extends AbstractController
{
    #[Route(path: '/confirm/{id}/{token}', name: 'confirm_account')]
    public function index(User $user, $token, Request $request, UserPasswordHasherInterface $passwordHasher, ManagerRegistry $doctrine): Response
    {
        if(!$user->hasValidToken($token)){
            return $this->redirectToRoute('home');
        }

        $error = null;
        $password = $request->get('password');
        $confirmPassword = $request->get('confirmPassword');

        if ($password && $confirmPassword) {
            if ($password === $confirmPassword) {
                $hashedPassword  = $passwordHasher->hashPassword($user, $password);

                $user->setPassword($hashedPassword);
                $user->confirmAccount();

                $entityManager = $doctrine->getManager();
                $entityManager->flush();

                return $this->redirectToRoute('login');
            } else {
                $error = 'Invalid credentials.';
            }
        }

        return $this->render('security/confirm.account.html.twig', ['error' => $error]);
    }
}
