
<%@ page import="au.com.companyadvice.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-review" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="seniorManagement" title="${message(code: 'review.seniorManagement.label', default: 'Senior Management')}" />
					
						<g:sortableColumn property="cultureAndValues" title="${message(code: 'review.cultureAndValues.label', default: 'Culture And Values')}" />
					
						<g:sortableColumn property="salaryAndBenifits" title="${message(code: 'review.salaryAndBenifits.label', default: 'Salary And Benifits')}" />
					
						<g:sortableColumn property="careerOps" title="${message(code: 'review.careerOps.label', default: 'Career Ops')}" />
					
						<g:sortableColumn property="workLifeBalance" title="${message(code: 'review.workLifeBalance.label', default: 'Work Life Balance')}" />
					
						<th><g:message code="review.commet.label" default="Commet" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reviewInstanceList}" status="i" var="reviewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reviewInstance.id}">${fieldValue(bean: reviewInstance, field: "seniorManagement")}</g:link></td>
					
						<td>${fieldValue(bean: reviewInstance, field: "cultureAndValues")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "salaryAndBenifits")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "careerOps")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "workLifeBalance")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "commet")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reviewInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
