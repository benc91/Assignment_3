
<%@ page import="assignment_3.PlacementOpportunities" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'placementOpportunities.label', default: 'PlacementOpportunities')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'placementOpportunities.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="applications" title="${message(code: 'placementOpportunities.applications.label', default: 'Applications')}" />
                        
                            <g:sortableColumn property="companyName" title="${message(code: 'placementOpportunities.companyName.label', default: 'Company Name')}" />
                        
                            <g:sortableColumn property="jobTitle" title="${message(code: 'placementOpportunities.jobTitle.label', default: 'Job Title')}" />
                        
                            <g:sortableColumn property="status" title="${message(code: 'placementOpportunities.status.label', default: 'Status')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${placementOpportunitiesInstanceList}" status="i" var="placementOpportunitiesInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${placementOpportunitiesInstance.id}">${fieldValue(bean: placementOpportunitiesInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: placementOpportunitiesInstance, field: "applications")}</td>
                        
                            <td>${fieldValue(bean: placementOpportunitiesInstance, field: "companyName")}</td>
                        
                            <td>${fieldValue(bean: placementOpportunitiesInstance, field: "jobTitle")}</td>
                        
                            <td>${fieldValue(bean: placementOpportunitiesInstance, field: "status")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${placementOpportunitiesInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
