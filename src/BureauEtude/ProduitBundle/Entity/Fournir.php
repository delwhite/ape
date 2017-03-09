<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Fournir
 *
 * @ORM\Table(name="fournir", indexes={@ORM\Index(name="FK_fournir_id_fournisseur", columns={"id_fournisseur"}), @ORM\Index(name="FK_fournir_id_association", columns={"id_association"}), @ORM\Index(name="IDX_34D13A52FA891952", columns={"ISBN"})})
 * @ORM\Entity
 */
class Fournir
{
    /**
     * @var float
     *
     * @ORM\Column(name="prix_unitaire", type="float", precision=10, scale=0, nullable=false)
     */
    private $prixUnitaire;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Produit
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Produit")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ISBN", referencedColumnName="ISBN")
     * })
     */
    private $isbn;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Fournisseur
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Fournisseur")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_fournisseur", referencedColumnName="id_fournisseur")
     * })
     */
    private $idFournisseur;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Association
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Association")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_association", referencedColumnName="id_association")
     * })
     */
    private $idAssociation;



    /**
     * Set prixUnitaire
     *
     * @param float $prixUnitaire
     *
     * @return Fournir
     */
    public function setPrixUnitaire($prixUnitaire)
    {
        $this->prixUnitaire = $prixUnitaire;

        return $this;
    }

    /**
     * Get prixUnitaire
     *
     * @return float
     */
    public function getPrixUnitaire()
    {
        return $this->prixUnitaire;
    }

    /**
     * Set isbn
     *
     * @param \BureauEtude\CoreBundle\Entity\Produit $isbn
     *
     * @return Fournir
     */
    public function setIsbn(\BureauEtude\CoreBundle\Entity\Produit $isbn)
    {
        $this->isbn = $isbn;

        return $this;
    }

    /**
     * Get isbn
     *
     * @return \BureauEtude\CoreBundle\Entity\Produit
     */
    public function getIsbn()
    {
        return $this->isbn;
    }

    /**
     * Set idFournisseur
     *
     * @param \BureauEtude\CoreBundle\Entity\Fournisseur $idFournisseur
     *
     * @return Fournir
     */
    public function setIdFournisseur(\BureauEtude\CoreBundle\Entity\Fournisseur $idFournisseur)
    {
        $this->idFournisseur = $idFournisseur;

        return $this;
    }

    /**
     * Get idFournisseur
     *
     * @return \BureauEtude\CoreBundle\Entity\Fournisseur
     */
    public function getIdFournisseur()
    {
        return $this->idFournisseur;
    }

    /**
     * Set idAssociation
     *
     * @param \BureauEtude\CoreBundle\Entity\Association $idAssociation
     *
     * @return Fournir
     */
    public function setIdAssociation(\BureauEtude\CoreBundle\Entity\Association $idAssociation)
    {
        $this->idAssociation = $idAssociation;

        return $this;
    }

    /**
     * Get idAssociation
     *
     * @return \BureauEtude\CoreBundle\Entity\Association
     */
    public function getIdAssociation()
    {
        return $this->idAssociation;
    }
}
