<?php

namespace App\Controller;

use App\Entity\Escena;
use App\Form\EscenaType;
use App\Repository\EscenaRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/escena')]
class EscenaController extends AbstractController
{
    #[Route('/', name: 'app_escena_index', methods: ['GET'])]
    public function index(EscenaRepository $escenaRepository): Response
    {
        return $this->render('escena/index.html.twig', [
            'escenas' => $escenaRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_escena_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EscenaRepository $escenaRepository): Response
    {
        $escena = new Escena();
        $form = $this->createForm(EscenaType::class, $escena);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $escenaRepository->save($escena, true);

            return $this->redirectToRoute('app_escena_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('escena/new.html.twig', [
            'escena' => $escena,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_escena_show', methods: ['GET'])]
    public function show(Escena $escena): Response
    {
        return $this->render('escena/show.html.twig', [
            'escena' => $escena,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_escena_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Escena $escena, EscenaRepository $escenaRepository): Response
    {
        $form = $this->createForm(EscenaType::class, $escena);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $escenaRepository->save($escena, true);

            return $this->redirectToRoute('app_escena_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('escena/edit.html.twig', [
            'escena' => $escena,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_escena_delete', methods: ['POST'])]
    public function delete(Request $request, Escena $escena, EscenaRepository $escenaRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$escena->getId(), $request->request->get('_token'))) {
            $escenaRepository->remove($escena, true);
        }

        return $this->redirectToRoute('app_escena_index', [], Response::HTTP_SEE_OTHER);
    }
}
