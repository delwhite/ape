<?php

namespace BEGrA\ProduitBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Produit
 *
 * @ORM\Table(name="produit")
 * @ORM\Entity(repositoryClass="BEGrA\ProduitBundle\Repository\ProduitRepository")
 */
class Produit
{
    /**
     * @var string
     *
     * @ORM\Column(name="isbn", type="string", length=255)
     *
     * @ORM\Id
     */
    private $isbn;

    /**
     * @var string
     *
     * @ORM\Column(name="nomProduit", type="string", length=255)
     */
    private $nomProduit;

    /**
     * @var string
     *
     * @ORM\Column(name="auteurProduit", type="string", length=255, nullable=true)
     */
    private $auteurProduit;

    /**
     * @var string
     *
     * @ORM\Column(name="editeurProduit", type="string", length=255)
     */
    private $editeurProduit;

    /**
     * @var int
     *
     * @ORM\Column(name="anneeParutionProduit", type="integer")
     */
    private $anneeParutionProduit;

    /**
     * @var bool
     *
     * @ORM\Column(name="produitReutilisable", type="boolean")
     */
    private $produitReutilisable;

    /**
     * @var int
     *
     * @ORM\Column(name="quantiteMiniProduit", type="integer", nullable=true)
     */
    private $quantiteMiniProduit;

    /**
     * @var int
     *
     * @ORM\ManyToOne(targetEntity="BEGrA\ScolariteBundle\Entity\Classe")
     */
    private $classe;

    /**
     * @var int
     *
     * @ORM\ManyToOne(targetEntity="BEGrA\ScolariteBundle\Entity\Discipline")
     */
    private $discipline;

    /**
     * @var int
     *
     * @ORM\ManyToOne(targetEntity="BEGrA\ScolariteBundle\Entity\Specialite")
     */
    private $specialite;

    /**
     * Set id
     *
     * @param string $isbn
     *
     * @return Produit
     */
    public function setIsbn($isbn)
    {
        $this->isbn = $isbn;

        return $this;
    }

    /**
     * Get id
     *
     * @return int
     */
    public function getIsbn()
    {
        return $this->isbn;
    }

    /**
     * Set nomProduit
     *
     * @param string $nomProduit
     *
     * @return Produit
     */
    public function setNomProduit($nomProduit)
    {
        $this->nomProduit = $nomProduit;

        return $this;
    }

    /**
     * Get nomProduit
     *
     * @return string
     */
    public function getNomProduit()
    {
        return $this->nomProduit;
    }

    /**
     * Set auteurProduit
     *
     * @param string $auteurProduit
     *
     * @return Produit
     */
    public function setAuteurProduit($auteurProduit)
    {
        $this->auteurProduit = $auteurProduit;

        return $this;
    }

    /**
     * Get auteurProduit
     *
     * @return string
     */
    public function getAuteurProduit()
    {
        return $this->auteurProduit;
    }

    /**
     * Set editeurProduit
     *
     * @param string $editeurProduit
     *
     * @return Produit
     */
    public function setEditeurProduit($editeurProduit)
    {
        $this->editeurProduit = $editeurProduit;

        return $this;
    }

    /**
     * Get editeurProduit
     *
     * @return string
     */
    public function getEditeurProduit()
    {
        return $this->editeurProduit;
    }

    /**
     * Set anneeParutionProduit
     *
     * @param integer $anneeParutionProduit
     *
     * @return Produit
     */
    public function setAnneeParutionProduit($anneeParutionProduit)
    {
        $this->anneeParutionProduit = $anneeParutionProduit;

        return $this;
    }

    /**
     * Get anneeParutionProduit
     *
     * @return int
     */
    public function getAnneeParutionProduit()
    {
        return $this->anneeParutionProduit;
    }

    /**
     * Set produitReutilisable
     *
     * @param boolean $produitReutilisable
     *
     * @return Produit
     */
    public function setProduitReutilisable($produitReutilisable)
    {
        $this->produitReutilisable = $produitReutilisable;

        return $this;
    }

    /**
     * Get produitReutilisable
     *
     * @return bool
     */
    public function getProduitReutilisable()
    {
        return $this->produitReutilisable;
    }

    /**
     * Set quantiteMiniProduit
     *
     * @param integer $quantiteMiniProduit
     *
     * @return Produit
     */
    public function setQuantiteMiniProduit($quantiteMiniProduit)
    {
        $this->quantiteMiniProduit = $quantiteMiniProduit;

        return $this;
    }

    /**
     * Get quantiteMiniProduit
     *
     * @return int
     */
    public function getQuantiteMiniProduit()
    {
        return $this->quantiteMiniProduit;
    }

    /**
     * Set classe
     *
     * @param int $classe
     *
     * @return Produit
     */
    public function setClasse($classe)
    {
        $this->classe = $classe;

        return $this;
    }

    /**
     * Get classe
     *
     * @return int
     */
    public function getClasse()
    {
        return $this->classe;
    }

    /**
     * Set discipline
     *
     * @param int $discipline
     *
     * @return Produit
     */
    public function setDiscipline($discipline)
    {
        $this->discipline = $discipline;

        return $this;
    }

    /**
     * Get discipline
     *
     * @return int
     */
    public function getDiscipline()
    {
        return $this->discipline;
    }

    /**
     * Set specialite
     *
     * @param int $specialite
     *
     * @return Produit
     */
    public function setSpecialite($specialite)
    {
        $this->specialite = $specialite;

        return $this;
    }

    /**
     * Get specialite
     *
     * @return int
     */
    public function getSpecialite()
    {
        return $this->specialite;
    }
}

