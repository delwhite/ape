<?php

namespace BEGrA\ProduitBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Fournisseur
 *
 * @ORM\Table(name="fournisseur")
 * @ORM\Entity(repositoryClass="BEGrA\ProduitBundle\Repository\FournisseurRepository")
 */
class Fournisseur
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
     * @ORM\Column(name="nomFournisseur", type="string", length=255)
     */
    private $nomFournisseur;

    /**
     * @var string
     *
     * @ORM\Column(name="adresseFournisseur", type="string", length=255)
     */
    private $adresseFournisseur;

    /**
     * @var string
     *
     * @ORM\Column(name="cpFournisseur", type="string", length=5)
     */
    private $cpFournisseur;

    /**
     * @var string
     *
     * @ORM\Column(name="villeFournisseur", type="string", length=255)
     */
    private $villeFournisseur;


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
     * Set nomFournisseur
     *
     * @param string $nomFournisseur
     *
     * @return Fournisseur
     */
    public function setNomFournisseur($nomFournisseur)
    {
        $this->nomFournisseur = $nomFournisseur;

        return $this;
    }

    /**
     * Get nomFournisseur
     *
     * @return string
     */
    public function getNomFournisseur()
    {
        return $this->nomFournisseur;
    }

    /**
     * Set adresseFournisseur
     *
     * @param string $adresseFournisseur
     *
     * @return Fournisseur
     */
    public function setAdresseFournisseur($adresseFournisseur)
    {
        $this->adresseFournisseur = $adresseFournisseur;

        return $this;
    }

    /**
     * Get adresseFournisseur
     *
     * @return string
     */
    public function getAdresseFournisseur()
    {
        return $this->adresseFournisseur;
    }

    /**
     * Set cpFournisseur
     *
     * @param string $cpFournisseur
     *
     * @return Fournisseur
     */
    public function setCpFournisseur($cpFournisseur)
    {
        $this->cpFournisseur = $cpFournisseur;

        return $this;
    }

    /**
     * Get cpFournisseur
     *
     * @return string
     */
    public function getCpFournisseur()
    {
        return $this->cpFournisseur;
    }

    /**
     * Set villeFournisseur
     *
     * @param string $villeFournisseur
     *
     * @return Fournisseur
     */
    public function setVilleFournisseur($villeFournisseur)
    {
        $this->villeFournisseur = $villeFournisseur;

        return $this;
    }

    /**
     * Get villeFournisseur
     *
     * @return string
     */
    public function getVilleFournisseur()
    {
        return $this->villeFournisseur;
    }
}

