<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title>Επεξεργασία Στοιχείων</title>
    </head>
    <body>
        <a href="#edit-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Αρχική</a></li>
                <li><g:link class="list" action="index">Λίστα Εργαζομένων</g:link></li>
                <li><g:link class="create" action="create">Δημιουργία </g:link></li>
            </ul>
        </div>
        <div id="edit-employee" class="content scaffold-edit" role="main">
            <h1>Επεξεργασία Στοιχείων</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.employee}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.employee}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.employee}" method="PUT">
                <g:hiddenField name="version" value="${this.employee?.version}" />
                <fieldset class="form">
                    <f:field bean="employee" property="first_name" label="Όνομα" />
                    <f:field bean="employee" property="last_name" label="Επίθετο" />
                    <f:field bean="employee" property="date_of_birth" label="Ημερομηνία Γέννησης" />
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
