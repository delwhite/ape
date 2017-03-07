<?php

namespace BEGrA\UtilisateurBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Utilisateur
 *
 * @ORM\Table(name="utilisateur")
 * @ORM\Entity(repositoryClass="BEGrA\UtilisateurBundle\Repository\UtilisateurRepository")
 */
class Utilisateur
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
     * @ORM\Column(name="loginUtilisateur", type="string", length=50)
     */
    private $loginUtilisateur;

    /**
     * @var string
     *
     * @ORM\Column(name="mdpUtilisateur", type="string", length=40)
     */
    private $mdpUtilisateur;


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
     * Set loginUtilisateur
     *
     * @param string $loginUtilisateur
     *
     * @return Utilisateur
     */
    public function setLoginUtilisateur($loginUtilisateur)
    {
        $this->loginUtilisateur = $loginUtilisateur;

        return $this;
    }

    /**
     * Get loginUtilisateur
     *
     * @return string
     */
    public function getLoginUtilisateur()
    {
        return $this->loginUtilisateur;
    }

    /**
     * Set mdpUtilisateur
     *
     * @param string $mdpUtilisateur
     *
     * @return Utilisateur
     */
    public function setMdpUtilisateur($mdpUtilisateur)
    {
        $this->mdpUtilisateur = $mdpUtilisateur;

        return $this;
    }

    /**
     * Get mdpUtilisateur
     *
     * @return string
     */
    public function getMdpUtilisateur()
    {
        return $this->mdpUtilisateur;
    }
}

