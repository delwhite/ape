<?php

namespace BEGrA\ScolariteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Lister
 *
 * @ORM\Table(name="lister")
 * @ORM\Entity(repositoryClass="BEGrA\ScolariteBundle\Repository\ListerRepository")
 */
class Lister
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
     * @ORM\Column(name="anneeListe", type="integer")
     */
    private $anneeListe;


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
     * Set anneeListe
     *
     * @param integer $anneeListe
     *
     * @return Lister
     */
    public function setAnneeListe($anneeListe)
    {
        $this->anneeListe = $anneeListe;

        return $this;
    }

    /**
     * Get anneeListe
     *
     * @return int
     */
    public function getAnneeListe()
    {
        return $this->anneeListe;
    }
}

