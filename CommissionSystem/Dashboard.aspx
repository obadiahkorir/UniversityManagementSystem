<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="Dashboard.aspx.cs" Inherits="CommissionSystem.Dashboard" %>
<%@ Import Namespace="CommissionSystem" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <% var nav = new Config().ReturnNav(); 
        %>
 <div class="page-wrapper">
                <div class="content container-fluid">
					<div class="row">
						<div class="col-md-6 col-sm-6 col-lg-3">
							<div class="dash-widget clearfix card-box">
								<span class="dash-widget-icon"><i class="fa fa-cubes" aria-hidden="true"></i></span>
								<div class="dash-widget-info">
									<h3>1112</h3>
									<span>All Programmes</span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-lg-3">
							<div class="dash-widget clearfix card-box">
								<span class="dash-widget-icon"><i class="fa fa-user" aria-hidden="true"></i></span>
								<div class="dash-widget-info">
									<h3>4224</h3>
									<span>All Students</span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-lg-3">
							<div class="dash-widget clearfix card-box">
								<span class="dash-widget-icon"><i class="fa fa-home"></i></span>
								<div class="dash-widget-info">
									<h3>37</h3>
									<span>All Universities</span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-lg-3">
							<div class="dash-widget clearfix card-box">
								<span class="dash-widget-icon"><i class="fa fa-lock" aria-hidden="true"></i></span>
								<div class="dash-widget-info">
									<h3>456</h3>
									<span>All Campuses</span>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-6 text-center">
									<div class="card-box">
										<h3 class="card-title">Students Graduation</h3>
										<div id="bar-charts"></div>
									</div>
								</div>
                                <div class="col-md-6 text-center">
									<div class="card-box">
										<h3 class="card-title">KUCCPS Enrollement</h3>
										<div id="pie-charts"></div>
									</div>
								</div>
								<div class="col-md-6 text-center">
									<div class="card-box">
										<h3 class="card-title">University Revenue</h3>
										<div id="line-charts"></div>
									</div>
								</div>
								<div class="col-md-6 text-center">
									<div class="card-box">
										<h3 class="card-title">University Programmes</h3>
										<div id="area-charts"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
</asp:Content>