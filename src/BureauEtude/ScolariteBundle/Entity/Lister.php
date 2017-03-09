<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Lister
 *
 * @ORM\Table(name="lister", indexes={@ORM\Index(name="FK_lister_id_etablissement", columns={"id_etablissement"}), @ORM\Index(name="FK_lister_id_classe", columns={"id_classe"}), @ORM\Index(name="FK_lister_id_discipline", columns={"id_discipline"}), @ORM\Index(name="FK_lister_id_specialite", columns={"id_specialite"}), @ORM\Index(name="IDX_D6253BB2FA891952", columns={"ISBN"})})
 * @ORM\Entity
 */
class Lister
{
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="annee", type="date", nullable=true)
     */
    private $annee;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Produit
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Produit")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ISBN", referencedColumnName="ISBN")
     * })
     */
    private $isbn;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Etablissement
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Etablissement")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_etablissement", referencedColumnName="id_etablissement")
     * })
     */
    private $idEtablissement;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Discipline
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Discipline")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_discipline", referencedColumnName="id_discipline")
     * })
     */
    private $idDiscipline;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Classe
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Classe")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_classe", referencedColumnName="id_classe")
     * })
     */
    private $idClasse;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Specialite
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="BureauEtude\CoreBundle\Entity\Specialite")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_specialite", referencedColumnName="id_specialite")
     * })
     */
    private $idSpecialite;



    /**
     * Set annee
     *
     * @param \DateTime $annee
     *
     * @return Lister
     */
    public function setAnnee($annee)
    {
        $this->annee = $annee;

        return $this;
    }

    /**
     * Get annee
     *
     * @return \DateTime
     */
    public function getAnnee()
    {
        return $this->annee;
    }

    /**
     * Set isbn
     *
     * @param \BureauEtude\CoreBundle\Entity\Produit $isbn
     *
     * @return Lister
     */
    public function setIsbn(\BureauEtude\CoreBundle\Entity\Produit $isbn)
    {
        $this->isbn = $isbn;

        return $this;
    }

    /**
     * Get isbn
     *
     * @return \BureauEtude\CoreBundle\Entity\Produit
     */
    public function getIsbn()
    {
        return $this->isbn;
    }

    /**
     * Set idEtablissement
     *
     * @param \BureauEtude\CoreBundle\Entity\Etablissement $idEtablissement
     *
     * @return Lister
     */
    public function setIdEtablissement(\BureauEtude\CoreBundle\Entity\Etablissement $idEtablissement)
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
     * Set idDiscipline
     *
     * @param \BureauEtude\CoreBundle\Entity\Discipline $idDiscipline
     *
     * @return Lister
     */
    public function setIdDiscipline(\BureauEtude\CoreBundle\Entity\Discipline $idDiscipline)
    {
        $this->idDiscipline = $idDiscipline;

        return $this;
    }

    /**
     * Get idDiscipline
     *
     * @return \BureauEtude\CoreBundle\Entity\Discipline
     */
    public function getIdDiscipline()
    {
        return $this->idDiscipline;
    }

    /**
     * Set idClasse
     *
     * @param \BureauEtude\CoreBundle\Entity\Classe $idClasse
     *
     * @return Lister
     */
    public function setIdClasse(\BureauEtude\CoreBundle\Entity\Classe $idClasse)
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
     * Set idSpecialite
     *
     * @param \BureauEtude\CoreBundle\Entity\Specialite $idSpecialite
     *
     * @return Lister
     */
    public function setIdSpecialite(\BureauEtude\CoreBundle\Entity\Specialite $idSpecialite)
    {
        $this->idSpecialite = $idSpecialite;

        return $this;
    }

    /**
     * Get idSpecialite
     *
     * @return \BureauEtude\CoreBundle\Entity\Specialite
     */
    public function getIdSpecialite()
    {
        return $this->idSpecialite;
    }
}
