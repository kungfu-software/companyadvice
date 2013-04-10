
<%@ page import="au.com.companyadvice.Comment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-comment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="summary" title="${message(code: 'comment.summary.label', default: 'Summary')}" />
					
						<g:sortableColumn property="pros" title="${message(code: 'comment.pros.label', default: 'Pros')}" />
					
						<g:sortableColumn property="cons" title="${message(code: 'comment.cons.label', default: 'Cons')}" />
					
						<g:sortableColumn property="advice" title="${message(code: 'comment.advice.label', default: 'Advice')}" />
					
						<g:sortableColumn property="isApproved" title="${message(code: 'comment.isApproved.label', default: 'Is Approved')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commentInstanceList}" status="i" var="commentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commentInstance.id}">${fieldValue(bean: commentInstance, field: "summary")}</g:link></td>
					
						<td>${fieldValue(bean: commentInstance, field: "pros")}</td>
					
						<td>${fieldValue(bean: commentInstance, field: "cons")}</td>
					
						<td>${fieldValue(bean: commentInstance, field: "advice")}</td>
					
						<td><g:formatBoolean boolean="${commentInstance.isApproved}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${commentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
