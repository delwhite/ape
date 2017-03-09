<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Commande
 *
 * @ORM\Table(name="commande", indexes={@ORM\Index(name="FK_commande_id_enfant", columns={"id_enfant"}), @ORM\Index(name="FK_commande_numero_facture", columns={"numero_facture"})})
 * @ORM\Entity
 */
class Commande
{
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_commande", type="date", nullable=false)
     */
    private $dateCommande;

    /**
     * @var float
     *
     * @ORM\Column(name="montant_commande", type="float", precision=10, scale=0, nullable=false)
     */
    private $montantCommande;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_commande", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idCommande;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Enfant
     *
     * @ORM\ManyToOne(targetEntity="BureauEtude\CoreBundle\Entity\Enfant")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_enfant", referencedColumnName="id_enfant")
     * })
     */
    private $idEnfant;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Facture
     *
     * @ORM\ManyToOne(targetEntity="BureauEtude\CoreBundle\Entity\Facture")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="numero_facture", referencedColumnName="numero_facture")
     * })
     */
    private $numeroFacture;



    /**
     * Set dateCommande
     *
     * @param \DateTime $dateCommande
     *
     * @return Commande
     */
    public function setDateCommande($dateCommande)
    {
        $this->dateCommande = $dateCommande;

        return $this;
    }

    /**
     * Get dateCommande
     *
     * @return \DateTime
     */
    public function getDateCommande()
    {
        return $this->dateCommande;
    }

    /**
     * Set montantCommande
     *
     * @param float $montantCommande
     *
     * @return Commande
     */
    public function setMontantCommande($montantCommande)
    {
        $this->montantCommande = $montantCommande;

        return $this;
    }

    /**
     * Get montantCommande
     *
     * @return float
     */
    public function getMontantCommande()
    {
        return $this->montantCommande;
    }

    /**
     * Get idCommande
     *
     * @return integer
     */
    public function getIdCommande()
    {
        return $this->idCommande;
    }

    /**
     * Set idEnfant
     *
     * @param \BureauEtude\CoreBundle\Entity\Enfant $idEnfant
     *
     * @return Commande
     */
    public function setIdEnfant(\BureauEtude\CoreBundle\Entity\Enfant $idEnfant = null)
    {
        $this->idEnfant = $idEnfant;

        return $this;
    }

    /**
     * Get idEnfant
     *
     * @return \BureauEtude\CoreBundle\Entity\Enfant
     */
    public function getIdEnfant()
    {
        return $this->idEnfant;
    }

    /**
     * Set numeroFacture
     *
     * @param \BureauEtude\CoreBundle\Entity\Facture $numeroFacture
     *
     * @return Commande
     */
    public function setNumeroFacture(\BureauEtude\CoreBundle\Entity\Facture $numeroFacture = null)
    {
        $this->numeroFacture = $numeroFacture;

        return $this;
    }

    /**
     * Get numeroFacture
     *
     * @return \BureauEtude\CoreBundle\Entity\Facture
     */
    public function getNumeroFacture()
    {
        return $this->numeroFacture;
    }
}
