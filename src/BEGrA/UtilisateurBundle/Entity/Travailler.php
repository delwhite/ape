<?php

namespace BEGrA\UtilisateurBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Travailler
 *
 * @ORM\Table(name="travailler")
 * @ORM\Entity(repositoryClass="BEGrA\UtilisateurBundle\Repository\TravaillerRepository")
 */
class Travailler
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
     * @ORM\Column(name="habilitation", type="string", length=20)
     */
    private $habilitation;


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
     * Set habilitation
     *
     * @param string $habilitation
     *
     * @return Travailler
     */
    public function setHabilitation($habilitation)
    {
        $this->habilitation = $habilitation;

        return $this;
    }

    /**
     * Get habilitation
     *
     * @return string
     */
    public function getHabilitation()
    {
        return $this->habilitation;
    }
}

