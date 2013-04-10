<%@ page import="au.com.companyadvice.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="company.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="100" required="" value="${companyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'website', 'error')} required">
	<label for="website">
		<g:message code="company.website.label" default="Website" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="website" required="" value="${companyInstance?.website}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'headCount', 'error')} required">
	<label for="headCount">
		<g:message code="company.headCount.label" default="Head Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="headCount" type="number" min="3" value="${companyInstance.headCount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'freeComments', 'error')} ">
	<label for="freeComments">
		<g:message code="company.freeComments.label" default="Free Comments" />
		
	</label>
	<g:select name="freeComments" from="${au.com.companyadvice.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${companyInstance?.freeComments*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'latitidue', 'error')} required">
	<label for="latitidue">
		<g:message code="company.latitidue.label" default="Latitidue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitidue" value="${fieldValue(bean: companyInstance, field: 'latitidue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'longtitude', 'error')} required">
	<label for="longtitude">
		<g:message code="company.longtitude.label" default="Longtitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longtitude" value="${fieldValue(bean: companyInstance, field: 'longtitude')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'reviews', 'error')} ">
	<label for="reviews">
		<g:message code="company.reviews.label" default="Reviews" />
		
	</label>
	<g:select name="reviews" from="${au.com.companyadvice.Review.list()}" multiple="multiple" optionKey="id" size="5" value="${companyInstance?.reviews*.id}" class="many-to-many"/>
</div>

