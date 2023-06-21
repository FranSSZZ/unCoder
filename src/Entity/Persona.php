<?php

namespace App\Entity;

use App\Repository\PersonaRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PersonaRepository::class)]
class Persona
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nombre = null;

    #[ORM\Column(length: 255)]
    private ?string $c_ojos = null;

    #[ORM\Column(length: 255)]
    private ?string $c_cabello = null;

    #[ORM\Column(length: 255)]
    private ?string $t_zapato = null;

    #[ORM\Column(length: 255)]
    private ?string $genero = null;

    #[ORM\Column(length: 255)]
    private ?string $tatuaje = null;

    #[ORM\Column(length: 255)]
    private ?string $t_tatuaje = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNombre(): ?string
    {
        return $this->nombre;
    }

    public function setNombre(string $nombre): static
    {
        $this->nombre = $nombre;

        return $this;
    }

    public function getCOjos(): ?string
    {
        return $this->c_ojos;
    }

    public function setCOjos(string $c_ojos): static
    {
        $this->c_ojos = $c_ojos;

        return $this;
    }

    public function getCCabello(): ?string
    {
        return $this->c_cabello;
    }

    public function setCCabello(string $c_cabello): static
    {
        $this->c_cabello = $c_cabello;

        return $this;
    }

    public function getTZapato(): ?string
    {
        return $this->t_zapato;
    }

    public function setTZapato(string $t_zapato): static
    {
        $this->t_zapato = $t_zapato;

        return $this;
    }

    public function getGenero(): ?string
    {
        return $this->genero;
    }

    public function setGenero(string $genero): static
    {
        $this->genero = $genero;

        return $this;
    }

    public function getTatuaje(): ?string
    {
        return $this->tatuaje;
    }

    public function setTatuaje(string $tatuaje): static
    {
        $this->tatuaje = $tatuaje;

        return $this;
    }

    public function getTTatuaje(): ?string
    {
        return $this->t_tatuaje;
    }

    public function setTTatuaje(string $t_tatuaje): static
    {
        $this->t_tatuaje = $t_tatuaje;

        return $this;
    }
}
