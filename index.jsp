
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file = "components/head_links" %>
</head>

<body>
    <%@ include file = "components/data_variables" %>

    <!-- Spinner Start -->
    <%@ include file = "components/spinner" %>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <%@ include file = "components/topbar" %>
    <!-- Topbar End -->


    <!-- Navbar & Carousel Start -->
    <div class="container-fluid position-relative p-0">
        <%@ include file = "components/navbar" %>
        <%@ include file = "components/header_carousal" %>
        
    </div>
    <!-- Navbar & Carousel End -->


    <!-- Full Screen Search Start -->
    <%@ include file = "components/login_modal" %>
    <!-- Full Screen Search End -->


    <!-- Facts Start -->
    <%@ include file = "components/facts" %>
    <!-- Facts Start -->


    <!-- About Start -->
    <%@ include file = "components/about" %>
    <!-- About End -->


    <!-- Features Start -->
    <%@ include file = "components/features" %>
    <!-- Features Start -->


    <!-- Service Start -->
    <%@ include file = "components/service" %>
    <!-- Service End -->


    <!-- Pricing Plan Start -->    
    <!-- Pricing Plan End -->


    <!-- Quote Start -->
    <!-- Quote End -->


    <!-- Testimonial Start -->
    <!-- Testimonial End -->


    <!-- Team Start -->
    <%@ include file = "components/team" %>
    <!-- Team End -->


    <!-- Blog Start -->
    <!-- Blog Start -->


    <!-- Vendor Start -->
    <%@ include file = "components/vendor" %>
    <!-- Vendor End -->
    

    <!-- Footer Start -->
    <%@ include file = "components/footer" %>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>

    <%@ include file = "components/lib_scripts" %>
    <script src="js/login_script.js"></script>

</body>

</html>