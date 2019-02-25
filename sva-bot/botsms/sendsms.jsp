<%@page import="com.twilio.type.PhoneNumber"%>
<%@page import="com.twilio.rest.api.v2010.account.Message"%>
<%@page import="com.twilio.Twilio"%>
<%@ page language="java" contentType="text/html"%>
<%
	String msisdn = "+91"+request.getParameter("msisdn");
	String ACCOUNT_SID = "ACb8c031280aa52007cc6272ef41db00fc";
	String AUTH_TOKEN = "2fedc431984d3b8e8d9a1e2b06af71f9";
	Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

	Message message = Message.creator(new PhoneNumber(msisdn),
			        new PhoneNumber("+14065455008 "), 
			        "Enter 1234 to authenticate your self").create();
		   out.print(message.getSid());
%>
