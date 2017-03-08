<?php

namespace BEGrA\ScolariteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Classe
 *
 * @ORM\Table(name="classe")
 * @ORM\Entity(repositoryClass="BEGrA\ScolariteBundle\Repository\ClasseRepository")
 */
class Classe
{
    /**
     * Classe constructor.
     */
    public function __construct()
    {
        $this->disciplines = new \Doctrine\Common\Collections\ArrayCollection();
        $this->specialites = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * @ORM\ManyToMany(targetEntity="BEGrA\ScolariteBundle\Entity\Discipline")
     */
    private $disciplines;

    /**
     * @ORM\ManyToMany(targetEntity="BEGrA\ScolariteBundle\Entity\Specialite")
     */
    private $specialites;

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
     * @ORM\Column(name="nomClasse", type="string", length=255)
     */
    private $nomClasse;

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
     * add disciplines
     *
     * @param \BEGrA\ScolariteBundle\Entity\Discipline $discipline
     *
     * @return Classe
     */
    public function addDiscipline(\BEGrA\ScolariteBundle\Entity\Discipline $discipline)
    {
        $this->disciplines[] = $discipline;

        return $this;
    }

    /**
     * Remove discipline
     *
     * @param \BEGrA\ScolariteBundle\Entity\Discipline $discipline
     */
    public function removeDiscipline(\BEGrA\ScolariteBundle\Entity\Discipline $discipline)
    {
        $this->disciplines->removeElement($discipline);
    }

    /**
     * Get disciplines
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getDisciplines()
    {
        return $this->classes;
    }

    /**
     * add specialite
     *
     * @param \BEGrA\ScolariteBundle\Entity\Specialite $specialite
     *
     * @return Classe
     */
    public function addSpecialite(\BEGrA\ScolariteBundle\Entity\Specialite $specialite)
    {
        $this->specialites[] = $specialite;

        return $this;
    }

    /**
     * Remove specialite
     *
     * @param \BEGrA\ScolariteBundle\Entity\Specialite $specialite
     */
    public function removeSpecialite(\BEGrA\ScolariteBundle\Entity\Specialite $specialite)
    {
        $this->specialites->removeElement($specialite);
    }

    /**
     * Get specialites
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getSpecialites()
    {
        return $this->specialites;
    }

    /**
     * Set nomClasse
     *
     * @param string $nomClasse
     *
     * @return Classe
     */
    public function setNomClasse($nomClasse)
    {
        $this->nomClasse = $nomClasse;

        return $this;
    }

    /**
     * Get nomClasse
     *
     * @return string
     */
    public function getNomClasse()
    {
        return $this->nomClasse;
    }
}

