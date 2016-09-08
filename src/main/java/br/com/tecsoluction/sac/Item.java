package br.com.tecsoluction.sac;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Item {

    /**
     */
    @NotNull
    private String codigo;

    /**
     */
    @NotNull
    private String descricao;

    /**
     */
    @NotNull
    private Double precounitario;

    /**
     */
    @NotNull
    private String qtd;

    /**
     */
    @NotNull
    private Double precotototal;

    /**
     */
    @ManyToOne
    private Produto produto;

    /**
     */
    @ManyToOne
    private PedidoVenda pedidovenda;

    /**
     */
    @ManyToOne
    private PedidoCompra pedidocompra;

    /**
     */
    @ManyToOne
    private Recebimento recebimento;

    /**
     */
    @ManyToOne
    private Cotacao cotacao;

    /**
     */
    @ManyToOne
    private DevolucaoCompra devolucaocompra;

    /**
     */
    @ManyToOne
    private DevolucaoVenda devolucaovenda;

    /**
     */
    @ManyToOne
    private Estoque estoque;
}
