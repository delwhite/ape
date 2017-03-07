<?php

namespace BEGrA\OperationBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Reglement
 *
 * @ORM\Table(name="reglement")
 * @ORM\Entity(repositoryClass="BEGrA\OperationBundle\Repository\ReglementRepository")
 */
class Reglement
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
     * @var \DateTime
     *
     * @ORM\Column(name="dateReglement", type="datetime")
     */
    private $dateReglement;

    /**
     * @var float
     *
     * @ORM\Column(name="montantReglement", type="float")
     */
    private $montantReglement;

    /**
     * @var string
     *
     * @ORM\Column(name="typeReglement", type="string", length=7)
     */
    private $typeReglement;

    /**
     * @var string
     *
     * @ORM\Column(name="numeroCheque", type="string", length=25, nullable=true)
     */
    private $numeroCheque;

    /**
     * @var string
     *
     * @ORM\Column(name="nomBanque", type="string", length=255, nullable=true)
     */
    private $nomBanque;


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
     * Set typeReglement
     *
     * @param string $typeReglement
     *
     * @return Reglement
     */
    public function setTypeReglement($typeReglement)
    {
        $this->typeReglement = $typeReglement;

        return $this;
    }

    /**
     * Get typeReglement
     *
     * @return string
     */
    public function getTypeReglement()
    {
        return $this->typeReglement;
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
}

