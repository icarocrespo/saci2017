/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author icaro
 */
@Entity
@Table(name = "dia3")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dia3.findAll", query = "SELECT d FROM Dia3 d")
    , @NamedQuery(name = "Dia3.findById", query = "SELECT d FROM Dia3 d WHERE d.id = :id")
    , @NamedQuery(name = "Dia3.findByPresencaManha", query = "SELECT d FROM Dia3 d WHERE d.presencaManha = :presencaManha")
    , @NamedQuery(name = "Dia3.findByPresencaTarde", query = "SELECT d FROM Dia3 d WHERE d.presencaTarde = :presencaTarde")
    , @NamedQuery(name = "Dia3.findByCoffeeBreak", query = "SELECT d FROM Dia3 d WHERE d.coffeeBreak = :coffeeBreak")})
public class Dia3 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "presenca_manha")
    private Boolean presencaManha;
    @Column(name = "presenca_tarde")
    private Boolean presencaTarde;
    @Column(name = "coffee_break")
    private Boolean coffeeBreak;
    @JoinColumn(name = "id_participante", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Participante idParticipante;

    public Dia3() {
    }

    public Dia3(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Boolean getPresencaManha() {
        return presencaManha;
    }

    public void setPresencaManha(Boolean presencaManha) {
        this.presencaManha = presencaManha;
    }

    public Boolean getPresencaTarde() {
        return presencaTarde;
    }

    public void setPresencaTarde(Boolean presencaTarde) {
        this.presencaTarde = presencaTarde;
    }

    public Boolean getCoffeeBreak() {
        return coffeeBreak;
    }

    public void setCoffeeBreak(Boolean coffeeBreak) {
        this.coffeeBreak = coffeeBreak;
    }

    public Participante getIdParticipante() {
        return idParticipante;
    }

    public void setIdParticipante(Participante idParticipante) {
        this.idParticipante = idParticipante;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dia3)) {
            return false;
        }
        Dia3 other = (Dia3) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Dia3[ id=" + id + " ]";
    }
    
}
