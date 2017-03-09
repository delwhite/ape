<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Specialite
 *
 * @ORM\Table(name="specialite")
 * @ORM\Entity
 */
class Specialite
{
    /**
     * @var string
     *
     * @ORM\Column(name="nom_specialite", type="string", length=250, nullable=false)
     */
    private $nomSpecialite;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_specialite", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idSpecialite;



    /**
     * Set nomSpecialite
     *
     * @param string $nomSpecialite
     *
     * @return Specialite
     */
    public function setNomSpecialite($nomSpecialite)
    {
        $this->nomSpecialite = $nomSpecialite;

        return $this;
    }

    /**
     * Get nomSpecialite
     *
     * @return string
     */
    public function getNomSpecialite()
    {
        return $this->nomSpecialite;
    }

    /**
     * Get idSpecialite
     *
     * @return integer
     */
    public function getIdSpecialite()
    {
        return $this->idSpecialite;
    }
}
