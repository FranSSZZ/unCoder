<?php

namespace App\Entity;

use App\Repository\EscenaRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: EscenaRepository::class)]
class Escena
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $fecha = null;

    #[ORM\Column(length: 255)]
    private ?string $ciudad = null;

    #[ORM\Column(length: 255)]
    private ?string $tipo_crimen = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $descripcion = null;

    #[ORM\Column(length: 255)]
    private ?string $testigo1 = null;

    #[ORM\Column(length: 255)]
    private ?string $testigo2 = null;

    #[ORM\OneToOne(mappedBy: 'Rel_escena', cascade: ['persist', 'remove'])]
    private ?Library $library = null;

    #[ORM\OneToMany(mappedBy: 'Rel_escena', targetEntity: Entrevista::class)]
    private Collection $entrevistas;

    #[ORM\OneToMany(mappedBy: 'escena', targetEntity: Persona::class)]
    private Collection $Rel_personas;

    public function __construct()
    {
        $this->entrevistas = new ArrayCollection();
        $this->Rel_personas = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFecha(): ?string
    {
        return $this->fecha;
    }

    public function setFecha(string $fecha): static
    {
        $this->fecha = $fecha;

        return $this;
    }

    public function getCiudad(): ?string
    {
        return $this->ciudad;
    }

    public function setCiudad(string $ciudad): static
    {
        $this->ciudad = $ciudad;

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

    public function getDescripcion(): ?string
    {
        return $this->descripcion;
    }

    public function setDescripcion(string $descripcion): static
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    public function getTestigo1(): ?string
    {
        return $this->testigo1;
    }

    public function setTestigo1(string $testigo1): static
    {
        $this->testigo1 = $testigo1;

        return $this;
    }

    public function getTestigo2(): ?string
    {
        return $this->testigo2;
    }

    public function setTestigo2(string $testigo2): static
    {
        $this->testigo2 = $testigo2;

        return $this;
    }

    public function getLibrary(): ?Library
    {
        return $this->library;
    }

    public function setLibrary(Library $library): static
    {
        // set the owning side of the relation if necessary
        if ($library->getRelEscena() !== $this) {
            $library->setRelEscena($this);
        }

        $this->library = $library;

        return $this;
    }

    /**
     * @return Collection<int, Entrevista>
     */
    public function getEntrevistas(): Collection
    {
        return $this->entrevistas;
    }

    public function addEntrevista(Entrevista $entrevista): static
    {
        if (!$this->entrevistas->contains($entrevista)) {
            $this->entrevistas->add($entrevista);
            $entrevista->setRelEscena($this);
        }

        return $this;
    }

    public function removeEntrevista(Entrevista $entrevista): static
    {
        if ($this->entrevistas->removeElement($entrevista)) {
            // set the owning side to null (unless already changed)
            if ($entrevista->getRelEscena() === $this) {
                $entrevista->setRelEscena(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Persona>
     */
    public function getRelPersonas(): Collection
    {
        return $this->Rel_personas;
    }

    public function addRelPersona(Persona $relPersona): static
    {
        if (!$this->Rel_personas->contains($relPersona)) {
            $this->Rel_personas->add($relPersona);
            $relPersona->setEscena($this);
        }

        return $this;
    }

    public function removeRelPersona(Persona $relPersona): static
    {
        if ($this->Rel_personas->removeElement($relPersona)) {
            // set the owning side to null (unless already changed)
            if ($relPersona->getEscena() === $this) {
                $relPersona->setEscena(null);
            }
        }

        return $this;
    }
}
