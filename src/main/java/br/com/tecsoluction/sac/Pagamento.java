package br.com.tecsoluction.sac;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Pagamento {

    /**
     */
    @ManyToOne
    private PedidoVenda pedidovenda;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<FormaPagamento> formaspagamento = new HashSet<FormaPagamento>();

    /**
     */
    @NotNull
    private Double total;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date datapagamento;
}
