<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FindBotanistController extends AbstractController
{
    /**
     * @Route("/find/botanist", name="app_find_botanist")
     */
    public function index(): Response
    {
        return $this->render('find_botanist/index.html.twig', [
            'controller_name' => 'FindBotanistController',
        ]);
    }
}
