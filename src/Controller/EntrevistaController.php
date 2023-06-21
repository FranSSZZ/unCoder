<?php

namespace App\Controller;

use App\Entity\Entrevista;
use App\Form\EntrevistaType;
use App\Repository\EntrevistaRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/entrevista')]
class EntrevistaController extends AbstractController
{
    #[Route('/', name: 'app_entrevista_index', methods: ['GET'])]
    public function index(EntrevistaRepository $entrevistaRepository): Response
    {
        return $this->render('entrevista/index.html.twig', [
            'entrevistas' => $entrevistaRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_entrevista_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntrevistaRepository $entrevistaRepository): Response
    {
        $entrevistum = new Entrevista();
        $form = $this->createForm(EntrevistaType::class, $entrevistum);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entrevistaRepository->save($entrevistum, true);

            return $this->redirectToRoute('app_entrevista_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('entrevista/new.html.twig', [
            'entrevistum' => $entrevistum,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_entrevista_show', methods: ['GET'])]
    public function show(Entrevista $entrevistum): Response
    {
        return $this->render('entrevista/show.html.twig', [
            'entrevistum' => $entrevistum,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_entrevista_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Entrevista $entrevistum, EntrevistaRepository $entrevistaRepository): Response
    {
        $form = $this->createForm(EntrevistaType::class, $entrevistum);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entrevistaRepository->save($entrevistum, true);

            return $this->redirectToRoute('app_entrevista_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('entrevista/edit.html.twig', [
            'entrevistum' => $entrevistum,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_entrevista_delete', methods: ['POST'])]
    public function delete(Request $request, Entrevista $entrevistum, EntrevistaRepository $entrevistaRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$entrevistum->getId(), $request->request->get('_token'))) {
            $entrevistaRepository->remove($entrevistum, true);
        }

        return $this->redirectToRoute('app_entrevista_index', [], Response::HTTP_SEE_OTHER);
    }
}
