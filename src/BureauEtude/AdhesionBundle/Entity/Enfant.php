<?php

namespace BureauEtude\AdhesionBundle\Entity;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Enfant
 *
 * @ORM\Table(name="enfant")
 * @ORM\Entity(repositoryClass="BureauEtude\AdhesionBundle\Repository\EnfantRepository")
 */
class Enfant
{
    /**
     * @var int
     *
     * @ORM\Column(name="id_enfant", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nom_enfant", type="string", length=255)
     */
    private $nom;

    /**
     * @var string
     *
     * @ORM\Column(name="prenom_enfant", type="string", length=255)
     */
    private $prenom;

    /**
     * @ORM\ManyToOne(targetEntity="BureauEtude\AdhesionBundle\Entity\Tuteur", inversedBy="enfants")
     * @ORM\Column(name="id_tuteur", type="integer")
     */
    private $tuteur;

    /**
     * @return mixed
     */
    public function getTuteur()
    {
        return $this->tuteur;
    }

    /**
     * @param mixed $tuteur
     */
    public function setTuteur($tuteur)
    {
        $this->tuteur = $tuteur;
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
     * @return Enfant
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
     * @return Enfant
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
}

