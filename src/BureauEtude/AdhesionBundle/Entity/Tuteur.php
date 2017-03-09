<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Tuteur
 *
 * @ORM\Table(name="tuteur")
 * @ORM\Entity
 */
class Tuteur
{
    /**
     * @var string
     *
     * @ORM\Column(name="nom_tuteur", type="string", length=100, nullable=false)
     */
    private $nomTuteur;

    /**
     * @var string
     *
     * @ORM\Column(name="prenom_tuteur", type="string", length=100, nullable=false)
     */
    private $prenomTuteur;

    /**
     * @var string
     *
     * @ORM\Column(name="adresse_tuteur", type="string", length=25, nullable=false)
     */
    private $adresseTuteur;

    /**
     * @var string
     *
     * @ORM\Column(name="tel_tuteur", type="string", length=10, nullable=false)
     */
    private $telTuteur;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_tuteur", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idTuteur;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="BureauEtude\CoreBundle\Entity\Association", inversedBy="idTuteur")
     * @ORM\JoinTable(name="adherer",
     *   joinColumns={
     *     @ORM\JoinColumn(name="id_tuteur", referencedColumnName="id_tuteur")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="id_association", referencedColumnName="id_association")
     *   }
     * )
     */
    private $idAssociation;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->idAssociation = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Set nomTuteur
     *
     * @param string $nomTuteur
     *
     * @return Tuteur
     */
    public function setNomTuteur($nomTuteur)
    {
        $this->nomTuteur = $nomTuteur;

        return $this;
    }

    /**
     * Get nomTuteur
     *
     * @return string
     */
    public function getNomTuteur()
    {
        return $this->nomTuteur;
    }

    /**
     * Set prenomTuteur
     *
     * @param string $prenomTuteur
     *
     * @return Tuteur
     */
    public function setPrenomTuteur($prenomTuteur)
    {
        $this->prenomTuteur = $prenomTuteur;

        return $this;
    }

    /**
     * Get prenomTuteur
     *
     * @return string
     */
    public function getPrenomTuteur()
    {
        return $this->prenomTuteur;
    }

    /**
     * Set adresseTuteur
     *
     * @param string $adresseTuteur
     *
     * @return Tuteur
     */
    public function setAdresseTuteur($adresseTuteur)
    {
        $this->adresseTuteur = $adresseTuteur;

        return $this;
    }

    /**
     * Get adresseTuteur
     *
     * @return string
     */
    public function getAdresseTuteur()
    {
        return $this->adresseTuteur;
    }

    /**
     * Set telTuteur
     *
     * @param string $telTuteur
     *
     * @return Tuteur
     */
    public function setTelTuteur($telTuteur)
    {
        $this->telTuteur = $telTuteur;

        return $this;
    }

    /**
     * Get telTuteur
     *
     * @return string
     */
    public function getTelTuteur()
    {
        return $this->telTuteur;
    }

    /**
     * Get idTuteur
     *
     * @return integer
     */
    public function getIdTuteur()
    {
        return $this->idTuteur;
    }

    /**
     * Add idAssociation
     *
     * @param \BureauEtude\CoreBundle\Entity\Association $idAssociation
     *
     * @return Tuteur
     */
    public function addIdAssociation(\BureauEtude\CoreBundle\Entity\Association $idAssociation)
    {
        $this->idAssociation[] = $idAssociation;

        return $this;
    }

    /**
     * Remove idAssociation
     *
     * @param \BureauEtude\CoreBundle\Entity\Association $idAssociation
     */
    public function removeIdAssociation(\BureauEtude\CoreBundle\Entity\Association $idAssociation)
    {
        $this->idAssociation->removeElement($idAssociation);
    }

    /**
     * Get idAssociation
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getIdAssociation()
    {
        return $this->idAssociation;
    }
}
