
<%@ page import="au.com.companyadvice.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-review" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list review">
			
				<g:if test="${reviewInstance?.seniorManagement}">
				<li class="fieldcontain">
					<span id="seniorManagement-label" class="property-label"><g:message code="review.seniorManagement.label" default="Senior Management" /></span>
					
						<span class="property-value" aria-labelledby="seniorManagement-label"><g:fieldValue bean="${reviewInstance}" field="seniorManagement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.cultureAndValues}">
				<li class="fieldcontain">
					<span id="cultureAndValues-label" class="property-label"><g:message code="review.cultureAndValues.label" default="Culture And Values" /></span>
					
						<span class="property-value" aria-labelledby="cultureAndValues-label"><g:fieldValue bean="${reviewInstance}" field="cultureAndValues"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.salaryAndBenifits}">
				<li class="fieldcontain">
					<span id="salaryAndBenifits-label" class="property-label"><g:message code="review.salaryAndBenifits.label" default="Salary And Benifits" /></span>
					
						<span class="property-value" aria-labelledby="salaryAndBenifits-label"><g:fieldValue bean="${reviewInstance}" field="salaryAndBenifits"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.careerOps}">
				<li class="fieldcontain">
					<span id="careerOps-label" class="property-label"><g:message code="review.careerOps.label" default="Career Ops" /></span>
					
						<span class="property-value" aria-labelledby="careerOps-label"><g:fieldValue bean="${reviewInstance}" field="careerOps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.workLifeBalance}">
				<li class="fieldcontain">
					<span id="workLifeBalance-label" class="property-label"><g:message code="review.workLifeBalance.label" default="Work Life Balance" /></span>
					
						<span class="property-value" aria-labelledby="workLifeBalance-label"><g:fieldValue bean="${reviewInstance}" field="workLifeBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.commet}">
				<li class="fieldcontain">
					<span id="commet-label" class="property-label"><g:message code="review.commet.label" default="Commet" /></span>
					
						<span class="property-value" aria-labelledby="commet-label"><g:link controller="comment" action="show" id="${reviewInstance?.commet?.id}">${reviewInstance?.commet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${reviewInstance?.id}" />
					<g:link class="edit" action="edit" id="${reviewInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
