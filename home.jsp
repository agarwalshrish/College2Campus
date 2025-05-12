<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file = "components/head_links" %>
</head>

<body>
    <%@ include file = "components/data_variables" %>
    <%
        session_u_name = (String) session.getAttribute("u_name");
        session_u_role = (String) session.getAttribute("u_role");
        session_u_login = (String) session.getAttribute("u_login");
    %>
    <div id="userPage" data-userid="<%= session_u_name %>"></div>
    <!-- Spinner Start -->
    <%@ include file = "components/spinner" %>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <%@ include file = "components/topbar" %>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid position-relative p-0">
        <%@ include file = "components/navbar" %>

        <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
            <div class="row py-5">
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-4 text-white animated zoomIn">Welcome</h1>
                    <a href="" class="h5 text-white">DASHBOARD</a>
                    <i class="far fa-circle text-white px-2"></i>
                    <a href="" class="h5 text-white"><%= session_u_role %></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar End -->


    <!-- Full Screen Search Start --> 
    <!-- Full Screen Search End -->


    <!-- Dashboard Start -->
    <% if (session_u_role.equals("ADMIN")) { %>
    <%@ include file = "components/dashboard_admin" %>
    <%@ include file = "components/modals_admin" %>
    <% } %>
    <% if (session_u_role.equals("COLLEGE")) { %>
    <%@ include file = "components/dashboard_college" %>
    <%@ include file = "components/modals_college" %>
    <% } %>
    <% if (session_u_role.equals("TPO")) { %>
    <%@ include file = "components/dashboard_tpo" %>
    <%@ include file = "components/modals_tpo" %>
    <% } %>
    <% if (session_u_role.equals("STUDENT")) { %>
    <%@ include file = "components/dashboard_student" %>
    <%@ include file = "components/modals_student" %>
    <% } %>
    <% if (session_u_role.equals("INDUSTRY")) { %>
    <%@ include file = "components/dashboard_industry" %>
    <%@ include file = "components/modals_industry" %>
    <% } %>
    <!-- Dashboard End -->


    <!-- Vendor Start -->
    <%@ include file = "components/vendor" %>
    <!-- Vendor End -->
    

    <!-- Footer Start -->
    <%@ include file = "components/footer" %>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


    <%@ include file = "components/lib_scripts" %>
    <script src="js/session_validate.js"></script>
    
    <% if (session_u_role.equals("ADMIN")) { %>
        <script src="js/dashboard_admin.js"></script>
    <% } %>
    <% if (session_u_role.equals("COLLEGE")) { %>
        <script src="js/dashboard_college.js"></script>
    <% } %>
    <% if (session_u_role.equals("TPO")) { %>
        <script src="js/dashboard_tpo.js"></script>
    <% } %>
    <% if (session_u_role.equals("STUDENT")) { %>
        <script src="js/dashboard_student.js"></script>
    <% } %>
    <% if (session_u_role.equals("INDUSTRY")) { %>
        <script src="js/dashboard_industry.js"></script>
    <% } %>
</body>

</html>