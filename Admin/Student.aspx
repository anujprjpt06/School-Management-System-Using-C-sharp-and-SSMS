﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StudentManagementSystem.Admin.Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background-image: url('../Image/bg.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
        <div class="container p-md-4 p-sm-4">
            <div>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </div>
            <h3 class="text-center">Add Student</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-6">
                    <label for="txtName">Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Name" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name Should be in Characters" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]*$" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName"></asp:RegularExpressionValidator>

                </div>


                <%-- TextBox --%>

                <div class="col-md-6">
                    <label for="txtDob">Date Of Birth</label>
                    <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>
                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-6">
                    <label for="ddlGender">Gender</label>
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Gender Is Required" ForeColor="Red" ControlToValidate="ddlGender" Display="Dynamic" SetFocusOnError="true" InitialValue="Select Gender">

                    </asp:RequiredFieldValidator>
                </div>


                <div class="col-md-6">
                    <label for="txtMobile">Contact Number</label>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Number" placeholder="10 Digits Mobile No." required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Mobile No." ForeColor="Red" ValidationExpression="^[0-9]{10}" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>

                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-6">
                    <label for="txtRoll">Roll Number</label>
                    <asp:TextBox ID="txtRoll" runat="server" CssClass="form-control" placeholder="Enter Roll Number " required></asp:TextBox>

                </div>

                <div class="col-md-6">
                    <label for="ddlClass">Class</label>
                    <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Class is Required.."
                        ControlToValidate="ddlClass" Display="Dynamic" ForeColor="Red" InitialValue="Select Class" SetFocusOnError="True">

                    </asp:RequiredFieldValidator>

                </div>
            </div>


            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-12">
                    <label for="txtAddress">Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine" required></asp:TextBox>

                </div>
            </div>


            <%-- Button --%>
            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" Text="Add Student" CssClass="btn btn-primary btn-block" BackColor="#5558C9" OnClick="btnAdd_Click"/>
                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-12">

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No record to Display" OnRowUpdating="GridView1_RowUpdating"
                        AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowEditing="GridView1_RowEditing" AllowPaging="True" PageSize="4" DataKeyNames="StudentId" OnRowDataBound="GridView1_RowDataBound" >
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>

                            <asp:TemplateField HeaderText="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Mobile">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtMobile" runat="server" Text='<%# Eval("MobileNo") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblMobile" runat="server" Text='<%# Eval("MobileNo") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Roll Number">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtRollNo" runat="server" Text='<%# Eval("RollNo") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblRollNo" runat="server" Text='<%# Eval("RollNo") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Class">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" Width="120px"></asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblClass" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>' CssClass="form-control" Width="170px" TextMode="MultiLine"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:CommandField CausesValidation="false" HeaderText="Operation" ShowEditButton="True">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle BackColor="#5558C9" ForeColor="White" />

                    </asp:GridView>

                </div>
            </div>

        </div>
    </div>


</asp:Content>
