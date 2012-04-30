

<%@ page import="assignment_3.Student" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
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
            <g:hasErrors bean="${studentInstance}">
            <div class="errors">
                <g:renderErrors bean="${studentInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${studentInstance?.id}" />
                <g:hiddenField name="version" value="${studentInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="applications"><g:message code="student.applications.label" default="Applications" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'applications', 'errors')}">
                                    <g:textField name="applications" value="${studentInstance?.applications}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="courseCode"><g:message code="student.courseCode.label" default="Course Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'courseCode', 'errors')}">
                                    <g:textField name="courseCode" value="${studentInstance?.courseCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="student.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${studentInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="notes"><g:message code="student.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" value="${studentInstance?.notes}" />
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
