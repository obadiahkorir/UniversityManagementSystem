<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="UniversityUsers.aspx.cs" Inherits="CommissionSystem.UniversityUsers" %>

<%@ Import Namespace="CommissionSystem" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
       <div class="page-wrapper">
           
                <div class="content container-fluid">
					<div class="row">
						<div class="col-xs-4">
							<h4 class="page-title">Employee</h4>
						</div>
						<div class="col-xs-8 text-right m-b-30">
							<a href="#" class="btn btn-primary pull-right rounded" data-toggle="modal" data-target="#add_employee"><i class="fa fa-plus"></i> Add Employee</a>
							<div class="view-icons">
								<a href="employees.html" class="grid-view btn btn-link"><i class="fa fa-th"></i></a>
								<a href="employees-list.html" class="list-view btn btn-link active"><i class="fa fa-bars"></i></a>
							</div>
						</div>
					</div>
					<div class="row filter-row">
						<div class="col-sm-3 col-xs-6">  
							<div class="form-group form-focus">
								<label class="control-label">Employee ID</label>
								<input type="text" class="form-control floating" />
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">  
							<div class="form-group form-focus">
								<label class="control-label">Employee Name</label>
								<input type="text" class="form-control floating" />
							</div>
						</div>
						<div class="col-sm-3 col-xs-6"> 
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
						</div>
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
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Password</th>
                                            <th>Email</th>
                                            <th>University Code</th>
                                            <th>University Name</th>
                                            <th>Contact</th>
                                            <th>Phone Number</th>
                                            <th>User Type</th>
                                           
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Password</th>
                                            <th>Email</th>
                                            <th>University Code</th>
                                            <th>University Name</th>
                                            <th>Contact</th>
                                            <th>Phone Number</th>
                                            <th>User Type</th>
                                            
                                        </tr>
                                    </tfoot>
                                    
                                    <tbody>
                                        <%
                                            var nav = new Config().ReturnNav();
                                            var users = nav.UniversityUsers;
                                            int count = 0;
                                            foreach (var user in users)
                                            {
                                                count++;
                                            
                                             %>
                                        <tr>
                                            <td><%=count%></td>
                                            <td><%=user.Name%></td>
                                            <td><%=user.Password %></td>
                                            <td><%=user.Email %></td>
                                            <td><%=user.UniversityCode %></td>
                                            <td><%=user. University_Name %></td>
                                            <td><%=user. Contact %></td>
                                            <td><%=user. Phone_No %></td>
                                            <td><%=user.UserType %></td>
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
                                    </tbody>
                                       <%

                                 }
                                 %>
                              </table>
                                
						
					</div>
				</div>
			</div>
        </div>
    </div>
</asp:Content>

