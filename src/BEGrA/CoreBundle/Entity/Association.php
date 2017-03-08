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
    * @ORM\ManyToOne(targetEntity="BEGrA\Scolarite\Entity\Etablissement")
    */
    private $etablissement;

    /**
    * @ORM\ManyToOne(targetEntity="BEGrA\CoreBundle\Entity\Association")
    */
    private $association;

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
     * Set etablissement
     *
     * @param int $etablissement
     *
     * @return Association
     */
    public function setEtablissement($etablissement)
    {
        $this->etablissement = $etablissement;

        return $this;
    }

    /**
     * Get etablissement
     *
     * @return int
     */
    public function getEtablissement()
    {
        return $this->etablissement;
    }

    /**
     * Set association
     *
     * @param int $association
     *
     * @return Association
     */
    public function setAssociation($association)
    {
        $this->association = $association;

        return $this;
    }

    /**
     * Get association
     *
     * @return int
     */
    public function getAssociation()
    {
        return $this->nomAssociation;
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

