package br.com.tecsoluction.sac;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Produto {

    /**
     */
    @NotNull
    private String codebar;
    
    @NotNull
    private String nome;

    /**
     */
    @ManyToOne
    private Categoria categoria;

    /**
     */
    private String marca;

    /**
     */
    @NotNull
    private String descricao;

    /**
     */
    @NotNull
    private Double precocusto;

    /**
     */
    @NotNull
    private Double precovenda;

    /**
     */
    @ManyToOne
    private Item item;

    /**
     */
    private String qtdmin;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date datavalidade;

    /**
     */
    private String lote;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date datacriacao;

    /**
     */
    @ManyToOne
    private Fornecedor fornecedor;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Imposto> impostos = new HashSet<Imposto>();
}
