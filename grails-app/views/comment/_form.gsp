<%@ page import="au.com.companyadvice.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'summary', 'error')} required">
	<label for="summary">
		<g:message code="comment.summary.label" default="Summary" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="summary" maxlength="200" required="" value="${commentInstance?.summary}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'pros', 'error')} required">
	<label for="pros">
		<g:message code="comment.pros.label" default="Pros" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="pros" cols="40" rows="5" maxlength="2000" required="" value="${commentInstance?.pros}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'cons', 'error')} required">
	<label for="cons">
		<g:message code="comment.cons.label" default="Cons" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="cons" cols="40" rows="5" maxlength="2000" required="" value="${commentInstance?.cons}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'advice', 'error')} ">
	<label for="advice">
		<g:message code="comment.advice.label" default="Advice" />
		
	</label>
	<g:textField name="advice" value="${commentInstance?.advice}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'isApproved', 'error')} ">
	<label for="isApproved">
		<g:message code="comment.isApproved.label" default="Is Approved" />
		
	</label>
	<g:checkBox name="isApproved" value="${commentInstance?.isApproved}" />
</div>

