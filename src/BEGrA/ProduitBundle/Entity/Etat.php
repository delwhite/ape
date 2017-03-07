<?php

namespace BEGrA\ProduitBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Etat
 *
 * @ORM\Table(name="etat")
 * @ORM\Entity(repositoryClass="BEGrA\ProduitBundle\Repository\EtatRepository")
 */
class Etat
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
     * @var string
     *
     * @ORM\Column(name="designationEtat", type="string", length=255)
     */
    private $designationEtat;

    /**
     * @var float
     *
     * @ORM\Column(name="ratioDecoteAchatEtat", type="float", nullable=true)
     */
    private $ratioDecoteAchatEtat;

    /**
     * @var float
     *
     * @ORM\Column(name="ratioDecoteVenteEtat", type="float")
     */
    private $ratioDecoteVenteEtat;


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
     * Set designationEtat
     *
     * @param string $designationEtat
     *
     * @return Etat
     */
    public function setDesignationEtat($designationEtat)
    {
        $this->designationEtat = $designationEtat;

        return $this;
    }

    /**
     * Get designationEtat
     *
     * @return string
     */
    public function getDesignationEtat()
    {
        return $this->designationEtat;
    }

    /**
     * Set ratioDecoteAchatEtat
     *
     * @param float $ratioDecoteAchatEtat
     *
     * @return Etat
     */
    public function setRatioDecoteAchatEtat($ratioDecoteAchatEtat)
    {
        $this->ratioDecoteAchatEtat = $ratioDecoteAchatEtat;

        return $this;
    }

    /**
     * Get ratioDecoteAchatEtat
     *
     * @return float
     */
    public function getRatioDecoteAchatEtat()
    {
        return $this->ratioDecoteAchatEtat;
    }

    /**
     * Set ratioDecoteVenteEtat
     *
     * @param float $ratioDecoteVenteEtat
     *
     * @return Etat
     */
    public function setRatioDecoteVenteEtat($ratioDecoteVenteEtat)
    {
        $this->ratioDecoteVenteEtat = $ratioDecoteVenteEtat;

        return $this;
    }

    /**
     * Get ratioDecoteVenteEtat
     *
     * @return float
     */
    public function getRatioDecoteVenteEtat()
    {
        return $this->ratioDecoteVenteEtat;
    }
}

