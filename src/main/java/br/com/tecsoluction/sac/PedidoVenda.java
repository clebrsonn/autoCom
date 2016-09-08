package br.com.tecsoluction.sac;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class PedidoVenda {

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Item> itens = new HashSet<Item>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Pagamento> pagamentos = new HashSet<Pagamento>();

    /**
     */
    @ManyToOne
    private Mesa mesa;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<FormaPagamento> formapagamento = new HashSet<FormaPagamento>();

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date datavenda;
}
