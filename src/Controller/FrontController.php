<?php

namespace App\Controller;

use App\Repository\PageRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FrontController extends AbstractController
{


    #[Route('/', name: 'home')]
    public function index(PageRepository $pageRepository): Response
    {
        return $this->render('front/index.html.twig', [
            'pages' => $pageRepository->findAll(),
        ]);
    }

    #[Route('/profile', name: 'profile')]
    public function profile(PageRepository $pageRepository): Response
    {
        return $this->render('front/profile.html.twig', [
            'user' => $this->getUser(),
            'pages' => $pageRepository->findAll(),
        ]);
    }
}
