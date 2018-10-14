        <%@ Page Title="" Language="C#" MasterPageFile="~/basetemplate.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .main-menu li.home a{
            background: #f6783a;
        }
    </style>
    <link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/magnific-popup.css"/>
    <title>Unica - University Template</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Hero section -->
    <asp:Panel ID="Panel11" runat="server" CssClass="hero-section">
        <asp:Panel ID="Panel12" runat="server" CssClass="hero-slider owl-carousel">
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <asp:Panel ID="Header1" runat="server" CssClass="hs-item set-bg" data-setbg='<%# Eval("image") %>'>
                    <asp:Panel ID="Panel15" runat="server" CssClass="hs-text">
                        <asp:Panel ID="Panel17" runat="server" CssClass="container">
                            <asp:Panel ID="Panel18" runat="server" CssClass="row">
                                <asp:Panel ID="Panel19" runat="server" CssClass="col-lg-8">
                                    <asp:Panel ID="Panel20" runat="server" CssClass="hs-subtitle"><asp:Label ID="title1" runat="server" Text='<%# Eval("title") %>'></asp:Label></asp:Panel>
                                    <h2 class="hs-title"><asp:Label ID="SubTitle" runat="server" Text='<%# Eval("subtitle") %>'></asp:Label></h2>
                                    <p class="hs-des">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>'></asp:Label></p>
                                    <asp:Panel ID="Panel21" runat="server" CssClass="site-btn">GET STARTED</asp:Panel>
                                </asp:Panel>
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </ItemTemplate>
            </asp:Repeater>
         <%--   <asp:Panel ID="Header2" runat="server" CssClass="hs-item set-bg">
                <asp:Panel ID="Panel16" runat="server" CssClass="hs-text">
                    <asp:Panel ID="Panel22" runat="server" CssClass="container">
                        <asp:Panel ID="Panel23" runat="server" CssClass="row">
                            <asp:Panel ID="Panel24" runat="server" CssClass="col-lg-8">
                                <asp:Panel ID="Panel25" runat="server" CssClass="hs-subtitle"><asp:Label ID="title2" runat="server" Text="Label"></asp:Label></asp:Panel>
                                <h2 class="hs-title"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h2>
                                <p class="hs-des">Education is not just about going to school and getting a degree. It's about widening your<br> knowledge and absorbing the truth about life. Knowledge is power.</p>
                                <asp:Panel ID="Panel26" runat="server" CssClass="site-btn">GET STARTED</asp:Panel>
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>--%>
        </asp:Panel>
    </asp:Panel>
	<!-- Hero section end -->

	<!-- Counter section  -->
    <asp:Panel ID="Panel13" runat="server" CssClass="counter-section">
        <asp:Panel ID="Panel14" runat="server" CssClass="container">
            <asp:Panel ID="Panel27" runat="server" CssClass="row">
                <asp:Panel ID="Panel28" runat="server" CssClass="col-lg-7 col-md-6">
                    <asp:Panel ID="Panel29" runat="server" CssClass="big-icon">
                        <i class="fa fa-graduation-cap"></i>
                    </asp:Panel>
                    <asp:Panel ID="Panel30" runat="server" CssClass="counter-content">
                        <h2>NEXT COUSRE: Sales & Marketing Alignment</h2>
						<p><i class="fa fa-calendar-o"></i>07:00 PM - 09:00 PM</p>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel31" runat="server" CssClass="col-lg-5 col-md-6">
                    <asp:Panel ID="Panel32" runat="server" CssClass="counter">
                        <asp:Panel ID="Panel33" runat="server" CssClass="counter-item">
                            <h4>20</h4>Day
                        </asp:Panel>
                        <asp:Panel ID="Panel34" runat="server" CssClass="counter-item">
                            <h4>08</h4>Hrs
                        </asp:Panel>
                        <asp:Panel ID="Panel35" runat="server" CssClass="counter-item">
                            <h4>40</h4>Mins
                        </asp:Panel>
                        <asp:Panel ID="Panel36" runat="server" CssClass="counter-item">
                            <h4>56</h4>secs
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
	<!-- Counter section end -->

	<!-- Services section -->
    <asp:Panel ID="Services" runat="server" CssClass="service-section spad">
        <asp:Panel ID="Panel38" runat="server" CssClass="container services">
            <asp:Panel ID="Panel37" runat="server" CssClass="section-title text-center">
                <h3>OUR SERVICES</h3>
				<p>We provides the opportunity to prepare for life</p>
            </asp:Panel>
            <asp:Panel ID="Panel39" runat="server" CssClass="row">
                <asp:Panel ID="Panel40" runat="server" CssClass="col-lg-4 col-sm-6 service-item">
                    <asp:Panel ID="Panel41" runat="server" CssClass="service-icon">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/services-icons/1.png"></asp:Image>
                    </asp:Panel>
                    <asp:Panel ID="Panel42" runat="server" CssClass="service-content">
                        <h4>Art Studio</h4>
                        <p>
                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus interdum ultrices augue. Aenean dos cursus lania.
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </p>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel43" runat="server" CssClass="col-lg-4 col-sm-6 service-item">
                    <asp:Panel ID="Panel44" runat="server" CssClass="service-icon">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/img/services-icons/2.png"></asp:Image>
                    </asp:Panel>
                    <asp:Panel ID="Panel45" runat="server" CssClass="service-content">
                        <h4>Great Facility</h4>
                        <p>
                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus interdum ultrices augue. Aenean dos cursus lania.
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </p>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel48" runat="server" CssClass="col-lg-4 col-sm-6 service-item">
                    <asp:Panel ID="Panel46" runat="server" CssClass="service-icon">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/img/services-icons/3.png"></asp:Image>
                    </asp:Panel>
                    <asp:Panel ID="Panel47" runat="server" CssClass="service-content">
                        <h4>Activity Hub</h4>
                        <p>
                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus interdum ultrices augue. Aenean dos cursus lania.
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </p>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel49" runat="server" CssClass="col-lg-4 col-sm-6 service-item">
                    <asp:Panel ID="Panel50" runat="server" CssClass="service-icon">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/img/services-icons/4.png"></asp:Image>
                    </asp:Panel>
                    <asp:Panel ID="Panel51" runat="server" CssClass="service-content">
                        <h4>Fully Qualified</h4>
                        <p>
                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus interdum ultrices augue. Aenean dos cursus lania.
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </p>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel52" runat="server" CssClass="col-lg-4 col-sm-6 service-item">
                    <asp:Panel ID="Panel53" runat="server" CssClass="service-icon">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/img/services-icons/5.png"></asp:Image>
                    </asp:Panel>
                    <asp:Panel ID="Panel54" runat="server" CssClass="service-content">
                        <h4>Flexible Schedule</h4>
                        <p>
                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus interdum ultrices augue. Aenean dos cursus lania.
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </p>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel55" runat="server" CssClass="col-lg-4 col-sm-6 service-item">
                    <asp:Panel ID="Panel56" runat="server" CssClass="service-icon">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/img/services-icons/6.png"></asp:Image>
                    </asp:Panel>
                    <asp:Panel ID="Panel57" runat="server" CssClass="service-content">
                        <h4>Chemistry Lab</h4>
                        <p>
                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus interdum ultrices augue. Aenean dos cursus lania.
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </p>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
	<!-- Services section end -->
	
	<!-- Enroll section -->
	<section class="enroll-section spad set-bg" data-setbg="img/enroll-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-5">
					<div class="section-title text-white">
						<h3>ENROLLMENT</h3>
						<p>Get started with us to explore the exciting</p>
					</div>
					<div class="enroll-list text-white">
						<div class="enroll-list-item">
							<span>1</span>
							<h5>Contact</h5>
							<p>Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus interdum ultrices augue.</p>
						</div>
						<div class="enroll-list-item">
							<span>2</span>
							<h5>Consulting</h5>
							<p>Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus interdum ultrices augue.</p>
						</div>
						<div class="enroll-list-item">
							<span>3</span>
							<h5>Register</h5>
							<p>Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus interdum ultrices augue.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6 offset-lg-1 p-lg-0 p-4">
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/img/encroll-img.jpg"></asp:Image>
				</div>
			</div>
		</div>
	</section>
	<!-- Enroll section end -->


	<!-- Courses section -->
	<section class="courses-section spad">
		<div class="container">
			<div class="section-title text-center">
				<h3>OUR COURSES</h3>
				<p>Building a better world, one course at a time</p>
			</div>
			<div class="row">
				<!-- course item -->
				<div class="col-lg-4 col-md-6 course-item">
					<div class="course-thumb">
                        <asp:Image ID="Image8" runat="server" ImageUrl="~/img/course/1.jpg"></asp:Image>
						<div class="course-cat">
							<span>BUSINESS</span>
						</div>
					</div>
					<div class="course-info">
						<div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
						<h4>Certificate Course in Writing<br>for a Global Market</h4>
						<h4 class="cource-price">$100<span>/month</span></h4>
					</div>
				</div>
				<!-- course item -->
				<div class="col-lg-4 col-md-6 course-item">
					<div class="course-thumb">
						<asp:Image ID="Image9" runat="server" ImageUrl="~/img/course/2.jpg"></asp:Image>
						<div class="course-cat">
							<span>Marketing</span>
						</div>
					</div>
					<div class="course-info">
						<div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
						<h4>Google AdWords: Get More<br> Customers with Search Marketing </h4>
						<h4 class="cource-price">$150<span>/month</span></h4>
					</div>
				</div>
				<!-- course item -->
				<div class="col-lg-4 col-md-6 course-item">
					<div class="course-thumb">
						<asp:Image ID="Image10" runat="server" ImageUrl="~/img/course/3.jpg"></asp:Image>
						<div class="course-cat">
							<span>DESIGN</span>
						</div>
					</div>
					<div class="course-info">
						<div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
						<h4>The Ultimate Drawing Course<br> Beginner to Advanced</h4>
						<h4 class="cource-price">$180<span>/month</span></h4>
					</div>
				</div>
				<!-- course item -->
				<div class="col-lg-4 col-md-6 course-item">
					<div class="course-thumb">
						<asp:Image ID="Image11" runat="server" ImageUrl="~/img/course/4.jpg"></asp:Image>
						<div class="course-cat">
							<span>DATABASE</span>
						</div>
					</div>
					<div class="course-info">
						<div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
						<h4>Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert</h4>
						<h4 class="cource-price">$150<span>/month</span></h4>
					</div>
				</div>
				<!-- course item -->
				<div class="col-lg-4 col-md-6 course-item">
					<div class="course-thumb">
						<asp:Image ID="Image12" runat="server" ImageUrl="~/img/course/5.jpg"></asp:Image>
						<div class="course-cat">
							<span>PROGRAM</span>
						</div>
					</div>
					<div class="course-info">
						<div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
						<h4>Web Developer Bootcamp<br>Make web  applications</h4>
						<h4 class="cource-price">$250<span>/month</span></h4>
					</div>
				</div>
				<!-- course item -->
				<div class="col-lg-4 col-md-6 course-item">
					<div class="course-thumb">
						<asp:Image ID="Image13" runat="server" ImageUrl="~/img/course/6.jpg"></asp:Image>
						<div class="course-cat">
							<span>BUSINESS</span>
						</div>
					</div>
					<div class="course-info">
						<div class="date"><i class="fa fa-clock-o"></i> 22 Mar 2018</div>
						<h4>How to Start an Amazon<br>FBA Store on a Tight Budget</h4>
						<h4 class="cource-price">$150<span>/month</span></h4>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Courses section end-->


	<!-- Fact section -->
	<section class="fact-section spad set-bg" data-setbg="img/fact-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 fact">
					<div class="fact-icon">
						<i class="ti-crown"></i>
					</div>
					<div class="fact-text">
						<h2>50</h2>
						<p>YEARS</p>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3 fact">
					<div class="fact-icon">
						<i class="ti-briefcase"></i>
					</div>
					<div class="fact-text">
						<h2>80</h2>
						<p>TEACHERS</p>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3 fact">
					<div class="fact-icon">
						<i class="ti-user"></i>
					</div>
					<div class="fact-text">
						<h2>500</h2>
						<p>STUDENTS</p>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3 fact">
					<div class="fact-icon">
						<i class="ti-pencil-alt"></i>
					</div>
					<div class="fact-text">
						<h2>800+</h2>
						<p>LESSONS</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Fact section end-->


	<!-- Event section -->
	<section class="event-section spad">
		<div class="container">
			<div class="section-title text-center">
				<h3>OUR EVENTS</h3>
				<p>Our department  initiated a series of events</p>
			</div>
			<div class="row">
				<div class="col-md-6 event-item">
					<div class="event-thumb">
                        <asp:Image ID="Image14" runat="server" ImageUrl="~/img/event/1.jpg"></asp:Image>
						<div class="event-date">
							<span>24 Mar 2018</span>
						</div>
					</div>
					<div class="event-info">
						<h4>The dos and don'ts of writing a personal<br>statement for languages</h4>
						<p><i class="fa fa-calendar-o"></i> 08:00 AM - 10:00 AM <i class="fa fa-map-marker"></i> Center Building, Block A</p>
						<asp:HyperLink ID="HyperLink1" runat="server" CssClass="event-readmore">REGISTER <i class="fa fa-angle-double-right"></i></asp:HyperLink>
					</div>
				</div>
				<div class="col-md-6 event-item">
					<div class="event-thumb">
						<asp:Image ID="Image15" runat="server" ImageUrl="~/img/event/2.jpg"></asp:Image>
						<div class="event-date">
							<span>22 Mar 2018</span>
						</div>
					</div>
					<div class="event-info">
						<h4>University interview tips:<br>confidence won't make up for flannel</h4>
						<p><i class="fa fa-calendar-o"></i> 08:00 AM - 10:00 AM <i class="fa fa-map-marker"></i> Center Building, Block A</p>
						<asp:HyperLink ID="HyperLink2" runat="server" CssClass="event-readmore">REGISTER <i class="fa fa-angle-double-right"></i></asp:HyperLink>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Event section end -->


	<!-- Gallery section -->
	<asp:Panel ID="Panel10" runat="server" CssClass="gallery-section">
        <asp:Panel ID="Panel9" runat="server" CssClass="gallery">
            <div class="grid-sizer"></div>
            <asp:Panel ID="Panel1" runat="server" CssClass="gallery-item gi-big set-bg">
                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="img-popup"><i class="ti-plus"></i></asp:HyperLink>
            </asp:Panel>
			<asp:Panel ID="Panel2" runat="server" CssClass="gallery-item gi-big set-bg">
                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="img-popup"><i class="ti-plus"></i></asp:HyperLink>
            </asp:Panel>
			<asp:Panel ID="Panel3" runat="server" CssClass="gallery-item gi-big set-bg">
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="img-popup"><i class="ti-plus"></i></asp:HyperLink>
            </asp:Panel>
			<asp:Panel ID="Panel4" runat="server" CssClass="gallery-item gi-big set-bg">
                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="img-popup"><i class="ti-plus"></i></asp:HyperLink>
            </asp:Panel>
			<asp:Panel ID="Panel5" runat="server" CssClass="gallery-item gi-big set-bg">
                <asp:HyperLink ID="HyperLink7" runat="server" CssClass="img-popup"><i class="ti-plus"></i></asp:HyperLink>
            </asp:Panel>
			<asp:Panel ID="Panel6" runat="server" CssClass="gallery-item gi-big set-bg">
                <asp:HyperLink ID="HyperLink8" runat="server" CssClass="img-popup"><i class="ti-plus"></i></asp:HyperLink>
            </asp:Panel>
			<asp:Panel ID="Panel7" runat="server" CssClass="gallery-item gi-big set-bg">
                <asp:HyperLink ID="HyperLink9" runat="server" CssClass="img-popup"><i class="ti-plus"></i></asp:HyperLink>
            </asp:Panel>
			<asp:Panel ID="Panel8" runat="server" CssClass="gallery-item gi-big set-bg">
                <asp:HyperLink ID="HyperLink10" runat="server" CssClass="img-popup"><i class="ti-plus"></i></asp:HyperLink>
            </asp:Panel>
        </asp:Panel>
	</asp:Panel>
	<!-- Gallery section -->


	<!-- Blog section -->
	<section class="blog-section spad">
		<div class="container">
			<div class="section-title text-center">
				<h3>LATEST NEWS</h3>
				<p>Get latest breaking news & top stories today</p>
			</div>
			<div class="row">
				<div class="col-xl-6">
					<div class="blog-item">
						<asp:Panel ID="Blog1" runat="server" CssClass="blog-thumb set-bg"></asp:Panel>
						<div class="blog-content">
							<h4>Parents who try to be their children’s best friends</h4>
							<div class="blog-meta">
								<span><i class="fa fa-calendar-o"></i> 24 Mar 2018</span>
								<span><i class="fa fa-user"></i> Owen Wilson</span>
							</div>
							<p>Integer luctus diam ac scerisque consectetur. Vimus dot euismod neganeco lacus sit amet. Aenean interdus mid vitae sed accumsan...</p>
						</div>
					</div>
				</div>
				<div class="col-xl-6">
					<div class="blog-item">
						<asp:Panel ID="Blog2" runat="server" CssClass="blog-thumb set-bg"></asp:Panel>
						<div class="blog-content">
							<h4>Graduations could be delayed as external examiners</h4>
							<div class="blog-meta">
								<span><i class="fa fa-calendar-o"></i> 23 Mar 2018</span>
								<span><i class="fa fa-user"></i> Owen Wilson</span>
							</div>
							<p>Integer luctus diam ac scerisque consectetur. Vimus dot euismod neganeco lacus sit amet. Aenean interdus mid vitae sed accumsan...</p>
						</div>
					</div>
				</div>
				<div class="col-xl-6">
					<div class="blog-item">
						<asp:Panel ID="Blog3" runat="server" CssClass="blog-thumb set-bg"></asp:Panel>
						<div class="blog-content">
							<h4>Private schools adopt a Ucas style application system</h4>
							<div class="blog-meta">
								<span><i class="fa fa-calendar-o"></i> 24 Mar 2018</span>
								<span><i class="fa fa-user"></i> Owen Wilson</span>
							</div>
							<p>Integer luctus diam ac scerisque consectetur. Vimus dot euismod neganeco lacus sit amet. Aenean interdus mid vitae sed accumsan...</p>
						</div>
					</div>
				</div>
				<div class="col-xl-6">
					<div class="blog-item">
                        <asp:Panel ID="Blog4" runat="server" CssClass="blog-thumb set-bg"></asp:Panel>
						<div class="blog-content">
							<h4>Cambridge digs in at the top of university league table</h4>
							<div class="blog-meta">
								<span><i class="fa fa-calendar-o"></i> 23 Mar 2018</span>
								<span><i class="fa fa-user"></i> Owen Wilson</span>
							</div>
							<p>Integer luctus diam ac scerisque consectetur. Vimus dot euismod neganeco lacus sit amet. Aenean interdus mid vitae sed accumsan...</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog section -->
</asp:Content>
