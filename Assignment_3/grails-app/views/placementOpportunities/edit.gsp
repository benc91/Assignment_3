

<%@ page import="assignment_3.PlacementOpportunities" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'placementOpportunities.label', default: 'PlacementOpportunities')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${placementOpportunitiesInstance}">
            <div class="errors">
                <g:renderErrors bean="${placementOpportunitiesInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${placementOpportunitiesInstance?.id}" />
                <g:hiddenField name="version" value="${placementOpportunitiesInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="applications"><g:message code="placementOpportunities.applications.label" default="Applications" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: placementOpportunitiesInstance, field: 'applications', 'errors')}">
                                    <g:textField name="applications" value="${placementOpportunitiesInstance?.applications}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="companyName"><g:message code="placementOpportunities.companyName.label" default="Company Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: placementOpportunitiesInstance, field: 'companyName', 'errors')}">
                                    <g:textField name="companyName" value="${placementOpportunitiesInstance?.companyName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="jobTitle"><g:message code="placementOpportunities.jobTitle.label" default="Job Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: placementOpportunitiesInstance, field: 'jobTitle', 'errors')}">
                                    <g:textField name="jobTitle" value="${placementOpportunitiesInstance?.jobTitle}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="status"><g:message code="placementOpportunities.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: placementOpportunitiesInstance, field: 'status', 'errors')}">
                                    <g:textField name="status" value="${placementOpportunitiesInstance?.status}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
