<?php

namespace BEGrA\ScolariteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Discipline
 *
 * @ORM\Table(name="discipline")
 * @ORM\Entity(repositoryClass="BEGrA\ScolariteBundle\Repository\DisciplineRepository")
 */
class Discipline
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
     * @ORM\Column(name="nomDiscipline", type="string", length=255)
     */
    private $nomDiscipline;


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
     * Set nomDiscipline
     *
     * @param string $nomDiscipline
     *
     * @return Discipline
     */
    public function setNomDiscipline($nomDiscipline)
    {
        $this->nomDiscipline = $nomDiscipline;

        return $this;
    }

    /**
     * Get nomDiscipline
     *
     * @return string
     */
    public function getNomDiscipline()
    {
        return $this->nomDiscipline;
    }
}

