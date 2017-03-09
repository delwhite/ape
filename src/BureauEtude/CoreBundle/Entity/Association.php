<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Association
 *
 * @ORM\Table(name="association", indexes={@ORM\Index(name="FK_association_id_etablissement", columns={"id_etablissement"}), @ORM\Index(name="FK_association_id_association_1", columns={"id_association_1"})})
 * @ORM\Entity
 */
class Association
{
    /**
     * @var string
     *
     * @ORM\Column(name="nom_association", type="string", length=200, nullable=false)
     */
    private $nomAssociation;

    /**
     * @var float
     *
     * @ORM\Column(name="prix_adhesion", type="float", precision=10, scale=0, nullable=false)
     */
    private $prixAdhesion;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_association", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idAssociation;

    /**
     * @var \BureauEtude\CoreBundle\Entity\Association
     *
     * @ORM\ManyToOne(targetEntity="BureauEtude\CoreBundle\Entity\Association")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_association_1", referencedColumnName="id_association")
     * })
     */
    private $idAssociation1;

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
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="BureauEtude\CoreBundle\Entity\Utilisateur", inversedBy="idAssociation")
     * @ORM\JoinTable(name="appartenir",
     *   joinColumns={
     *     @ORM\JoinColumn(name="id_association", referencedColumnName="id_association")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="id_utilisateur", referencedColumnName="id_utilisateur")
     *   }
     * )
     */
    private $idUtilisateur;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="BureauEtude\CoreBundle\Entity\Tuteur", mappedBy="idAssociation")
     */
    private $idTuteur;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->idUtilisateur = new \Doctrine\Common\Collections\ArrayCollection();
        $this->idTuteur = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Set nomAssociation
     *
     * @param string $nomAssociation
     *
     * @return Association
     */
    public function setNomAssociation($nomAssociation)
    {
        $this->nomAssociation = $nomAssociation;

        return $this;
    }

    /**
     * Get nomAssociation
     *
     * @return string
     */
    public function getNomAssociation()
    {
        return $this->nomAssociation;
    }

    /**
     * Set prixAdhesion
     *
     * @param float $prixAdhesion
     *
     * @return Association
     */
    public function setPrixAdhesion($prixAdhesion)
    {
        $this->prixAdhesion = $prixAdhesion;

        return $this;
    }

    /**
     * Get prixAdhesion
     *
     * @return float
     */
    public function getPrixAdhesion()
    {
        return $this->prixAdhesion;
    }

    /**
     * Get idAssociation
     *
     * @return integer
     */
    public function getIdAssociation()
    {
        return $this->idAssociation;
    }

    /**
     * Set idAssociation1
     *
     * @param \BureauEtude\CoreBundle\Entity\Association $idAssociation1
     *
     * @return Association
     */
    public function setIdAssociation1(\BureauEtude\CoreBundle\Entity\Association $idAssociation1 = null)
    {
        $this->idAssociation1 = $idAssociation1;

        return $this;
    }

    /**
     * Get idAssociation1
     *
     * @return \BureauEtude\CoreBundle\Entity\Association
     */
    public function getIdAssociation1()
    {
        return $this->idAssociation1;
    }

    /**
     * Set idEtablissement
     *
     * @param \BureauEtude\CoreBundle\Entity\Etablissement $idEtablissement
     *
     * @return Association
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
     * Add idUtilisateur
     *
     * @param \BureauEtude\CoreBundle\Entity\Utilisateur $idUtilisateur
     *
     * @return Association
     */
    public function addIdUtilisateur(\BureauEtude\CoreBundle\Entity\Utilisateur $idUtilisateur)
    {
        $this->idUtilisateur[] = $idUtilisateur;

        return $this;
    }

    /**
     * Remove idUtilisateur
     *
     * @param \BureauEtude\CoreBundle\Entity\Utilisateur $idUtilisateur
     */
    public function removeIdUtilisateur(\BureauEtude\CoreBundle\Entity\Utilisateur $idUtilisateur)
    {
        $this->idUtilisateur->removeElement($idUtilisateur);
    }

    /**
     * Get idUtilisateur
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getIdUtilisateur()
    {
        return $this->idUtilisateur;
    }

    /**
     * Add idTuteur
     *
     * @param \BureauEtude\CoreBundle\Entity\Tuteur $idTuteur
     *
     * @return Association
     */
    public function addIdTuteur(\BureauEtude\CoreBundle\Entity\Tuteur $idTuteur)
    {
        $this->idTuteur[] = $idTuteur;

        return $this;
    }

    /**
     * Remove idTuteur
     *
     * @param \BureauEtude\CoreBundle\Entity\Tuteur $idTuteur
     */
    public function removeIdTuteur(\BureauEtude\CoreBundle\Entity\Tuteur $idTuteur)
    {
        $this->idTuteur->removeElement($idTuteur);
    }

    /**
     * Get idTuteur
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getIdTuteur()
    {
        return $this->idTuteur;
    }
}
