
<%@ page import="au.com.companyadvice.Comment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comment">
			
				<g:if test="${commentInstance?.summary}">
				<li class="fieldcontain">
					<span id="summary-label" class="property-label"><g:message code="comment.summary.label" default="Summary" /></span>
					
						<span class="property-value" aria-labelledby="summary-label"><g:fieldValue bean="${commentInstance}" field="summary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.pros}">
				<li class="fieldcontain">
					<span id="pros-label" class="property-label"><g:message code="comment.pros.label" default="Pros" /></span>
					
						<span class="property-value" aria-labelledby="pros-label"><g:fieldValue bean="${commentInstance}" field="pros"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.cons}">
				<li class="fieldcontain">
					<span id="cons-label" class="property-label"><g:message code="comment.cons.label" default="Cons" /></span>
					
						<span class="property-value" aria-labelledby="cons-label"><g:fieldValue bean="${commentInstance}" field="cons"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.advice}">
				<li class="fieldcontain">
					<span id="advice-label" class="property-label"><g:message code="comment.advice.label" default="Advice" /></span>
					
						<span class="property-value" aria-labelledby="advice-label"><g:fieldValue bean="${commentInstance}" field="advice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.isApproved}">
				<li class="fieldcontain">
					<span id="isApproved-label" class="property-label"><g:message code="comment.isApproved.label" default="Is Approved" /></span>
					
						<span class="property-value" aria-labelledby="isApproved-label"><g:formatBoolean boolean="${commentInstance?.isApproved}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${commentInstance?.id}" />
					<g:link class="edit" action="edit" id="${commentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
