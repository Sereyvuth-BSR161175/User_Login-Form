<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="model.User"%> 
<html>

    <head>
        <title>User Management Application</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>

        <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="#" class="navbar-brand"> User Management App </a>
                </div>

                <ul class="navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
                </ul>
            </nav>
        </header>
        <br>
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    <%
                        User user = (User) request.getAttribute("user");
                        if (user != null) {
                    %>
                    <form action="update" method="post">
                        <%}%>
                        <%
                            if (user == null) {
                        %>
                        <form action="insert" method="post">
                            <%}%>

                            <caption>

                                <h2>
                                    <% if (user != null) {%>
                                    Edit User

                                    <% }%>

                                    <%if (user == null) {%>
                                    Add New User
                                    <%}%>
                                </h2>
                            </caption>

                            <% if (user != null) {%>
                            <input type="hidden" name="id" value="<%=user.getId()%>" />
                            <fieldset class="form-group">
                                <label>User Name</label> <input type="text" value="<%=user.getUsername()%>" class="form-control" name="username" required="required">
                            </fieldset>

                            <fieldset class="form-group">
                                <label>User Email</label> <input type="text" value="<%=user.getEmail()%>" class="form-control" name="email">
                            </fieldset>

                            <fieldset class="form-group">
                                <label>User Address</label> <input type="text" value="<%=user.getAddress()%>" class="form-control" name="address">
                            </fieldset>
                            <%}%>

                            <% if (user == null) {%>
                            <fieldset class="form-group">
                                <label>User Name</label> <input type="text" class="form-control" name="username" required="required">
                            </fieldset>

                            <fieldset class="form-group">
                                <label>Password</label> <input type="text" class="form-control" name="password" required="required">
                            </fieldset>

                            <fieldset class="form-group">
                                <label>User Email</label> <input type="text"  class="form-control" name="email">
                            </fieldset>

                            <fieldset class="form-group">
                                <label>User Address</label> <input type="text"  class="form-control" name="address">
                            </fieldset>
                            <%}%>
                            <button type="submit" class="btn btn-success">Save</button>
                        </form>
                </div>
            </div>
        </div>
    </body>

</html>