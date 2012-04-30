
<%@ page import="assignment_3.Application" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'application.label', default: 'Application')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'application.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="status" title="${message(code: 'application.status.label', default: 'Status')}" />
                        
                            <g:sortableColumn property="student" title="${message(code: 'application.student.label', default: 'Student')}" />
                        
                            <g:sortableColumn property="timeStamp" title="${message(code: 'application.timeStamp.label', default: 'Time Stamp')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${applicationInstanceList}" status="i" var="applicationInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${applicationInstance.id}">${fieldValue(bean: applicationInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: applicationInstance, field: "status")}</td>
                        
                            <td>${fieldValue(bean: applicationInstance, field: "student")}</td>
                        
                            <td>${fieldValue(bean: applicationInstance, field: "timeStamp")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${applicationInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
