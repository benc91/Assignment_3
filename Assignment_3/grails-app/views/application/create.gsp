

<%@ page import="assignment_3.Application" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'application.label', default: 'Application')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${applicationInstance}">
            <div class="errors">
                <g:renderErrors bean="${applicationInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status"><g:message code="application.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: applicationInstance, field: 'status', 'errors')}">
                                    <g:textField name="status" value="${applicationInstance?.status}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="student"><g:message code="application.student.label" default="Student" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: applicationInstance, field: 'student', 'errors')}">
                                    <g:textField name="student" value="${applicationInstance?.student}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="timeStamp"><g:message code="application.timeStamp.label" default="Time Stamp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: applicationInstance, field: 'timeStamp', 'errors')}">
                                    <g:textField name="timeStamp" value="${applicationInstance?.timeStamp}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
