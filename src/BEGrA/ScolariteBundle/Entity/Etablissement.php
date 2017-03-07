<?php

namespace BEGrA\ScolariteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Etablissement
 *
 * @ORM\Table(name="etablissement")
 * @ORM\Entity(repositoryClass="BEGrA\ScolariteBundle\Repository\EtablissementRepository")
 */
class Etablissement
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
     * @ORM\Column(name="nomEtablissement", type="string", length=255)
     */
    private $nomEtablissement;

    /**
     * @var string
     *
     * @ORM\Column(name="adresseEtablissement", type="string", length=255)
     */
    private $adresseEtablissement;

    /**
     * @var string
     *
     * @ORM\Column(name="cpEtablissement", type="string", length=5)
     */
    private $cpEtablissement;

    /**
     * @var string
     *
     * @ORM\Column(name="villeEtablissement", type="string", length=255)
     */
    private $villeEtablissement;


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
}

