<%@ page import="com.sfeir.security.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="member.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${memberInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="member.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${memberInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="member.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${memberInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="member.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${memberInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'courts', 'error')} ">
	<label for="courts">
		<g:message code="member.courts.label" default="Courts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${memberInstance?.courts?}" var="c">
    <li><g:link controller="court" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="court" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'court.label', default: 'Court')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="member.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${memberInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="member.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${memberInstance?.passwordExpired}" />
</div>

