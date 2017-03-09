<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Fournisseur
 *
 * @ORM\Table(name="fournisseur")
 * @ORM\Entity
 */
class Fournisseur
{
    /**
     * @var string
     *
     * @ORM\Column(name="nom_fournisseur", type="string", length=100, nullable=false)
     */
    private $nomFournisseur;

    /**
     * @var string
     *
     * @ORM\Column(name="adresse_fournisseur", type="string", length=300, nullable=true)
     */
    private $adresseFournisseur;

    /**
     * @var string
     *
     * @ORM\Column(name="cp_fournisseur", type="string", length=5, nullable=false)
     */
    private $cpFournisseur;

    /**
     * @var string
     *
     * @ORM\Column(name="ville_fournisseur", type="string", length=100, nullable=false)
     */
    private $villeFournisseur;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_fournisseur", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idFournisseur;



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

    /**
     * Get idFournisseur
     *
     * @return integer
     */
    public function getIdFournisseur()
    {
        return $this->idFournisseur;
    }
}
