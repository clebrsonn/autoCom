package br.com.tecsoluction.sac;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
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
public class Empresa {

    /**
     */
    @NotNull
    private String nomefantasia;

    /**
     */
    @NotNull
    private String cnpj;

    /**
     */
    @NotNull
    private String razaosocial;

    /**
     */
    private String inscricaoestadual;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date dataabertura;

    /**
     */
    @NotNull
    private String logo;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Caixa> caixas = new HashSet<Caixa>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Filial> filiais = new HashSet<Filial>();

    /**
     */
    @NotNull
    private String categoria;
}
