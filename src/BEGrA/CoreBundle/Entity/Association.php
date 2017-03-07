<?php

namespace BEGrA\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Association
 *
 * @ORM\Table(name="association")
 * @ORM\Entity(repositoryClass="BEGrA\CoreBundle\Repository\AssociationRepository")
 */
class Association
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
     * @ORM\Column(name="nomAssociation", type="string", length=255)
     */
    private $nomAssociation;

    /**
     * @var float
     *
     * @ORM\Column(name="prixAdhesionAssociation", type="float")
     */
    private $prixAdhesionAssociation;


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
     * Set nomAssociation
     *
     * @param string $nomAssociation
     *
     * @return Association
     */
    public function setNomAssociation($nomAssociation)
    {
        $this->nomAssociation = $nomAssociation;

        return $this;
    }

    /**
     * Get nomAssociation
     *
     * @return string
     */
    public function getNomAssociation()
    {
        return $this->nomAssociation;
    }

    /**
     * Set prixAdhesionAssociation
     *
     * @param float $prixAdhesionAssociation
     *
     * @return Association
     */
    public function setPrixAdhesionAssociation($prixAdhesionAssociation)
    {
        $this->prixAdhesionAssociation = $prixAdhesionAssociation;

        return $this;
    }

    /**
     * Get prixAdhesionAssociation
     *
     * @return float
     */
    public function getPrixAdhesionAssociation()
    {
        return $this->prixAdhesionAssociation;
    }
}

