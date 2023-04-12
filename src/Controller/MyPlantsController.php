<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MyPlantsController extends AbstractController
{
    /**
     * @Route("/my/plants", name="app_my_plants")
     */
    public function index(): Response
    {
        return $this->render('my_plants/index.html.twig', [
            'controller_name' => 'MyPlantsController',
        ]);
    }
}
