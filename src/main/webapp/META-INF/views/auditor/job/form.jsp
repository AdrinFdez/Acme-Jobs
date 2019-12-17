<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
<acme:form-integer code="auditor.job.form.label.referenceNumber" path="referenceNumber"/>
<acme:form-textbox code="auditor.job.form.label.status" path="status"/>
<acme:form-textbox code="auditor.job.form.label.title" path="title"/>
<acme:form-moment code="auditor.job.form.label.deadline" path="deadline"/>
<acme:form-double code="auditor.job.form.label.salary" path="salary"/>
<acme:form-textbox code="auditor.job.form.label.moreInfo" path="moreInfo"/>
<acme:form-textarea code="auditor.job.form.label.description" path="description"/>
</acme:form>

<a href = /acme-jobs/auditor/duty/list?idJob=<jstl:out value="${id}"></jstl:out>>
<acme:message code="employer.job.message.duties"/>
</a>
</br>
<a href = /acme-jobs/authenticated/audit-record/list?idJob=<jstl:out value="${id}"></jstl:out>>
<acme:message code="auditor.job.message.audit-record"/>
</a>



<acme:form-submit  test ="${command != 'create'}"  
	code="auditor.job.form.button.create.auditRecord"
	method="get"
	action= "/auditor/auditRecord/create?idJob=${id}"
/>


<acme:form>
<acme:form-return code="auditor.job.form.button.return"/>
</acme:form>