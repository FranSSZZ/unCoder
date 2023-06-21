<?php

namespace App\Entity;

use App\Repository\LibraryRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: LibraryRepository::class)]
class Library
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $tarjeta_id = null;

    #[ORM\Column(length: 255)]
    private ?string $nombre = null;

    #[ORM\Column(length: 255)]
    private ?string $seudonimo = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTarjetaId(): ?int
    {
        return $this->tarjeta_id;
    }

    public function setTarjetaId(int $tarjeta_id): static
    {
        $this->tarjeta_id = $tarjeta_id;

        return $this;
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

    public function getSeudonimo(): ?string
    {
        return $this->seudonimo;
    }

    public function setSeudonimo(string $seudonimo): static
    {
        $this->seudonimo = $seudonimo;

        return $this;
    }
}
