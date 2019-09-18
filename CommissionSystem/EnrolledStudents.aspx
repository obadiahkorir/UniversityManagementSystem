<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="EnrolledStudents.aspx.cs" Inherits="CommissionSystem.EnrolledStudents" %>

<%@ Import Namespace="CommissionSystem" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
       <div class="page-wrapper">
           
                <div class="content container-fluid">
					<div class="row">
						<div class="col-xs-4">
							<h4 class="page-title">Enrolled Students</h4>
						</div>
						<div class="col-xs-8 text-right m-b-30">
							<a href="AddStudents.aspx" class="btn btn-primary pull-right rounded" data-toggle="modal" ><i class="fa fa-plus"></i> Add Students</a>
							<div class="view-icons">
								<a href="employees.html" class="grid-view btn btn-link"><i class="fa fa-th"></i></a>
								<a href="employees-list.html" class="list-view btn btn-link active"><i class="fa fa-bars"></i></a>
							</div>
						</div>
					</div>
					<div class="row filter-row">
						<div class="col-sm-3 col-xs-6">  
							<div class="form-group form-focus">
								<label class="control-label">Student ID</label>
								<input type="text" class="form-control floating" />
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">  
							<div class="form-group form-focus">
								<label class="control-label">Student Name</label>
								<input type="text" class="form-control floating" />
							</div>
						</div>
						<div class="col-sm-3 col-xs-6"> 
							<div class="form-group form-focus select-focus">
								<label class="control-label">Designation</label>
								<select class="select floating"> 
									<option value="">Select Designation</option>
									<option value="">Student Leader</option>
                                    <option value="">Student</option>
									
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
                                            
                                           <th>ID/Passport</th>
                                            <th>University Name</th>
                                            <th>First Name</th>
                                            <th>Middle Name</th>
                                            <th>DOB</th>
                                            <th>Gender</th>
                                            <th>Year</th>
                                            <th>County</th>
                                            <th>Admission Date</th>
                                           
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID/Passport</th>
                                            <th>University Name</th>
                                            <th>First Name</th>
                                            <th>Middle Name</th>
                                            <th>DOB</th>
                                            <th>Gender</th>
                                            <th>Year</th>
                                            <th>County</th>
                                            <th>Admission Date</th>
                                            
                                        </tr>
                                    </tfoot>
                                    <%
                                            var nav = new Config().ReturnNav();
                                             var users = nav.studentEnrolmentList;
                                             foreach (var student in users)
                                        { %>
                                    <tbody>
                                        <tr>
                                            <td><%=student.ID_Passport_Birth_Certificate %></td>
                                            <td><%=student.University_Name %></td>
                                            <td><%=student.First_Name %></td>
                                            <td><%=student.Middle_Name %></td>
                                            <td><%=student.Date_of_Birth %></td>
                                            <td><%=student.Gender %></td>
                                            <td><%=student.Year_of_Study%></td>
                                            <td><%=student.Home_County %></td>
                                            <td><%=student.Date_of_Admission %></td>
                                           
                                            
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
