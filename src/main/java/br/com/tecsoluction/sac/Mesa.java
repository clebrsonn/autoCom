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
public class Mesa {

    /**
     */
    @NotNull
    private String numero;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date datacriacao;

    /**
     */
    @NotNull
    private String status;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<PedidoVenda> pedidosvenda = new HashSet<PedidoVenda>();
}
