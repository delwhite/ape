<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Utilisateur
 *
 * @ORM\Table(name="utilisateur")
 * @ORM\Entity
 */
class Utilisateur
{
    /**
     * @var string
     *
     * @ORM\Column(name="login", type="string", length=25, nullable=false)
     */
    private $login;

    /**
     * @var string
     *
     * @ORM\Column(name="mot_de_passe", type="string", length=40, nullable=false)
     */
    private $motDePasse;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_utilisateur", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idUtilisateur;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="BureauEtude\CoreBundle\Entity\Association", mappedBy="idUtilisateur")
     */
    private $idAssociation;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->idAssociation = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Set login
     *
     * @param string $login
     *
     * @return Utilisateur
     */
    public function setLogin($login)
    {
        $this->login = $login;

        return $this;
    }

    /**
     * Get login
     *
     * @return string
     */
    public function getLogin()
    {
        return $this->login;
    }

    /**
     * Set motDePasse
     *
     * @param string $motDePasse
     *
     * @return Utilisateur
     */
    public function setMotDePasse($motDePasse)
    {
        $this->motDePasse = $motDePasse;

        return $this;
    }

    /**
     * Get motDePasse
     *
     * @return string
     */
    public function getMotDePasse()
    {
        return $this->motDePasse;
    }

    /**
     * Get idUtilisateur
     *
     * @return integer
     */
    public function getIdUtilisateur()
    {
        return $this->idUtilisateur;
    }

    /**
     * Add idAssociation
     *
     * @param \BureauEtude\CoreBundle\Entity\Association $idAssociation
     *
     * @return Utilisateur
     */
    public function addIdAssociation(\BureauEtude\CoreBundle\Entity\Association $idAssociation)
    {
        $this->idAssociation[] = $idAssociation;

        return $this;
    }

    /**
     * Remove idAssociation
     *
     * @param \BureauEtude\CoreBundle\Entity\Association $idAssociation
     */
    public function removeIdAssociation(\BureauEtude\CoreBundle\Entity\Association $idAssociation)
    {
        $this->idAssociation->removeElement($idAssociation);
    }

    /**
     * Get idAssociation
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getIdAssociation()
    {
        return $this->idAssociation;
    }
}
