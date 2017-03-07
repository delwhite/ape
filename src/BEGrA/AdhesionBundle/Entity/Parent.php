<?php

namespace BEGrA\AdhesionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Parent
 *
 * @ORM\Table(name="parent")
 * @ORM\Entity(repositoryClass="BEGrA\AdhesionBundle\Repository\ParentRepository")
 */
class Parent
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
     * @ORM\Column(name="nomParent", type="string", length=255)
     */
    private $nomParent;

    /**
     * @var string
     *
     * @ORM\Column(name="prenomParent", type="string", length=255)
     */
    private $prenomParent;

    /**
     * @var string
     *
     * @ORM\Column(name="adresseParent", type="string", length=255)
     */
    private $adresseParent;

    /**
     * @var string
     *
     * @ORM\Column(name="telephoneParent", type="string", length=10)
     */
    private $telephoneParent;


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
     * Set nomParent
     *
     * @param string $nomParent
     *
     * @return Parent
     */
    public function setNomParent($nomParent)
    {
        $this->nomParent = $nomParent;

        return $this;
    }

    /**
     * Get nomParent
     *
     * @return string
     */
    public function getNomParent()
    {
        return $this->nomParent;
    }

    /**
     * Set prenomParent
     *
     * @param string $prenomParent
     *
     * @return Parent
     */
    public function setPrenomParent($prenomParent)
    {
        $this->prenomParent = $prenomParent;

        return $this;
    }

    /**
     * Get prenomParent
     *
     * @return string
     */
    public function getPrenomParent()
    {
        return $this->prenomParent;
    }

    /**
     * Set adresseParent
     *
     * @param string $adresseParent
     *
     * @return Parent
     */
    public function setAdresseParent($adresseParent)
    {
        $this->adresseParent = $adresseParent;

        return $this;
    }

    /**
     * Get adresseParent
     *
     * @return string
     */
    public function getAdresseParent()
    {
        return $this->adresseParent;
    }

    /**
     * Set telephoneParent
     *
     * @param string $telephoneParent
     *
     * @return Parent
     */
    public function setTelephoneParent($telephoneParent)
    {
        $this->telephoneParent = $telephoneParent;

        return $this;
    }

    /**
     * Get telephoneParent
     *
     * @return string
     */
    public function getTelephoneParent()
    {
        return $this->telephoneParent;
    }
}

