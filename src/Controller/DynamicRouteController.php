<?php

namespace App\Controller;

use App\Repository\PageRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DynamicRouteController extends AbstractController
{
    #[Route('/{slug}', name: 'dynamic_route', priority:-1)]
    public function index($slug, PageRepository $pageRepository): Response
    {
        $page = $pageRepository->findOneBy(['slug' => $slug]);

        if($page){
            return $this->render('front/dynamic.route.html.twig', ['slug' => $slug, 'blocks' => $page->getBlockList(), 'pages' => $pageRepository->findAll()]);
        }

        return $this->redirectToRoute('home');
    }
}
