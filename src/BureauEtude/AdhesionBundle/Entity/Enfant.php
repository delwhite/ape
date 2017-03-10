<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Enfant
 *
 * @ORM\Table(name="enfant", indexes={@ORM\Index(name="FK_enfant_id_etablissement", columns={"id_etablissement"}), @ORM\Index(name="FK_enfant_id_tuteur", columns={"id_tuteur"})})
 * @ORM\Entity
 */
class Enfant
{
    /**
     * @var string
     *
     * @ORM\Column(name="nom_enfant", type="string", length=100, nullable=false)
     */
    private $nomEnfant;

    /**
     * @var string
     *
     * @ORM\Column(name="prenom_enfant", type="string", length=100, nullable=false)
     */
    private $prenomEnfant;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_enfant", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idEnfant;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Etablissement
     *
     * @ORM\ManyToOne(targetEntity="BureauEtude\CoreBundle\Entity\Etablissement")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_etablissement", referencedColumnName="id_etablissement")
     * })
     */
    private $idEtablissement;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Classe
     *
     * @ORM\ManyToOne(targetEntity="BureauEtude\CoreBundle\Entity\Classe")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_classe", referencedColumnName="id_classe")
     * })
     */
    private $idClasse;


    /**
     * @var \BureauEtude\CoreBundle\Entity\Tuteur
     *
     * @ORM\ManyToOne(targetEntity="BureauEtude\CoreBundle\Entity\Tuteur")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_tuteur", referencedColumnName="id_tuteur")
     * })
     */
    private $idTuteur;

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
     * Get idEnfant
     *
     * @return integer
     */
    public function getIdEnfant()
    {
        return $this->idEnfant;
    }

    /**
     * Set idEtablissement
     *
     * @param \BureauEtude\CoreBundle\Entity\Etablissement $idEtablissement
     *
     * @return Enfant
     */
    public function setIdEtablissement(\BureauEtude\CoreBundle\Entity\Etablissement $idEtablissement = null)
    {
        $this->idEtablissement = $idEtablissement;

        return $this;
    }

    /**
     * Get idEtablissement
     *
     * @return \BureauEtude\CoreBundle\Entity\Etablissement
     */
    public function getIdEtablissement()
    {
        return $this->idEtablissement;
    }

    /**
     * Set idClasse
     *
     * @param \BureauEtude\CoreBundle\Entity\Classe $idClasse
     *
     * @return Enfant
     */
    public function setIdClasse(\BureauEtude\CoreBundle\Entity\Classe $idClasse = null)
    {
        $this->idClasse = $idClasse;

        return $this;
    }

    /**
     * Get idClasse
     *
     * @return \BureauEtude\CoreBundle\Entity\Classe
     */
    public function getIdClasse()
    {
        return $this->idClasse;
    }

    /**
     * Set idTuteur
     *
     * @param \BureauEtude\CoreBundle\Entity\Tuteur $idTuteur
     *
     * @return Enfant
     */
    public function setIdTuteur(\BureauEtude\CoreBundle\Entity\Tuteur $idTuteur = null)
    {
        $this->idTuteur = $idTuteur;

        return $this;
    }

    /**
     * Get idTuteur
     *
     * @return \BureauEtude\CoreBundle\Entity\Tuteur
     */
    public function getIdTuteur()
    {
        return $this->idTuteur;
    }
}
