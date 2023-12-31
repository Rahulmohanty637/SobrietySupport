<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="Model.Program"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Available Programs</h1>
    <table border="1">
    <thead>
        <tr>
            <th>Program ID</th>
            <th>Program Name</th>
            <th>Patient ID</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <%
        List<Program> enrolledPrograms = (List<Program>) request.getAttribute("programs");
        if (enrolledPrograms != null && !enrolledPrograms.isEmpty()) {
            for (Program program : enrolledPrograms) {
        %>
        <tr>
            <td><%= program.getProgram_id() %></td>
            <td><%= program.getProgram_name() %></td>
            <td>
                <form action="EnrollInProgramServlet" method="post">
                    <input type="hidden" name="programId" value="<%= program.getProgram_id() %>">
                    <input type="text" id="patientId" name="patientId" required>
                </td>
                <td>
                    <input type="submit" value="Enroll">
                </form>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="4">You are not enrolled in any programs.</td>
        </tr>
        <%
        }
        %>
    </tbody>
</table>

</body>
</html>