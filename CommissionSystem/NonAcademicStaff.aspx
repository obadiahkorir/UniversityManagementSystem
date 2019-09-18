<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="NonAcademicStaff.aspx.cs" Inherits="CommissionSystem.NonAcademicStaff" %>

<%@ Import Namespace="CommissionSystem" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
      <div class="page-wrapper">
                <div class="content container-fluid">
					<div class="row">
						<div class="col-xs-4">
							<h4 class="page-title">Academic Staff</h4>
						</div>
						<div class="col-xs-8 text-right m-b-30">
							<a href="#" class="btn btn-primary rounded pull-right" data-toggle="modal" data-target="#add_salary"><i class="fa fa-plus"></i> Add Academic Staff</a>
						</div>
					</div>
					<div class="row filter-row">
					   <div class="col-sm-3 col-md-2 col-xs-6">  
							<div class="form-group form-focus">
								<label class="control-label">Staff Name</label>
								<input type="text" class="form-control floating" />
							</div>
					   </div>
					   <div class="col-sm-3 col-md-2 col-xs-6"> 
							<div class="form-group form-focus select-focus">
								<label class="control-label">Staff Status</label>
								<select class="select floating"> 
									<option value=""> -- Select -- </option>
									<option value="0"> Active </option>
									<option value="1"> Inactive </option>
                                    <option value="1"> Expelled </option>
									<option value="2"> Suspended </option>
								</select>
							</div>
					   </div>
					   <div class="col-sm-3 col-md-2 col-xs-6">  
							<div class="form-group form-focus">
								<label class="control-label">From</label>
								<div class="cal-icon"><input class="form-control floating datetimepicker" type="text"/></div>
							</div>
						</div>
					   <div class="col-sm-3 col-md-2 col-xs-6">  
							<div class="form-group form-focus">
								<label class="control-label">To</label>
								<div class="cal-icon"><input class="form-control floating datetimepicker" type="text"/></div>
							</div>
						</div>
						<div class="col-sm-3 col-md-2 col-xs-6">  
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
											<th style="width:10%;">FirstName</th>
                                            <th>ID</th>
                                            <th>MiddleName</th>
											<th>Ethnicity</th>
                                            <th>DOB</th>
											<th>Domain</th>
                                            <th>County</th>
                                           <%-- <th>Appointment Date</th>--%>
											<th>Rank</th>
                                            <th>Qualifications</th>
											<th class="text-right">Action</th>
										</tr>
									</thead>
									<tbody>
                                         <%
                                            var nav = new Config().ReturnNav();
                                             var users = nav.academicstaffentry;
                                               int count = 0;
                                             foreach (var staff in users)
                                                  {
                                                count++;
                                                %>
										<tr>
                                            <td><% =count %></td>
											<td>
										    <a href="profile.html" class="avatar">V</a>
										    <h2><a href="profile.html"><%=staff.First_Name %><span>Student</span></a></h2>
											</td>
                                            <td><%=staff.ID_Passport_No %></td>
											<td><%=staff.Mddle_Name%></td>
                                            <td><%=staff.Ethnic_Background %></td>
											<td><%=staff.Date_of_Birth  %></td>
                                            <td><%=staff.Program_Domain %></td>
                                            <td><%=staff.Home_County %></td>
                                            <%--<td><%=staff.Date_of_first_Appointment %></td--%>
                                            <td><%=staff.Rank %></td>
                                             <td><%=staff.Highest_Academic_Qualification %></td>
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
                </div>
				<div class="notification-box">
					<div class="msg-sidebar notifications msg-noti">
						<div class="topnav-dropdown-header">
							<span>Messages</span>
						</div>
						<div class="drop-scroll msg-list-scroll">
							<ul class="list-box">
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">R</span>
											</div>
											<div class="list-body">
												<span class="message-author">Richard Miles </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item new-message">
											<div class="list-left">
												<span class="avatar">J</span>
											</div>
											<div class="list-body">
												<span class="message-author">John Doe</span>
												<span class="message-time">1 Aug</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">T</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Tarah Shropshire </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">M</span>
											</div>
											<div class="list-body">
												<span class="message-author">Mike Litorus</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">C</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Catherine Manseau </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">D</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Domenic Houston </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">B</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Buster Wigton </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">R</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Rolland Webber </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">C</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Claire Mapes </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">M</span>
											</div>
											<div class="list-body">
												<span class="message-author">Melita Faucher</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">J</span>
											</div>
											<div class="list-body">
												<span class="message-author">Jeffery Lalor</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">L</span>
											</div>
											<div class="list-body">
												<span class="message-author">Loren Gatlin</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">T</span>
											</div>
											<div class="list-body">
												<span class="message-author">Tarah Shropshire</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="chat.html">See all messages</a>
						</div>
					</div>
				</div>
            </div>
	        	<div id="add_salary" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="modal-content modal-lg">
						<div class="modal-header">
							<h1 class="modal-title">Add Academic Staff</h1>
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
										<label>Enter Year of Appointment </label>
									  <asp:Textbox ID="year" class="form-control" runat="server"></asp:Textbox>
									</div>
								</div>
                                 <div class="row"> 
									<div class="col-md-6"> 
                                        <div class="form-group">
										<label>Select Programme Domain</label>
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
										<label>Enter Rank</label>
										<asp:Textbox ID="admin_date" class="form-control" runat="server"></asp:Textbox>
									</div>
                                     </div>
									<div class="col-md-6"> 
										<label>Enter Ethnicity</label>
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
			<div id="edit_salary" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="modal-content modal-lg">
						<div class="modal-header">
							<h4 class="modal-title">Add Staff Salary</h4>
						</div>
						<div class="modal-body">
							<form>
								<div class="row"> 
									<div class="col-md-6"> 
										<div class="form-group">
											<label>Select Staff</label>
											<select class="select"> 
												<option>John Doe</option>
												<option>Richard Miles</option>
											</select>
										</div>
									</div>
									<div class="col-md-6"> 
										<label>Net Salary</label>
										<input class="form-control" type="text" value="$4000">
									</div>
								</div>
								<div class="row"> 
									<div class="col-md-6"> 
										<h4 class="text-primary">Earnings</h4>
										<div class="form-group">
											<label>Basic</label>
											<input class="form-control" type="text" value="$6500">
										</div>
										<div class="form-group">
											<label>DA(40%)</label>
											<input class="form-control" type="text" value="$2000">
										</div>
										<div class="form-group">
											<label>HRA(15%)</label>
											<input class="form-control" type="text" value="$700">
										</div>
										<div class="form-group">
											<label>Conveyance</label>
											<input class="form-control" type="text" value="$70">
										</div>
										<div class="form-group">
											<label>Allowance</label>
											<input class="form-control" type="text" value="$30">
										</div>
										<div class="form-group">
											<label>Medical  Allowance</label>
											<input class="form-control" type="text" value="$20">
										</div>
										<div class="form-group">
											<label>Others</label>
											<input class="form-control" type="text">
										</div>  
									</div>
									<div class="col-md-6">  
										<h4 class="text-primary">Deductions</h4>
										<div class="form-group">
											<label>TDS</label>
											<input class="form-control" type="text" value="$300">
										</div> 
										<div class="form-group">
											<label>ESI</label>
											<input class="form-control" type="text" value="$20">
										</div>
										<div class="form-group">
											<label>PF</label>
											<input class="form-control" type="text" value="$20">
										</div>
										<div class="form-group">
											<label>Leave</label>
											<input class="form-control" type="text" value="$250">
										</div>
										<div class="form-group">
											<label>Prof. Tax</label>
											<input class="form-control" type="text" value="$110">
										</div>
										<div class="form-group">
											<label>Labour Welfare</label>
											<input class="form-control" type="text" value="$10">
										</div>
										<div class="form-group">
											<label>Fund</label>
											<input class="form-control" type="text" value="$40">
										</div>
										<div class="form-group">
											<label>Others</label>
											<input class="form-control" type="text" value="$15">
										</div>
									</div>
								</div>
								<div class="m-t-20 text-center">
									<button class="btn btn-primary">Save & Update</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div id="delete_salary" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Delete Salary</h4>
						</div>
						<form>
							<div class="modal-body card-box">
								<p>Are you sure want to delete this?</p>
								<div class="m-t-20 text-left">
									<a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
									<button type="submit" class="btn btn-danger">Delete</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
</asp:Content>