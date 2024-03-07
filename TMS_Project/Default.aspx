<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TMS_Project.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center">
    <div id="heroCarousel" class="container carousel carousel-fade" data-ride="carousel">

      <!-- Slide 1 -->
      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Welcome to <span></span></h2>
          <p class="animate__animated animate__fadeInUp">We believe in improving school management through service and technology, and we’ve never lost sight of our goal — to help schools, administrators, teachers, and families solve the unique challenges they face.</p>
          <a href="" class="btn-get-started animate__animated animate__fadeInUp">Read More</a>
        </div>
      </div>

      <!-- Slide 2 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Smart Tuition is now Blackbaud Tuition Management</h2>
          <p class="animate__animated animate__fadeInUp">We believe in improving school management through service and technology, and we’ve never lost sight of our goal — to help schools, administrators, teachers, and families solve the unique challenges they face.</p>
          <a href="" class="btn-get-started animate__animated animate__fadeInUp">Read More</a>
        </div>
      </div>

      <!-- Slide 3 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Benifits of Your Tuition</h2>
          <p class="animate__animated animate__fadeInUp">We believe in improving school management through service and technology, and we’ve never lost sight of our goal — to help schools, administrators, teachers, and families solve the unique challenges they face.</p>
          <a href="" class="btn-get-started animate__animated animate__fadeInUp">Read More</a>
        </div>
      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>
  </section><!-- End Hero -->




     <!-- ======= Services Section ======= -->
    <section class="services">
      <div class="container">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box icon-box-pink">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4 class="title"><a href="">Additional Services</a></h4>
              <p class="description">Beyond the best practice recommendations and guidance we give every Client, ISTS can also provide in-depth, strategic consultation sessions.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-cyan">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="">Career & Financial Coaching</a></h4>
              <p class="description">Through relationships with trusted partners, ISTS offers Clients the opportunity to enhance their program with career development coaching</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-green">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4 class="title"><a href="">FACTS Tuition Management</a></h4>
              <p class="description">Tuition payments are at the heart of your school’s operation. Yet it’s all too easy for tuition management to become someone’s full-time job,</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-blue">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4 class="title"><a href="">Student Support</a></h4>
              <p class="description">Whether you’re a traditional college student or an adult learner taking advantage of a tuition reimbursement benefit</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Why Us Section ======= -->
    <section class="why-us section-bg" data-aos="fade-up" date-aos-delay="200">
      <div class="container">

        <div class="row">
          <div class="col-lg-6 video-box">
            <img src="assets/img/why-us.jpg" class="img-fluid" alt="">
            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-lg-6 d-flex flex-column justify-content-center p-5">

            <div class="icon-box">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
              <h4 class="title"><a href="">Tuition Management Webinar Sign Up</a></h4>
              <p class="description">Take an in-depth look at how FACTS secures and simplifies payments for your school with Tuition Management. Learn more about payment options for families, dashboard reporting, and securing family data.</p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-gift"></i></div>
              <h4 class="title"><a href="">Grant & Aid for Organizations</a></h4>
              <p class="description">Scholarship granting organizations like yours can empower students and families to pursue private education.</p>
            </div>

          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Features Section ======= -->
    <section class="features">
      <div class="container">

        <div class="section-title">
          <h2>Features</h2>
            <p>The benefits of using tuition management software include reducing paperwork, providing electronic payment choices, saving costs, improving transparency and communication, and offering convenience and flexibility for students and families</p>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="assets/img/features-1.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-4">
            <h3>Our Financial Management Solutions</h3>
            <p class="font-italic">
             Provide flexible tuition payment plans to parents and simplify payment tracking and management for your school with FACTS Tuition Management.
            </p>
            <ul>
              <li><i class="icofont-check"></i>Incidental Billing & Prepay Accounts</li>
              <li><i class="icofont-check"></i> Advanced Accounting And Payments.</li>
            </ul>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="assets/img/features-2.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3>Student Information System</h3>
            <p class="font-italic">
             Improve the way your school manages information, automates processes, and communicates with families.
            </p>
            <p>
              App is a school-branded mobile app that allows your school community to access school information, grades, schedules, announcements, registration forms, fundraising pages, & more.
            </p>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="assets/img/features-3.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5">
            <h3>Expert Bar UpdateYou asked, we listened!</h3>
            <p>Many attendees have mentioned struggling to choose between visiting our popular Expert Bar and attending sessions, so we’ve decided to make it so that you can easily do both</p>
            <ul>
              <li><i class="icofont-check"></i>What to Expect at Elevate.</li>
              <li><i class="icofont-check"></i>New Session Types</li>
              <li><i class="icofont-check"></i>Exhibitor Reception.</li>
            </ul>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="assets/img/features-4.svg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3>Dan Hughes Named as FACTS National Sales Director</h3>
            <p class="font-italic">
          LINCOLN, Neb., June 1, 2022 – FACTS, a division of Nelnet, Inc. (NYSE: NNI), today announced the appointment of Dan Hughes as national sales director, K–12, effective June 1.
            </p>
            <p>
             LINCOLN, Neb., June 29, 2022 – FACTS, a division of Nelnet, Inc. (NYSE: NNI),
             announces its partnership with Pikmykid, the premier school safety dismissal platform, to make it easy for schools
             to implement their school safety solution quickly.
            </p>
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->




</asp:Content>
