<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VoteHeads.aspx.cs" Inherits="CommissionSystem.VoteHeads" %>

<%@ Import Namespace="CommissionSystem" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
       <div class="page-wrapper">        
                <div class="content container-fluid">
					<div class="row">
						<div class="col-xs-4">
							<h1 class="page-title">Graduation</h1>
						</div>
						<div class="col-xs-8 text-right m-b-30">
							<a href="#" class="btn btn-primary pull-right rounded" data-toggle="modal" data-target="#add_campus"><i class="fa fa-plus"></i> Add Graduation</a>
							<div class="view-icons">
								<a href="employees.html" class="grid-view btn btn-link"><i class="fa fa-th"></i></a>
								<a href="employees-list.html" class="list-view btn btn-link active"><i class="fa fa-bars"></i></a>
							</div>
						</div>
					</div>
					<div class="row filter-row">
						<div class="col-sm-3 col-xs-6">  
							<div class="form-group form-focus">
								<label class="control-label">Graduation ID</label>
								<input type="text" class="form-control floating" />
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">  
							<div class="form-group form-focus">
								<label class="control-label">Graduation Year</label>
								<input type="text" class="form-control floating" />
							</div>
						</div>
						<%--<div class="col-sm-3 col-xs-6"> 
							<div class="form-group form-focus select-focus">
								<label class="control-label">Designation</label>
								<select class="select floating"> 
									<option value="">Select Designation</option>
									<option value="">Web Developer</option>
									<option value="1">Web Designer</option>
									<option value="1">Android Developer</option>
									<option value="1">Ios Developer</option>
								</select>
							</div>
						</div>--%>
						<div class="col-sm-3 col-xs-6">  
							<a href="#" class="btn btn-success btn-block"> Search </a>  
						</div>     
                    </div>
                    <div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table datatable">
									<thead>
										<tr>
                                             <td>#</td>
                                            <th>Accounts Code</th>
                                            <th>Description</th>
                                            <th>SubCategory</th>
                                            <th>Description</th>
                                            <th>Category Code</th>
											<th class="text-right">Action</th>
										</tr>
									</thead>
									<tbody>			
                                         <%
                                             var nav = new Config().ReturnNav();
                                             var votes= nav.VoteHeads;
                                             int count = 0;
                                             foreach (var vote in votes)
                                             {
                                                 count++;
                                             %>
                                            <tr>
                                            <td><%=count %></td>
                                            <td><%=vote.AccountsCode%></td>
                                            <td><%=vote.AccountsDescription%></td>
                                            <td><%=vote.AccountsSubCategoryCode%></td>
                                            <td><%=vote.Description%></td>
                                            <td><%=vote.Category_Code%></td>
                                              <td class="text-right">
												<div class="dropdown">
													<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
													<ul class="dropdown-menu pull-right">
														<li><a href="#" data-toggle="modal" data-target="#edit_salary" title="Edit"><i class="fa fa-pencil m-r-5"></i> Edit</a></li>
														<li><a href="#" data-toggle="modal" data-target="#delete_salary" title="Delete"><i class="fa fa-trash-o m-r-5"></i> Delete</a></li>
													</ul>
												</div>
											</td>
										</tr>
                                         <%
                                        }
                                        %>
                                     </tbody>
                              </table>
					</div>
				</div>
			</div>
            <div id="add_campus" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="modal-content modal-lg">
						<div class="modal-header">
							<h1 class="modal-title">Add Graduation</h1>
						</div>
						<div class="modal-body">
							<form>
								<div class="row"> 
									<div class="col-md-6"> 
                                      <div  runat="server" id="feedback"></div>		
										<div class="form-group">
											<label>Select Gender</label>
											<select class="select"> 
												<option>Male</option>
												<option>Female</option>
											</select>
										</div>
									</div>
									<div class="col-md-6"> 
										<label>Enter FirstName</label>
                                       <asp:Textbox ID="fname" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>
                                <div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Enter Middle Name</label>
								     <asp:Textbox ID="mname" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label>Enter Last Name</label>
									  <asp:Textbox ID="lname" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>
                                 <div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Enter ID No./Passport No.</label>
									  <asp:Textbox ID="id_no" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label>Enter Date of Birth</label>
									   <asp:Textbox ID="dob" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>
                                 <div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Enter Home County</label>
									  <asp:Textbox ID="county" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label>Enter Year</label>
									  <asp:Textbox ID="year" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>
                                 <div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Select Programme</label>
										<asp:Textbox ID="program" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label>Select Programme Level</label>
										<asp:Textbox ID="prog_level" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>
								<div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Enter Date of Admission</label>
										<asp:Textbox ID="admin_date" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label>Sponsorship</label>
										<asp:Textbox ID="sponsor" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>
							<div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Enter Nationality</label>
										<asp:Textbox ID="nation" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label> Enter Sponsorship</label>
										<asp:Textbox ID="Textbox2" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>	
                                <div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Enter Disability</label>
										<asp:Textbox ID="disable" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label> Enter Sponsorship</label>
										<asp:Textbox ID="Textbox3" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>	
                                 <div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Enter Ethnicity</label>
										<asp:Textbox ID="ethnic" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label> Enter University Code</label>
										<asp:Textbox ID="univer" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>	
                                 <div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Enter Academic Year</label>
										<asp:Textbox ID="academic" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label> Enter University Code</label>
										<asp:Textbox ID="Textbox4" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>	
                                <div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Enter Year of Study</label>
										<asp:Textbox ID="study" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label> Enter Disability  Code</label>
										<asp:Textbox ID="disability" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>	
								    <div class="m-t-20 text-center">
									<button class="btn btn-primary">Create Student</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
        </div>
    </div>
</asp:Content>