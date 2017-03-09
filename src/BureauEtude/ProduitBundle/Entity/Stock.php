<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Stock
 *
 * @ORM\Table(name="stock", indexes={@ORM\Index(name="FK_stock_id_etat", columns={"id_etat"}), @ORM\Index(name="FK_stock_id_association", columns={"id_association"}), @ORM\Index(name="IDX_4B365660FA891952", columns={"ISBN"})})
 * @ORM\Entity
 */
class Stock
{
    /**
     * @var integer
     *
     * @ORM\Column(name="quantite", type="integer", nullable=false)
     */
    private $quantite;

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
     * @var \BureauEtude\CoreBundle\Entity\Etat
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Etat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_etat", referencedColumnName="id_etat")
     * })
     */
    private $idEtat;

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
     * Set quantite
     *
     * @param integer $quantite
     *
     * @return Stock
     */
    public function setQuantite($quantite)
    {
        $this->quantite = $quantite;

        return $this;
    }

    /**
     * Get quantite
     *
     * @return integer
     */
    public function getQuantite()
    {
        return $this->quantite;
    }

    /**
     * Set isbn
     *
     * @param \BureauEtude\CoreBundle\Entity\Produit $isbn
     *
     * @return Stock
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
     * Set idEtat
     *
     * @param \BureauEtude\CoreBundle\Entity\Etat $idEtat
     *
     * @return Stock
     */
    public function setIdEtat(\BureauEtude\CoreBundle\Entity\Etat $idEtat)
    {
        $this->idEtat = $idEtat;

        return $this;
    }

    /**
     * Get idEtat
     *
     * @return \BureauEtude\CoreBundle\Entity\Etat
     */
    public function getIdEtat()
    {
        return $this->idEtat;
    }

    /**
     * Set idAssociation
     *
     * @param \BureauEtude\CoreBundle\Entity\Association $idAssociation
     *
     * @return Stock
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
