<?php

namespace App\Entity;

use App\Repository\EntrevistaRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: EntrevistaRepository::class)]
class Entrevista
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $testigo = null;

    #[ORM\Column(length: 255)]
    private ?string $tipo_crimen = null;

    #[ORM\Column(length: 255)]
    private ?string $transcripcion = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTestigo(): ?string
    {
        return $this->testigo;
    }

    public function setTestigo(string $testigo): static
    {
        $this->testigo = $testigo;

        return $this;
    }

    public function getTipoCrimen(): ?string
    {
        return $this->tipo_crimen;
    }

    public function setTipoCrimen(string $tipo_crimen): static
    {
        $this->tipo_crimen = $tipo_crimen;

        return $this;
    }

    public function getTranscripcion(): ?string
    {
        return $this->transcripcion;
    }

    public function setTranscripcion(string $transcripcion): static
    {
        $this->transcripcion = $transcripcion;

        return $this;
    }
}
