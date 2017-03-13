<?php

namespace BureauEtude\AdhesionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Tuteur
 *
 * @ORM\Table(name="tuteur")
 * @ORM\Entity(repositoryClass="BureauEtude\AdhesionBundle\Repository\TuteurRepository")
 */
class Tuteur
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nom_tuteur", type="string", length=255)
     */
    private $nom;

    /**
     * @var string
     *
     * @ORM\Column(name="prenom_tuteur", type="string", length=255)
     */
    private $prenom;

    /**
     * @var string
     *
     * @ORM\Column(name="adresse_tuteur", type="string", length=255)
     */
    private $adresse;

    /**
     * @var string
     *
     * @ORM\Column(name="tel_tuteur", type="string", length=10)
     */
    private $telephone;

    /**
     * @ORM\OneToMany(targetEntity="BureauEtude\AdhesionBundle\Entity\Enfant", mappedBy="tuteur")
     */
    private $enfants;

    /**
     * @return mixed
     */
    public function getEnfants()
    {
        return $this->enfants;
    }

    /**
     * @param mixed $enfants
     */
    public function setEnfants($enfants)
    {
        $this->enfants = $enfants;
    }

    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Tuteur
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set prenom
     *
     * @param string $prenom
     *
     * @return Tuteur
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;

        return $this;
    }

    /**
     * Get prenom
     *
     * @return string
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * Set adresse
     *
     * @param string $adresse
     *
     * @return Tuteur
     */
    public function setAdresse($adresse)
    {
        $this->adresse = $adresse;

        return $this;
    }

    /**
     * Get adresse
     *
     * @return string
     */
    public function getAdresse()
    {
        return $this->adresse;
    }

    /**
     * Set telephone
     *
     * @param string $telephone
     *
     * @return Tuteur
     */
    public function setTelephone($telephone)
    {
        $this->telephone = $telephone;

        return $this;
    }

    /**
     * Get telephone
     *
     * @return string
     */
    public function getTelephone()
    {
        return $this->telephone;
    }
}

