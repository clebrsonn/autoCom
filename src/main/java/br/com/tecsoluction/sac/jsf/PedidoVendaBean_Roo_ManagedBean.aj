// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac.jsf;

import br.com.tecsoluction.sac.FormaPagamento;
import br.com.tecsoluction.sac.Item;
import br.com.tecsoluction.sac.Mesa;
import br.com.tecsoluction.sac.Pagamento;
import br.com.tecsoluction.sac.PedidoVenda;
import br.com.tecsoluction.sac.jsf.PedidoVendaBean;
import br.com.tecsoluction.sac.jsf.converter.FormaPagamentoConverter;
import br.com.tecsoluction.sac.jsf.converter.ItemConverter;
import br.com.tecsoluction.sac.jsf.converter.MesaConverter;
import br.com.tecsoluction.sac.jsf.converter.PagamentoConverter;
import br.com.tecsoluction.sac.jsf.util.MessageFactory;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UISelectItems;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import javax.faces.convert.DateTimeConverter;
import org.primefaces.component.autocomplete.AutoComplete;
import org.primefaces.component.calendar.Calendar;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.component.selectmanymenu.SelectManyMenu;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect PedidoVendaBean_Roo_ManagedBean {
    
    declare @type: PedidoVendaBean: @ManagedBean(name = "pedidoVendaBean");
    
    declare @type: PedidoVendaBean: @SessionScoped;
    
    private String PedidoVendaBean.name = "PedidoVendas";
    
    private PedidoVenda PedidoVendaBean.pedidoVenda;
    
    private List<PedidoVenda> PedidoVendaBean.allPedidoVendas;
    
    private boolean PedidoVendaBean.dataVisible = false;
    
    private List<String> PedidoVendaBean.columns;
    
    private HtmlPanelGrid PedidoVendaBean.createPanelGrid;
    
    private HtmlPanelGrid PedidoVendaBean.editPanelGrid;
    
    private HtmlPanelGrid PedidoVendaBean.viewPanelGrid;
    
    private boolean PedidoVendaBean.createDialogVisible = false;
    
    private List<Item> PedidoVendaBean.selectedItens;
    
    private List<Pagamento> PedidoVendaBean.selectedPagamentos;
    
    private List<FormaPagamento> PedidoVendaBean.selectedFormapagamento;
    
    @PostConstruct
    public void PedidoVendaBean.init() {
        columns = new ArrayList<String>();
        columns.add("datavenda");
    }
    
    public String PedidoVendaBean.getName() {
        return name;
    }
    
    public List<String> PedidoVendaBean.getColumns() {
        return columns;
    }
    
    public List<PedidoVenda> PedidoVendaBean.getAllPedidoVendas() {
        return allPedidoVendas;
    }
    
    public void PedidoVendaBean.setAllPedidoVendas(List<PedidoVenda> allPedidoVendas) {
        this.allPedidoVendas = allPedidoVendas;
    }
    
    public String PedidoVendaBean.findAllPedidoVendas() {
        allPedidoVendas = PedidoVenda.findAllPedidoVendas();
        dataVisible = !allPedidoVendas.isEmpty();
        return null;
    }
    
    public boolean PedidoVendaBean.isDataVisible() {
        return dataVisible;
    }
    
    public void PedidoVendaBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid PedidoVendaBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void PedidoVendaBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid PedidoVendaBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void PedidoVendaBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid PedidoVendaBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void PedidoVendaBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid PedidoVendaBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel itensCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        itensCreateOutput.setFor("itensCreateInput");
        itensCreateOutput.setId("itensCreateOutput");
        itensCreateOutput.setValue("Itens:");
        htmlPanelGrid.getChildren().add(itensCreateOutput);
        
        SelectManyMenu itensCreateInput = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        itensCreateInput.setId("itensCreateInput");
        itensCreateInput.setConverter(new ItemConverter());
        itensCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.selectedItens}", List.class));
        UISelectItems itensCreateInputItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        itensCreateInputItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{itemBean.allItems}", List.class));
        itensCreateInput.setRequired(false);
        itensCreateInputItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "item", String.class));
        itensCreateInputItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{item}", String.class));
        itensCreateInputItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{item}", Item.class));
        itensCreateInput.getChildren().add(itensCreateInputItems);
        htmlPanelGrid.getChildren().add(itensCreateInput);
        
        Message itensCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        itensCreateInputMessage.setId("itensCreateInputMessage");
        itensCreateInputMessage.setFor("itensCreateInput");
        itensCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(itensCreateInputMessage);
        
        OutputLabel pagamentosCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        pagamentosCreateOutput.setFor("pagamentosCreateInput");
        pagamentosCreateOutput.setId("pagamentosCreateOutput");
        pagamentosCreateOutput.setValue("Pagamentos:");
        htmlPanelGrid.getChildren().add(pagamentosCreateOutput);
        
        SelectManyMenu pagamentosCreateInput = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        pagamentosCreateInput.setId("pagamentosCreateInput");
        pagamentosCreateInput.setConverter(new PagamentoConverter());
        pagamentosCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.selectedPagamentos}", List.class));
        UISelectItems pagamentosCreateInputItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        pagamentosCreateInputItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pagamentoBean.allPagamentoes}", List.class));
        pagamentosCreateInput.setRequired(false);
        pagamentosCreateInputItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "pagamento", String.class));
        pagamentosCreateInputItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{pagamento}", String.class));
        pagamentosCreateInputItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{pagamento}", Pagamento.class));
        pagamentosCreateInput.getChildren().add(pagamentosCreateInputItems);
        htmlPanelGrid.getChildren().add(pagamentosCreateInput);
        
        Message pagamentosCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        pagamentosCreateInputMessage.setId("pagamentosCreateInputMessage");
        pagamentosCreateInputMessage.setFor("pagamentosCreateInput");
        pagamentosCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(pagamentosCreateInputMessage);
        
        OutputLabel mesaCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        mesaCreateOutput.setFor("mesaCreateInput");
        mesaCreateOutput.setId("mesaCreateOutput");
        mesaCreateOutput.setValue("Mesa:");
        htmlPanelGrid.getChildren().add(mesaCreateOutput);
        
        AutoComplete mesaCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        mesaCreateInput.setId("mesaCreateInput");
        mesaCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.pedidoVenda.mesa}", Mesa.class));
        mesaCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{pedidoVendaBean.completeMesa}", List.class, new Class[] { String.class }));
        mesaCreateInput.setDropdown(true);
        mesaCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "mesa", String.class));
        mesaCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{mesa.numero} #{mesa.datacriacao} #{mesa.status}", String.class));
        mesaCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{mesa}", Mesa.class));
        mesaCreateInput.setConverter(new MesaConverter());
        mesaCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(mesaCreateInput);
        
        Message mesaCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        mesaCreateInputMessage.setId("mesaCreateInputMessage");
        mesaCreateInputMessage.setFor("mesaCreateInput");
        mesaCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(mesaCreateInputMessage);
        
        OutputLabel formapagamentoCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        formapagamentoCreateOutput.setFor("formapagamentoCreateInput");
        formapagamentoCreateOutput.setId("formapagamentoCreateOutput");
        formapagamentoCreateOutput.setValue("Formapagamento:");
        htmlPanelGrid.getChildren().add(formapagamentoCreateOutput);
        
        SelectManyMenu formapagamentoCreateInput = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        formapagamentoCreateInput.setId("formapagamentoCreateInput");
        formapagamentoCreateInput.setConverter(new FormaPagamentoConverter());
        formapagamentoCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.selectedFormapagamento}", List.class));
        UISelectItems formapagamentoCreateInputItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        formapagamentoCreateInputItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{formaPagamentoBean.allFormaPagamentoes}", List.class));
        formapagamentoCreateInput.setRequired(false);
        formapagamentoCreateInputItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "formaPagamento", String.class));
        formapagamentoCreateInputItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{formaPagamento}", String.class));
        formapagamentoCreateInputItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{formaPagamento}", FormaPagamento.class));
        formapagamentoCreateInput.getChildren().add(formapagamentoCreateInputItems);
        htmlPanelGrid.getChildren().add(formapagamentoCreateInput);
        
        Message formapagamentoCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        formapagamentoCreateInputMessage.setId("formapagamentoCreateInputMessage");
        formapagamentoCreateInputMessage.setFor("formapagamentoCreateInput");
        formapagamentoCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(formapagamentoCreateInputMessage);
        
        OutputLabel datavendaCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        datavendaCreateOutput.setFor("datavendaCreateInput");
        datavendaCreateOutput.setId("datavendaCreateOutput");
        datavendaCreateOutput.setValue("Datavenda:");
        htmlPanelGrid.getChildren().add(datavendaCreateOutput);
        
        Calendar datavendaCreateInput = (Calendar) application.createComponent(Calendar.COMPONENT_TYPE);
        datavendaCreateInput.setId("datavendaCreateInput");
        datavendaCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.pedidoVenda.datavenda}", Date.class));
        datavendaCreateInput.setNavigator(true);
        datavendaCreateInput.setEffect("slideDown");
        datavendaCreateInput.setPattern("dd/MM/yyyy");
        datavendaCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(datavendaCreateInput);
        
        Message datavendaCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        datavendaCreateInputMessage.setId("datavendaCreateInputMessage");
        datavendaCreateInputMessage.setFor("datavendaCreateInput");
        datavendaCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(datavendaCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid PedidoVendaBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel itensEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        itensEditOutput.setFor("itensEditInput");
        itensEditOutput.setId("itensEditOutput");
        itensEditOutput.setValue("Itens:");
        htmlPanelGrid.getChildren().add(itensEditOutput);
        
        SelectManyMenu itensEditInput = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        itensEditInput.setId("itensEditInput");
        itensEditInput.setConverter(new ItemConverter());
        itensEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.selectedItens}", List.class));
        UISelectItems itensEditInputItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        itensEditInputItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{itemBean.allItems}", List.class));
        itensEditInput.setRequired(false);
        itensEditInputItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "item", String.class));
        itensEditInputItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{item}", String.class));
        itensEditInputItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{item}", Item.class));
        itensEditInput.getChildren().add(itensEditInputItems);
        htmlPanelGrid.getChildren().add(itensEditInput);
        
        Message itensEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        itensEditInputMessage.setId("itensEditInputMessage");
        itensEditInputMessage.setFor("itensEditInput");
        itensEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(itensEditInputMessage);
        
        OutputLabel pagamentosEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        pagamentosEditOutput.setFor("pagamentosEditInput");
        pagamentosEditOutput.setId("pagamentosEditOutput");
        pagamentosEditOutput.setValue("Pagamentos:");
        htmlPanelGrid.getChildren().add(pagamentosEditOutput);
        
        SelectManyMenu pagamentosEditInput = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        pagamentosEditInput.setId("pagamentosEditInput");
        pagamentosEditInput.setConverter(new PagamentoConverter());
        pagamentosEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.selectedPagamentos}", List.class));
        UISelectItems pagamentosEditInputItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        pagamentosEditInputItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pagamentoBean.allPagamentoes}", List.class));
        pagamentosEditInput.setRequired(false);
        pagamentosEditInputItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "pagamento", String.class));
        pagamentosEditInputItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{pagamento}", String.class));
        pagamentosEditInputItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{pagamento}", Pagamento.class));
        pagamentosEditInput.getChildren().add(pagamentosEditInputItems);
        htmlPanelGrid.getChildren().add(pagamentosEditInput);
        
        Message pagamentosEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        pagamentosEditInputMessage.setId("pagamentosEditInputMessage");
        pagamentosEditInputMessage.setFor("pagamentosEditInput");
        pagamentosEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(pagamentosEditInputMessage);
        
        OutputLabel mesaEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        mesaEditOutput.setFor("mesaEditInput");
        mesaEditOutput.setId("mesaEditOutput");
        mesaEditOutput.setValue("Mesa:");
        htmlPanelGrid.getChildren().add(mesaEditOutput);
        
        AutoComplete mesaEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        mesaEditInput.setId("mesaEditInput");
        mesaEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.pedidoVenda.mesa}", Mesa.class));
        mesaEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{pedidoVendaBean.completeMesa}", List.class, new Class[] { String.class }));
        mesaEditInput.setDropdown(true);
        mesaEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "mesa", String.class));
        mesaEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{mesa.numero} #{mesa.datacriacao} #{mesa.status}", String.class));
        mesaEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{mesa}", Mesa.class));
        mesaEditInput.setConverter(new MesaConverter());
        mesaEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(mesaEditInput);
        
        Message mesaEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        mesaEditInputMessage.setId("mesaEditInputMessage");
        mesaEditInputMessage.setFor("mesaEditInput");
        mesaEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(mesaEditInputMessage);
        
        OutputLabel formapagamentoEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        formapagamentoEditOutput.setFor("formapagamentoEditInput");
        formapagamentoEditOutput.setId("formapagamentoEditOutput");
        formapagamentoEditOutput.setValue("Formapagamento:");
        htmlPanelGrid.getChildren().add(formapagamentoEditOutput);
        
        SelectManyMenu formapagamentoEditInput = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        formapagamentoEditInput.setId("formapagamentoEditInput");
        formapagamentoEditInput.setConverter(new FormaPagamentoConverter());
        formapagamentoEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.selectedFormapagamento}", List.class));
        UISelectItems formapagamentoEditInputItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        formapagamentoEditInputItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{formaPagamentoBean.allFormaPagamentoes}", List.class));
        formapagamentoEditInput.setRequired(false);
        formapagamentoEditInputItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "formaPagamento", String.class));
        formapagamentoEditInputItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{formaPagamento}", String.class));
        formapagamentoEditInputItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{formaPagamento}", FormaPagamento.class));
        formapagamentoEditInput.getChildren().add(formapagamentoEditInputItems);
        htmlPanelGrid.getChildren().add(formapagamentoEditInput);
        
        Message formapagamentoEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        formapagamentoEditInputMessage.setId("formapagamentoEditInputMessage");
        formapagamentoEditInputMessage.setFor("formapagamentoEditInput");
        formapagamentoEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(formapagamentoEditInputMessage);
        
        OutputLabel datavendaEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        datavendaEditOutput.setFor("datavendaEditInput");
        datavendaEditOutput.setId("datavendaEditOutput");
        datavendaEditOutput.setValue("Datavenda:");
        htmlPanelGrid.getChildren().add(datavendaEditOutput);
        
        Calendar datavendaEditInput = (Calendar) application.createComponent(Calendar.COMPONENT_TYPE);
        datavendaEditInput.setId("datavendaEditInput");
        datavendaEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.pedidoVenda.datavenda}", Date.class));
        datavendaEditInput.setNavigator(true);
        datavendaEditInput.setEffect("slideDown");
        datavendaEditInput.setPattern("dd/MM/yyyy");
        datavendaEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(datavendaEditInput);
        
        Message datavendaEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        datavendaEditInputMessage.setId("datavendaEditInputMessage");
        datavendaEditInputMessage.setFor("datavendaEditInput");
        datavendaEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(datavendaEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid PedidoVendaBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText itensLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        itensLabel.setId("itensLabel");
        itensLabel.setValue("Itens:");
        htmlPanelGrid.getChildren().add(itensLabel);
        
        SelectManyMenu itensValue = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        itensValue.setId("itensValue");
        itensValue.setConverter(new ItemConverter());
        itensValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.selectedItens}", List.class));
        UISelectItems itensValueItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        itensValue.setReadonly(true);
        itensValue.setDisabled(true);
        itensValueItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.pedidoVenda.itens}", Set.class));
        itensValueItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "item", String.class));
        itensValueItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{item}", String.class));
        itensValueItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{item}", Item.class));
        itensValue.getChildren().add(itensValueItems);
        htmlPanelGrid.getChildren().add(itensValue);
        
        HtmlOutputText pagamentosLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        pagamentosLabel.setId("pagamentosLabel");
        pagamentosLabel.setValue("Pagamentos:");
        htmlPanelGrid.getChildren().add(pagamentosLabel);
        
        SelectManyMenu pagamentosValue = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        pagamentosValue.setId("pagamentosValue");
        pagamentosValue.setConverter(new PagamentoConverter());
        pagamentosValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.selectedPagamentos}", List.class));
        UISelectItems pagamentosValueItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        pagamentosValue.setReadonly(true);
        pagamentosValue.setDisabled(true);
        pagamentosValueItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.pedidoVenda.pagamentos}", Set.class));
        pagamentosValueItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "pagamento", String.class));
        pagamentosValueItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{pagamento}", String.class));
        pagamentosValueItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{pagamento}", Pagamento.class));
        pagamentosValue.getChildren().add(pagamentosValueItems);
        htmlPanelGrid.getChildren().add(pagamentosValue);
        
        HtmlOutputText mesaLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        mesaLabel.setId("mesaLabel");
        mesaLabel.setValue("Mesa:");
        htmlPanelGrid.getChildren().add(mesaLabel);
        
        HtmlOutputText mesaValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        mesaValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.pedidoVenda.mesa}", Mesa.class));
        mesaValue.setConverter(new MesaConverter());
        htmlPanelGrid.getChildren().add(mesaValue);
        
        HtmlOutputText formapagamentoLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        formapagamentoLabel.setId("formapagamentoLabel");
        formapagamentoLabel.setValue("Formapagamento:");
        htmlPanelGrid.getChildren().add(formapagamentoLabel);
        
        SelectManyMenu formapagamentoValue = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        formapagamentoValue.setId("formapagamentoValue");
        formapagamentoValue.setConverter(new FormaPagamentoConverter());
        formapagamentoValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.selectedFormapagamento}", List.class));
        UISelectItems formapagamentoValueItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        formapagamentoValue.setReadonly(true);
        formapagamentoValue.setDisabled(true);
        formapagamentoValueItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.pedidoVenda.formapagamento}", Set.class));
        formapagamentoValueItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "formaPagamento", String.class));
        formapagamentoValueItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{formaPagamento}", String.class));
        formapagamentoValueItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{formaPagamento}", FormaPagamento.class));
        formapagamentoValue.getChildren().add(formapagamentoValueItems);
        htmlPanelGrid.getChildren().add(formapagamentoValue);
        
        HtmlOutputText datavendaLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        datavendaLabel.setId("datavendaLabel");
        datavendaLabel.setValue("Datavenda:");
        htmlPanelGrid.getChildren().add(datavendaLabel);
        
        HtmlOutputText datavendaValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        datavendaValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{pedidoVendaBean.pedidoVenda.datavenda}", Date.class));
        DateTimeConverter datavendaValueConverter = (DateTimeConverter) application.createConverter(DateTimeConverter.CONVERTER_ID);
        datavendaValueConverter.setPattern("dd/MM/yyyy");
        datavendaValue.setConverter(datavendaValueConverter);
        htmlPanelGrid.getChildren().add(datavendaValue);
        
        return htmlPanelGrid;
    }
    
    public PedidoVenda PedidoVendaBean.getPedidoVenda() {
        if (pedidoVenda == null) {
            pedidoVenda = new PedidoVenda();
        }
        return pedidoVenda;
    }
    
    public void PedidoVendaBean.setPedidoVenda(PedidoVenda pedidoVenda) {
        this.pedidoVenda = pedidoVenda;
    }
    
    public List<Item> PedidoVendaBean.getSelectedItens() {
        return selectedItens;
    }
    
    public void PedidoVendaBean.setSelectedItens(List<Item> selectedItens) {
        if (selectedItens != null) {
            pedidoVenda.setItens(new HashSet<Item>(selectedItens));
        }
        this.selectedItens = selectedItens;
    }
    
    public List<Pagamento> PedidoVendaBean.getSelectedPagamentos() {
        return selectedPagamentos;
    }
    
    public void PedidoVendaBean.setSelectedPagamentos(List<Pagamento> selectedPagamentos) {
        if (selectedPagamentos != null) {
            pedidoVenda.setPagamentos(new HashSet<Pagamento>(selectedPagamentos));
        }
        this.selectedPagamentos = selectedPagamentos;
    }
    
    public List<Mesa> PedidoVendaBean.completeMesa(String query) {
        List<Mesa> suggestions = new ArrayList<Mesa>();
        for (Mesa mesa : Mesa.findAllMesas()) {
            String mesaStr = String.valueOf(mesa.getNumero() +  " "  + mesa.getDatacriacao() +  " "  + mesa.getStatus());
            if (mesaStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(mesa);
            }
        }
        return suggestions;
    }
    
    public List<FormaPagamento> PedidoVendaBean.getSelectedFormapagamento() {
        return selectedFormapagamento;
    }
    
    public void PedidoVendaBean.setSelectedFormapagamento(List<FormaPagamento> selectedFormapagamento) {
        if (selectedFormapagamento != null) {
            pedidoVenda.setFormapagamento(new HashSet<FormaPagamento>(selectedFormapagamento));
        }
        this.selectedFormapagamento = selectedFormapagamento;
    }
    
    public String PedidoVendaBean.onEdit() {
        if (pedidoVenda != null && pedidoVenda.getItens() != null) {
            selectedItens = new ArrayList<Item>(pedidoVenda.getItens());
        }
        if (pedidoVenda != null && pedidoVenda.getPagamentos() != null) {
            selectedPagamentos = new ArrayList<Pagamento>(pedidoVenda.getPagamentos());
        }
        if (pedidoVenda != null && pedidoVenda.getFormapagamento() != null) {
            selectedFormapagamento = new ArrayList<FormaPagamento>(pedidoVenda.getFormapagamento());
        }
        return null;
    }
    
    public boolean PedidoVendaBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void PedidoVendaBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String PedidoVendaBean.displayList() {
        createDialogVisible = false;
        findAllPedidoVendas();
        return "pedidoVenda";
    }
    
    public String PedidoVendaBean.displayCreateDialog() {
        pedidoVenda = new PedidoVenda();
        createDialogVisible = true;
        return "pedidoVenda";
    }
    
    public String PedidoVendaBean.persist() {
        String message = "";
        if (pedidoVenda.getId() != null) {
            pedidoVenda.merge();
            message = "message_successfully_updated";
        } else {
            pedidoVenda.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "PedidoVenda");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllPedidoVendas();
    }
    
    public String PedidoVendaBean.delete() {
        pedidoVenda.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "PedidoVenda");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllPedidoVendas();
    }
    
    public void PedidoVendaBean.reset() {
        pedidoVenda = null;
        selectedItens = null;
        selectedPagamentos = null;
        selectedFormapagamento = null;
        createDialogVisible = false;
    }
    
    public void PedidoVendaBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
