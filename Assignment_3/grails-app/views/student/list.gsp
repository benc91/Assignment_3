
<%@ page import="assignment_3.Student" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'student.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="applications" title="${message(code: 'student.applications.label', default: 'Applications')}" />
                        
                            <g:sortableColumn property="courseCode" title="${message(code: 'student.courseCode.label', default: 'Course Code')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'student.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="notes" title="${message(code: 'student.notes.label', default: 'Notes')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${studentInstanceList}" status="i" var="studentInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: studentInstance, field: "applications")}</td>
                        
                            <td>${fieldValue(bean: studentInstance, field: "courseCode")}</td>
                        
                            <td>${fieldValue(bean: studentInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: studentInstance, field: "notes")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${studentInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
