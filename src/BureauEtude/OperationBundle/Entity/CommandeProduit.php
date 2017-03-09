<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CommandeProduit
 *
 * @ORM\Table(name="commande_produit", indexes={@ORM\Index(name="FK_commande_produit_ISBN", columns={"ISBN"}), @ORM\Index(name="FK_commande_produit_id_etat", columns={"id_etat"}), @ORM\Index(name="IDX_DF1E9E873E314AE8", columns={"id_commande"})})
 * @ORM\Entity
 */
class CommandeProduit
{
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
     * @var \BureauEtude\CoreBundle\Entity\Commande
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Commande")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_commande", referencedColumnName="id_commande")
     * })
     */
    private $idCommande;

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
     * Set isbn
     *
     * @param \BureauEtude\CoreBundle\Entity\Produit $isbn
     *
     * @return CommandeProduit
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
     * Set idCommande
     *
     * @param \BureauEtude\CoreBundle\Entity\Commande $idCommande
     *
     * @return CommandeProduit
     */
    public function setIdCommande(\BureauEtude\CoreBundle\Entity\Commande $idCommande)
    {
        $this->idCommande = $idCommande;

        return $this;
    }

    /**
     * Get idCommande
     *
     * @return \BureauEtude\CoreBundle\Entity\Commande
     */
    public function getIdCommande()
    {
        return $this->idCommande;
    }

    /**
     * Set idEtat
     *
     * @param \BureauEtude\CoreBundle\Entity\Etat $idEtat
     *
     * @return CommandeProduit
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
}
