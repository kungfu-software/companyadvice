<%@ page import="au.com.companyadvice.Review" %>



<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'seniorManagement', 'error')} required">
	<label for="seniorManagement">
		<g:message code="review.seniorManagement.label" default="Senior Management" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="seniorManagement" type="number" min="-2" max="2" value="${reviewInstance.seniorManagement}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'cultureAndValues', 'error')} required">
	<label for="cultureAndValues">
		<g:message code="review.cultureAndValues.label" default="Culture And Values" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cultureAndValues" type="number" min="-2" max="2" value="${reviewInstance.cultureAndValues}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'salaryAndBenifits', 'error')} required">
	<label for="salaryAndBenifits">
		<g:message code="review.salaryAndBenifits.label" default="Salary And Benifits" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salaryAndBenifits" type="number" min="-2" max="2" value="${reviewInstance.salaryAndBenifits}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'careerOps', 'error')} required">
	<label for="careerOps">
		<g:message code="review.careerOps.label" default="Career Ops" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="careerOps" type="number" min="-2" max="2" value="${reviewInstance.careerOps}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'workLifeBalance', 'error')} required">
	<label for="workLifeBalance">
		<g:message code="review.workLifeBalance.label" default="Work Life Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="workLifeBalance" type="number" min="-2" max="2" value="${reviewInstance.workLifeBalance}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'commet', 'error')} required">
	<label for="commet">
		<g:message code="review.commet.label" default="Commet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="commet" name="commet.id" from="${au.com.companyadvice.Comment.list()}" optionKey="id" required="" value="${reviewInstance?.commet?.id}" class="many-to-one"/>
</div>

