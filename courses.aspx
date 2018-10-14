<%@ Page Title="" Language="C#" MasterPageFile="~/basetemplate.master" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .main-menu li.courses a{
            background: #f6783a;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Breadcrumb section -->
	<div class="site-breadcrumb">
		<div class="container">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">
            <i class="fa fa-home"></i> Home
            </asp:HyperLink><i class="fa fa-angle-right"></i>
			<span>Our Courses</span>
		</div>
	</div>
	<!-- Breadcrumb section end -->


	<!-- Courses section -->
	<section class="full-courses-section spad pt-0">
		<div class="container">
			<div class="row">
                <asp:Repeater ID="repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-4 col-md-6 course-item">
					        <div class="course-thumb">
						        <img src='<%# Eval("image") %>' />
						        <div class="course-cat">
							        <span><asp:Label ID="Label1" runat="server" Text='<%# Eval("type") %>'></asp:Label></span>
						        </div>
					        </div>
					        <div class="course-info">
						        <div class="date"><i class="fa fa-clock-o"></i><asp:Label ID="Label2" runat="server" Text='<%# Eval("duration") %>'></asp:Label></div>
						        <h4><asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label></h4>
						        <h4 class="cource-price">$<asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label><span>/month</span></h4>
					        </div>
				        </div>
                    </ItemTemplate>
                </asp:Repeater>
			</div>
		</div>
	</section>
	<!-- Courses section end-->
</asp:Content>

