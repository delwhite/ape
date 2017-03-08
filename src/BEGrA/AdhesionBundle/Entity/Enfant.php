<?php

namespace BEGrA\AdhesionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Enfant
 *
 * @ORM\Table(name="enfant")
 * @ORM\Entity(repositoryClass="BEGrA\AdhesionBundle\Repository\EnfantRepository")
 */
class Enfant
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
     * @ORM\Column(name="nomEnfant", type="string", length=255)
     */
    private $nomEnfant;

    /**
     * @var string
     *
     * @ORM\Column(name="prenomEnfant", type="string", length=255)
     */
    private $prenomEnfant;

    /**
     * @var int
     *
     * @ORM\ManyToOne(targetEntity="BEGrA\AdhesionBundle\Entity\Parent")
     */
    private $parentEnfant;

    /**
     * @var int
     *
     * @ORM\ManyToOne(targetEntity="BEGrA\ScolariteBundle\Entity\Etablissement")
     */
    private $etablissementEnfant;

    /**
     * @var int
     *
     * @ORM\ManyToOne(targetEntity="BEGrA\ScolariteBundle\Entity\Classe")
     */
    private $classeEnfant;

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
     * Set nomEnfant
     *
     * @param string $nomEnfant
     *
     * @return Enfant
     */
    public function setNomEnfant($nomEnfant)
    {
        $this->nomEnfant = $nomEnfant;

        return $this;
    }

    /**
     * Get nomEnfant
     *
     * @return string
     */
    public function getNomEnfant()
    {
        return $this->nomEnfant;
    }

    /**
     * Set prenomEnfant
     *
     * @param string $prenomEnfant
     *
     * @return Enfant
     */
    public function setPrenomEnfant($prenomEnfant)
    {
        $this->prenomEnfant = $prenomEnfant;

        return $this;
    }

    /**
     * Get prenomEnfant
     *
     * @return string
     */
    public function getPrenomEnfant()
    {
        return $this->prenomEnfant;
    }

    /**
     * Set parentEnfant
     *
     * @param int $parentEnfant
     *
     * @return Enfant
     */
    public function setParentEnfant($parentEnfant)
    {
        $this->parentEnfant = $parentEnfant;

        return $this;
    }

    /**
     * Get parentEnfant
     *
     * @return int
     */
    public function getParentEnfant()
    {
        return $this->parentEnfant;
    }

    /**
     * Set etablissementEnfant
     *
     * @param int $etablissementEnfant
     *
     * @return Enfant
     */
    public function setEtablissementEnfant($etablissementEnfant)
    {
        $this->etablissementEnfant = $etablissementEnfant;

        return $this;
    }

    /**
     * Get etablissementEnfant
     *
     * @return int
     */
    public function getEtablissementEnfant()
    {
        return $this->etablissementEnfant;
    }

    /**
     * Set classeEnfant
     *
     * @param int $classeEnfant
     *
     * @return Enfant
     */
    public function setClasseEnfant($classeEnfant)
    {
        $this->classeEnfant = $classeEnfant;

        return $this;
    }

    /**
     * Get classeEnfant
     *
     * @return int
     */
    public function getClasseEnfant()
    {
        return $this->classeEnfant;
    }
}

