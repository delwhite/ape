<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Facture
 *
 * @ORM\Table(name="facture", indexes={@ORM\Index(name="FK_facture_id_tuteur", columns={"id_tuteur"})})
 * @ORM\Entity
 */
class Facture
{
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_facture", type="date", nullable=false)
     */
    private $dateFacture;

    /**
     * @var integer
     *
     * @ORM\Column(name="numero_facture", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $numeroFacture;

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
     * Set dateFacture
     *
     * @param \DateTime $dateFacture
     *
     * @return Facture
     */
    public function setDateFacture($dateFacture)
    {
        $this->dateFacture = $dateFacture;

        return $this;
    }

    /**
     * Get dateFacture
     *
     * @return \DateTime
     */
    public function getDateFacture()
    {
        return $this->dateFacture;
    }

    /**
     * Get numeroFacture
     *
     * @return integer
     */
    public function getNumeroFacture()
    {
        return $this->numeroFacture;
    }

    /**
     * Set idTuteur
     *
     * @param \BureauEtude\CoreBundle\Entity\Tuteur $idTuteur
     *
     * @return Facture
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
