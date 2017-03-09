<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Reglement
 *
 * @ORM\Table(name="reglement", indexes={@ORM\Index(name="FK_reglement_numero_facture", columns={"numero_facture"})})
 * @ORM\Entity
 */
class Reglement
{
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_reglement", type="date", nullable=false)
     */
    private $dateReglement;

    /**
     * @var float
     *
     * @ORM\Column(name="montant_reglement", type="float", precision=10, scale=0, nullable=false)
     */
    private $montantReglement;

    /**
     * @var string
     *
     * @ORM\Column(name="type", type="string", length=10, nullable=false)
     */
    private $type;

    /**
     * @var string
     *
     * @ORM\Column(name="numero_cheque", type="string", length=25, nullable=false)
     */
    private $numeroCheque;

    /**
     * @var string
     *
     * @ORM\Column(name="nom_banque", type="string", length=250, nullable=false)
     */
    private $nomBanque;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_reglement", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idReglement;

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
     * Set dateReglement
     *
     * @param \DateTime $dateReglement
     *
     * @return Reglement
     */
    public function setDateReglement($dateReglement)
    {
        $this->dateReglement = $dateReglement;

        return $this;
    }

    /**
     * Get dateReglement
     *
     * @return \DateTime
     */
    public function getDateReglement()
    {
        return $this->dateReglement;
    }

    /**
     * Set montantReglement
     *
     * @param float $montantReglement
     *
     * @return Reglement
     */
    public function setMontantReglement($montantReglement)
    {
        $this->montantReglement = $montantReglement;

        return $this;
    }

    /**
     * Get montantReglement
     *
     * @return float
     */
    public function getMontantReglement()
    {
        return $this->montantReglement;
    }

    /**
     * Set type
     *
     * @param string $type
     *
     * @return Reglement
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Get type
     *
     * @return string
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Set numeroCheque
     *
     * @param string $numeroCheque
     *
     * @return Reglement
     */
    public function setNumeroCheque($numeroCheque)
    {
        $this->numeroCheque = $numeroCheque;

        return $this;
    }

    /**
     * Get numeroCheque
     *
     * @return string
     */
    public function getNumeroCheque()
    {
        return $this->numeroCheque;
    }

    /**
     * Set nomBanque
     *
     * @param string $nomBanque
     *
     * @return Reglement
     */
    public function setNomBanque($nomBanque)
    {
        $this->nomBanque = $nomBanque;

        return $this;
    }

    /**
     * Get nomBanque
     *
     * @return string
     */
    public function getNomBanque()
    {
        return $this->nomBanque;
    }

    /**
     * Get idReglement
     *
     * @return integer
     */
    public function getIdReglement()
    {
        return $this->idReglement;
    }

    /**
     * Set numeroFacture
     *
     * @param \BureauEtude\CoreBundle\Entity\Facture $numeroFacture
     *
     * @return Reglement
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
