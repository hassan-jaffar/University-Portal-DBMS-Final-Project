<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMst.Master" AutoEventWireup="true" CodeBehind="TchAttendance.aspx.cs" Inherits="Flex.Teacher.TchAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 py-4 px-5">
        <div class="row justify-content-center mt-5 py-3 px-3 mx-0">
            <div class="col-md-12 text-center px-5">
                <div class="container px-5s py-5 homebox w-50">
                    <h4 style="color: black; margin-bottom: 20px">Add Attendance</h4>
                    <div class="row my-2">
                        <div class="col-md-4"><label for="username" class="form-label" style="font-size: 16px">Student ID</label></div>
                        <div class="col-md-8"><asp:TextBox runat="server"
                        type="text"
                        class="form-control text-center br"
                        Style="height: 30px"
                        ID="username"
                        placeholder="PAK000000" /></div>
                    </div>
                    <div class="row my-2">
                        <div class="col-md-4"><label for="section" class="form-label" style="font-size: 16px">Section ID</label></div>
                        <div class="col-md-8"><asp:TextBox runat="server"
                        type="text"
                        class="form-control text-center br"
                        Style="height: 30px"
                        ID="section"
                        placeholder="000" /></div>
                    </div>
                    <div class="row my-2">
                        <div class="col-md-4"><label for="date" class="form-label" style="font-size: 16px">Date</label></div>
                        <div class="col-md-8"><asp:TextBox runat="server"
                        type="date"
                        class="form-control text-center br"
                        Style="height: 30px"
                        ID="date" /></div>
                    </div>
                    <div class="row my-2">
                        <div class="col-md-4"><label for="status" class="form-label" style="font-size: 16px">Status</label></div>
                        <div class="col-md-8"><asp:TextBox runat="server"
                        type="text"
                        class="form-control text-center br"
                        Style="height: 30px"
                        ID="status" 
                        placeholder="P"
                        /></div>
                    </div>
                    <asp:Button runat ="server"  class="btn btn-lg loginbtn mt-4" Text ="Continue" Height ="40px"></asp:Button>
       
                </div>


            </div>
        </div>


    </div>
</asp:Content>
