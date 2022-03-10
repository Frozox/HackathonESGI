<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FrontController extends AbstractController
{


    #[Route('/', name: 'home')]
    public function index(): Response
    {
        return $this->render('front/index.html.twig', [
            'menus' => [
                'What we do',
                'Our device',
                'Who we are',
                'Scientific validation',
                'Studies & devices'
            ],
        ]);
    }

    #[Route('/profile', name: 'profile')]
    public function profile(): Response
    {
        return $this->render('front/profile.html.twig', [
            'user' => $this->getUser(),
            'menus' => [
                'What we do',
                'Our device',
                'Who we are',
                'Scientific validation',
                'Studies & devices'
            ]
        ]);
    }
}
