// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac.jsf;

import br.com.tecsoluction.sac.Imposto;
import br.com.tecsoluction.sac.jsf.ImpostoBean;
import br.com.tecsoluction.sac.jsf.util.MessageFactory;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect ImpostoBean_Roo_ManagedBean {
    
    declare @type: ImpostoBean: @ManagedBean(name = "impostoBean");
    
    declare @type: ImpostoBean: @SessionScoped;
    
    private String ImpostoBean.name = "Impostoes";
    
    private Imposto ImpostoBean.imposto;
    
    private List<Imposto> ImpostoBean.allImpostoes;
    
    private boolean ImpostoBean.dataVisible = false;
    
    private List<String> ImpostoBean.columns;
    
    private HtmlPanelGrid ImpostoBean.createPanelGrid;
    
    private HtmlPanelGrid ImpostoBean.editPanelGrid;
    
    private HtmlPanelGrid ImpostoBean.viewPanelGrid;
    
    private boolean ImpostoBean.createDialogVisible = false;
    
    @PostConstruct
    public void ImpostoBean.init() {
        columns = new ArrayList<String>();
        columns.add("nome");
        columns.add("valor");
    }
    
    public String ImpostoBean.getName() {
        return name;
    }
    
    public List<String> ImpostoBean.getColumns() {
        return columns;
    }
    
    public List<Imposto> ImpostoBean.getAllImpostoes() {
        return allImpostoes;
    }
    
    public void ImpostoBean.setAllImpostoes(List<Imposto> allImpostoes) {
        this.allImpostoes = allImpostoes;
    }
    
    public String ImpostoBean.findAllImpostoes() {
        allImpostoes = Imposto.findAllImpostoes();
        dataVisible = !allImpostoes.isEmpty();
        return null;
    }
    
    public boolean ImpostoBean.isDataVisible() {
        return dataVisible;
    }
    
    public void ImpostoBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid ImpostoBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void ImpostoBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid ImpostoBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void ImpostoBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid ImpostoBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void ImpostoBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid ImpostoBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nomeCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nomeCreateOutput.setFor("nomeCreateInput");
        nomeCreateOutput.setId("nomeCreateOutput");
        nomeCreateOutput.setValue("Nome:");
        htmlPanelGrid.getChildren().add(nomeCreateOutput);
        
        InputText nomeCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nomeCreateInput.setId("nomeCreateInput");
        nomeCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{impostoBean.imposto.nome}", String.class));
        nomeCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(nomeCreateInput);
        
        Message nomeCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nomeCreateInputMessage.setId("nomeCreateInputMessage");
        nomeCreateInputMessage.setFor("nomeCreateInput");
        nomeCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nomeCreateInputMessage);
        
        OutputLabel valorCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        valorCreateOutput.setFor("valorCreateInput");
        valorCreateOutput.setId("valorCreateOutput");
        valorCreateOutput.setValue("Valor:");
        htmlPanelGrid.getChildren().add(valorCreateOutput);
        
        InputText valorCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        valorCreateInput.setId("valorCreateInput");
        valorCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{impostoBean.imposto.valor}", String.class));
        valorCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(valorCreateInput);
        
        Message valorCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        valorCreateInputMessage.setId("valorCreateInputMessage");
        valorCreateInputMessage.setFor("valorCreateInput");
        valorCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(valorCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid ImpostoBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nomeEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nomeEditOutput.setFor("nomeEditInput");
        nomeEditOutput.setId("nomeEditOutput");
        nomeEditOutput.setValue("Nome:");
        htmlPanelGrid.getChildren().add(nomeEditOutput);
        
        InputText nomeEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nomeEditInput.setId("nomeEditInput");
        nomeEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{impostoBean.imposto.nome}", String.class));
        nomeEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(nomeEditInput);
        
        Message nomeEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nomeEditInputMessage.setId("nomeEditInputMessage");
        nomeEditInputMessage.setFor("nomeEditInput");
        nomeEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nomeEditInputMessage);
        
        OutputLabel valorEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        valorEditOutput.setFor("valorEditInput");
        valorEditOutput.setId("valorEditOutput");
        valorEditOutput.setValue("Valor:");
        htmlPanelGrid.getChildren().add(valorEditOutput);
        
        InputText valorEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        valorEditInput.setId("valorEditInput");
        valorEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{impostoBean.imposto.valor}", String.class));
        valorEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(valorEditInput);
        
        Message valorEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        valorEditInputMessage.setId("valorEditInputMessage");
        valorEditInputMessage.setFor("valorEditInput");
        valorEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(valorEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid ImpostoBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText nomeLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nomeLabel.setId("nomeLabel");
        nomeLabel.setValue("Nome:");
        htmlPanelGrid.getChildren().add(nomeLabel);
        
        HtmlOutputText nomeValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nomeValue.setId("nomeValue");
        nomeValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{impostoBean.imposto.nome}", String.class));
        htmlPanelGrid.getChildren().add(nomeValue);
        
        HtmlOutputText valorLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        valorLabel.setId("valorLabel");
        valorLabel.setValue("Valor:");
        htmlPanelGrid.getChildren().add(valorLabel);
        
        HtmlOutputText valorValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        valorValue.setId("valorValue");
        valorValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{impostoBean.imposto.valor}", String.class));
        htmlPanelGrid.getChildren().add(valorValue);
        
        return htmlPanelGrid;
    }
    
    public Imposto ImpostoBean.getImposto() {
        if (imposto == null) {
            imposto = new Imposto();
        }
        return imposto;
    }
    
    public void ImpostoBean.setImposto(Imposto imposto) {
        this.imposto = imposto;
    }
    
    public String ImpostoBean.onEdit() {
        return null;
    }
    
    public boolean ImpostoBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void ImpostoBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String ImpostoBean.displayList() {
        createDialogVisible = false;
        findAllImpostoes();
        return "imposto";
    }
    
    public String ImpostoBean.displayCreateDialog() {
        imposto = new Imposto();
        createDialogVisible = true;
        return "imposto";
    }
    
    public String ImpostoBean.persist() {
        String message = "";
        if (imposto.getId() != null) {
            imposto.merge();
            message = "message_successfully_updated";
        } else {
            imposto.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Imposto");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllImpostoes();
    }
    
    public String ImpostoBean.delete() {
        imposto.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Imposto");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllImpostoes();
    }
    
    public void ImpostoBean.reset() {
        imposto = null;
        createDialogVisible = false;
    }
    
    public void ImpostoBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
