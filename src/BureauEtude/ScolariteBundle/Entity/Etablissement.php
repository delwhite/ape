<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Etablissement
 *
 * @ORM\Table(name="etablissement")
 * @ORM\Entity
 */
class Etablissement
{
    /**
     * @var string
     *
     * @ORM\Column(name="nom_etablissement", type="string", length=25, nullable=false)
     */
    private $nomEtablissement;

    /**
     * @var string
     *
     * @ORM\Column(name="adresse_etablissement", type="string", length=300, nullable=false)
     */
    private $adresseEtablissement;

    /**
     * @var string
     *
     * @ORM\Column(name="cp_etablissement", type="string", length=5, nullable=false)
     */
    private $cpEtablissement;

    /**
     * @var string
     *
     * @ORM\Column(name="ville_etablissement", type="string", length=100, nullable=false)
     */
    private $villeEtablissement;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_etablissement", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idEtablissement;



    /**
     * Set nomEtablissement
     *
     * @param string $nomEtablissement
     *
     * @return Etablissement
     */
    public function setNomEtablissement($nomEtablissement)
    {
        $this->nomEtablissement = $nomEtablissement;

        return $this;
    }

    /**
     * Get nomEtablissement
     *
     * @return string
     */
    public function getNomEtablissement()
    {
        return $this->nomEtablissement;
    }

    /**
     * Set adresseEtablissement
     *
     * @param string $adresseEtablissement
     *
     * @return Etablissement
     */
    public function setAdresseEtablissement($adresseEtablissement)
    {
        $this->adresseEtablissement = $adresseEtablissement;

        return $this;
    }

    /**
     * Get adresseEtablissement
     *
     * @return string
     */
    public function getAdresseEtablissement()
    {
        return $this->adresseEtablissement;
    }

    /**
     * Set cpEtablissement
     *
     * @param string $cpEtablissement
     *
     * @return Etablissement
     */
    public function setCpEtablissement($cpEtablissement)
    {
        $this->cpEtablissement = $cpEtablissement;

        return $this;
    }

    /**
     * Get cpEtablissement
     *
     * @return string
     */
    public function getCpEtablissement()
    {
        return $this->cpEtablissement;
    }

    /**
     * Set villeEtablissement
     *
     * @param string $villeEtablissement
     *
     * @return Etablissement
     */
    public function setVilleEtablissement($villeEtablissement)
    {
        $this->villeEtablissement = $villeEtablissement;

        return $this;
    }

    /**
     * Get villeEtablissement
     *
     * @return string
     */
    public function getVilleEtablissement()
    {
        return $this->villeEtablissement;
    }

    /**
     * Get idEtablissement
     *
     * @return integer
     */
    public function getIdEtablissement()
    {
        return $this->idEtablissement;
    }
}
