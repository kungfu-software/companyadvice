
<%@ page import="au.com.companyadvice.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-company" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list company">
			
				<g:if test="${companyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="company.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${companyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="company.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${companyInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.headCount}">
				<li class="fieldcontain">
					<span id="headCount-label" class="property-label"><g:message code="company.headCount.label" default="Head Count" /></span>
					
						<span class="property-value" aria-labelledby="headCount-label"><g:fieldValue bean="${companyInstance}" field="headCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.freeComments}">
				<li class="fieldcontain">
					<span id="freeComments-label" class="property-label"><g:message code="company.freeComments.label" default="Free Comments" /></span>
					
						<g:each in="${companyInstance.freeComments}" var="f">
						<span class="property-value" aria-labelledby="freeComments-label"><g:link controller="comment" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.latitidue}">
				<li class="fieldcontain">
					<span id="latitidue-label" class="property-label"><g:message code="company.latitidue.label" default="Latitidue" /></span>
					
						<span class="property-value" aria-labelledby="latitidue-label"><g:fieldValue bean="${companyInstance}" field="latitidue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.longtitude}">
				<li class="fieldcontain">
					<span id="longtitude-label" class="property-label"><g:message code="company.longtitude.label" default="Longtitude" /></span>
					
						<span class="property-value" aria-labelledby="longtitude-label"><g:fieldValue bean="${companyInstance}" field="longtitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.reviews}">
				<li class="fieldcontain">
					<span id="reviews-label" class="property-label"><g:message code="company.reviews.label" default="Reviews" /></span>
					
						<g:each in="${companyInstance.reviews}" var="r">
						<span class="property-value" aria-labelledby="reviews-label"><g:link controller="review" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${companyInstance?.id}" />
					<g:link class="edit" action="edit" id="${companyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
