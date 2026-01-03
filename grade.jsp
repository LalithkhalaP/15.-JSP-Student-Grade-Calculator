<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Grade Calculator</title>
</head>
<body>
    <h2>Student Grade Calculator</h2>

    <form method="post" action="grade.jsp">
        Enter Marks: <input type="text" name="marks"><br><br>
        <input type="submit" value="Calculate Grade">
    </form>

    <%
        String m = request.getParameter("marks");

        if (m != null && !m.isEmpty()) {
            try {
                int marks = Integer.parseInt(m);
                String grade;

                if (marks >= 75) {
                    grade = "A";
                } else if (marks >= 50) {
                    grade = "B";
                } else {
                    grade = "C";
                }

                out.println("Marks: " + marks + "<br>");
                out.println("Grade: " + grade + "<br>");
            } catch (NumberFormatException e) {
                out.println("Please enter a valid number for marks.");
            }
        }
    %>
</body>
</html>
