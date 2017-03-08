<?php

namespace BEGrA\OperationBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Commande
 *
 * @ORM\Table(name="commande")
 * @ORM\Entity(repositoryClass="BEGrA\OperationBundle\Repository\CommandeRepository")
 */
class Commande
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
     * @ORM\Column(name="dateCommande", type="datetime")
     */
    private $dateCommande;

    /**
     * @var float
     *
     * @ORM\Column(name="montantCommande", type="float")
     */
    private $montantCommande;

    /**
     * @var int
     *
     * @ORM\ManyToOne(targetEntity="BEGrA\OperationBundle\Entity\Facture")
     */
    private $facture;

    /**
     * @var int
     *
     * @ORM\ManyToOne(targetEntity="BEGrA\AdhesionBundle\Entity\Enfant")
     */
    private $enfant;

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
     * Set facture
     *
     * @param int $facture
     *
     * @return Commande
     */
    public function setFacture($facture)
    {
        $this->facture = $facture;

        return $this;
    }

    /**
     * Get facture
     *
     * @return int
     */
    public function getFacture()
    {
        return $this->facture;
    }

    /**
     * Set enfant
     *
     * @param int $enfant
     *
     * @return Commande
     */
    public function setEnfant($enfant)
    {
        $this->enfant = $enfant;

        return $this;
    }

    /**
     * Get enfant
     *
     * @return int
     */
    public function getEnfant()
    {
        return $this->enfant;
    }
}

