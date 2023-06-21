<?php

namespace App\Entity;

use App\Repository\LibraryRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
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

    #[ORM\OneToMany(mappedBy: 'Rel_libraray', targetEntity: Persona::class)]
    private Collection $personas;

    #[ORM\OneToOne(inversedBy: 'library', cascade: ['persist', 'remove'])]
    #[ORM\JoinColumn(nullable: false)]
    private ?Escena $Rel_escena = null;

    public function __construct()
    {
        $this->personas = new ArrayCollection();
    }

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

    /**
     * @return Collection<int, Persona>
     */
    public function getPersonas(): Collection
    {
        return $this->personas;
    }

    public function addPersona(Persona $persona): static
    {
        if (!$this->personas->contains($persona)) {
            $this->personas->add($persona);
            $persona->setRelLibraray($this);
        }

        return $this;
    }

    public function removePersona(Persona $persona): static
    {
        if ($this->personas->removeElement($persona)) {
            // set the owning side to null (unless already changed)
            if ($persona->getRelLibraray() === $this) {
                $persona->setRelLibraray(null);
            }
        }

        return $this;
    }

    public function getRelEscena(): ?Escena
    {
        return $this->Rel_escena;
    }

    public function setRelEscena(Escena $Rel_escena): static
    {
        $this->Rel_escena = $Rel_escena;

        return $this;
    }
}
