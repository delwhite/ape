<?php

namespace BEGrA\AdhesionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Adherer
 *
 * @ORM\Table(name="adherer")
 * @ORM\Entity(repositoryClass="BEGrA\AdhesionBundle\Repository\AdhererRepository")
 */
class Adherer
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
     * @var int
     *
     * @ORM\Column(name="annee_adhesion", type="integer")
     */
    private $anneeAdhesion;


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
     * Set anneeAdhesion
     *
     * @param integer $anneeAdhesion
     *
     * @return Adherer
     */
    public function setAnneeAdhesion($anneeAdhesion)
    {
        $this->anneeAdhesion = $anneeAdhesion;

        return $this;
    }

    /**
     * Get anneeAdhesion
     *
     * @return int
     */
    public function getAnneeAdhesion()
    {
        return $this->anneeAdhesion;
    }
}

