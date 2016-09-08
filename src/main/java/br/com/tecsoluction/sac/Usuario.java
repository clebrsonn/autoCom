package br.com.tecsoluction.sac;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Usuario {

    /**
     */
    @NotNull
    private String nome;

    /**
     */
    @NotNull
    private String senha;

    /**
     */
    @NotNull
    private String email;

    /**
     */
    @NotNull
    private String tipo;
}
