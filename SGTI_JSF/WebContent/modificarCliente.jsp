<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>



<f:view>
	<f:subview id="header">
		<%@include file="header.jsp"%>
	</f:subview>
	<h:form>
		<h1>Modificar Cliente</h1>
		<table>
			<tr>
				<td><h:outputText> Cedula o RUT del Cliente </h:outputText>
				</td>
				<td><h:inputText id="cedrut" value="#{ClienteBean.cedRut}"
						required="true"></h:inputText>
				</td>
				<td><h:commandButton value="Aceptar"
						action="#{ClienteBean.buscarCliente}"></h:commandButton>
				</td>
			</tr>
		</table>
	</h:form>

	<h:form>
		<table border="1">
			<tr>
				<th>C�dula / RUT: </th>
				<th><h:inputText value="#{ClienteBean.cedRut}"></h:inputText></th>
			</tr>
			<tr>
				<th>Nombre Completo / Raz�n Social:</th>
				<td><h:inputText value="#{ClienteBean.nombreRazSocial}"></h:inputText>
				</td>
			</tr>
			<tr>
				<th>Tel�fono</th>
				<th><h:inputText value="#{ClienteBean.telefono}"></h:inputText></th>
			</tr>
			<tr>
				<th>Fecha fin de Garantia</th>
				<th><h:inputText value="#{ClienteBean.fechaFinGarantia}"><f:convertDateTime type="date"/></h:inputText></th> 
			</tr> 
			<tr>
				<td><h:commandButton value="Aceptar"
						action="#{ClienteBean.modificarCliente}"></h:commandButton></td>
			</tr>
		</table>
	</h:form>


</f:view>
</body>
</html>



