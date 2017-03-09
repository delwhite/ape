<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Produit
 *
 * @ORM\Table(name="produit")
 * @ORM\Entity
 */
class Produit
{
    /**
     * @var string
     *
     * @ORM\Column(name="titre", type="string", length=25, nullable=false)
     */
    private $titre;

    /**
     * @var string
     *
     * @ORM\Column(name="auteur", type="string", length=25, nullable=false)
     */
    private $auteur;

    /**
     * @var string
     *
     * @ORM\Column(name="editeur", type="string", length=25, nullable=false)
     */
    private $editeur;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="annee_parution", type="date", nullable=false)
     */
    private $anneeParution;

    /**
     * @var boolean
     *
     * @ORM\Column(name="reutilisable", type="boolean", nullable=false)
     */
    private $reutilisable;

    /**
     * @var integer
     *
     * @ORM\Column(name="quantite_mini", type="integer", nullable=true)
     */
    private $quantiteMini;

    /**
     * @var string
     *
     * @ORM\Column(name="ISBN", type="string", length=25)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $isbn;



    /**
     * Set titre
     *
     * @param string $titre
     *
     * @return Produit
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set auteur
     *
     * @param string $auteur
     *
     * @return Produit
     */
    public function setAuteur($auteur)
    {
        $this->auteur = $auteur;

        return $this;
    }

    /**
     * Get auteur
     *
     * @return string
     */
    public function getAuteur()
    {
        return $this->auteur;
    }

    /**
     * Set editeur
     *
     * @param string $editeur
     *
     * @return Produit
     */
    public function setEditeur($editeur)
    {
        $this->editeur = $editeur;

        return $this;
    }

    /**
     * Get editeur
     *
     * @return string
     */
    public function getEditeur()
    {
        return $this->editeur;
    }

    /**
     * Set anneeParution
     *
     * @param \DateTime $anneeParution
     *
     * @return Produit
     */
    public function setAnneeParution($anneeParution)
    {
        $this->anneeParution = $anneeParution;

        return $this;
    }

    /**
     * Get anneeParution
     *
     * @return \DateTime
     */
    public function getAnneeParution()
    {
        return $this->anneeParution;
    }

    /**
     * Set reutilisable
     *
     * @param boolean $reutilisable
     *
     * @return Produit
     */
    public function setReutilisable($reutilisable)
    {
        $this->reutilisable = $reutilisable;

        return $this;
    }

    /**
     * Get reutilisable
     *
     * @return boolean
     */
    public function getReutilisable()
    {
        return $this->reutilisable;
    }

    /**
     * Set quantiteMini
     *
     * @param integer $quantiteMini
     *
     * @return Produit
     */
    public function setQuantiteMini($quantiteMini)
    {
        $this->quantiteMini = $quantiteMini;

        return $this;
    }

    /**
     * Get quantiteMini
     *
     * @return integer
     */
    public function getQuantiteMini()
    {
        return $this->quantiteMini;
    }

    /**
     * Get isbn
     *
     * @return string
     */
    public function getIsbn()
    {
        return $this->isbn;
    }
}
