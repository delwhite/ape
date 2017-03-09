<?php

namespace BureauEtude\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Etat
 *
 * @ORM\Table(name="etat")
 * @ORM\Entity
 */
class Etat
{
    /**
     * @var string
     *
     * @ORM\Column(name="designation_etat", type="string", length=100, nullable=false)
     */
    private $designationEtat;

    /**
     * @var float
     *
     * @ORM\Column(name="ratio_decote_achat", type="float", precision=10, scale=0, nullable=false)
     */
    private $ratioDecoteAchat;

    /**
     * @var float
     *
     * @ORM\Column(name="ratio_decote_vente", type="float", precision=10, scale=0, nullable=true)
     */
    private $ratioDecoteVente;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_etat", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idEtat;



    /**
     * Set designationEtat
     *
     * @param string $designationEtat
     *
     * @return Etat
     */
    public function setDesignationEtat($designationEtat)
    {
        $this->designationEtat = $designationEtat;

        return $this;
    }

    /**
     * Get designationEtat
     *
     * @return string
     */
    public function getDesignationEtat()
    {
        return $this->designationEtat;
    }

    /**
     * Set ratioDecoteAchat
     *
     * @param float $ratioDecoteAchat
     *
     * @return Etat
     */
    public function setRatioDecoteAchat($ratioDecoteAchat)
    {
        $this->ratioDecoteAchat = $ratioDecoteAchat;

        return $this;
    }

    /**
     * Get ratioDecoteAchat
     *
     * @return float
     */
    public function getRatioDecoteAchat()
    {
        return $this->ratioDecoteAchat;
    }

    /**
     * Set ratioDecoteVente
     *
     * @param float $ratioDecoteVente
     *
     * @return Etat
     */
    public function setRatioDecoteVente($ratioDecoteVente)
    {
        $this->ratioDecoteVente = $ratioDecoteVente;

        return $this;
    }

    /**
     * Get ratioDecoteVente
     *
     * @return float
     */
    public function getRatioDecoteVente()
    {
        return $this->ratioDecoteVente;
    }

    /**
     * Get idEtat
     *
     * @return integer
     */
    public function getIdEtat()
    {
        return $this->idEtat;
    }
}
