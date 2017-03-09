<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Discipline
 *
 * @ORM\Table(name="discipline")
 * @ORM\Entity
 */
class Discipline
{
    /**
     * @var string
     *
     * @ORM\Column(name="nom_discipline", type="string", length=250, nullable=false)
     */
    private $nomDiscipline;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_discipline", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idDiscipline;



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

    /**
     * Get idDiscipline
     *
     * @return integer
     */
    public function getIdDiscipline()
    {
        return $this->idDiscipline;
    }
}
