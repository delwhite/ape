<?php

namespace BEGrA\ProduitBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Fournir
 *
 * @ORM\Table(name="fournir")
 * @ORM\Entity(repositoryClass="BEGrA\ProduitBundle\Repository\FournirRepository")
 */
class Fournir
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
     * @var float
     *
     * @ORM\Column(name="prix_unitaire", type="float")
     */
    private $prixUnitaire;


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
     * Set prixUnitaire
     *
     * @param float $prixUnitaire
     *
     * @return Fournir
     */
    public function setPrixUnitaire($prixUnitaire)
    {
        $this->prixUnitaire = $prixUnitaire;

        return $this;
    }

    /**
     * Get prixUnitaire
     *
     * @return float
     */
    public function getPrixUnitaire()
    {
        return $this->prixUnitaire;
    }
}

