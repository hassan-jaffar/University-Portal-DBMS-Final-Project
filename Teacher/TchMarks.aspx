<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMst.Master" AutoEventWireup="true" CodeBehind="TchMarks.aspx.cs" Inherits="Flex.Teacher.TchMarks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 py-3 px-5">
        <div class="row justify-content-center mt-5 py-3 px-3 mx-0">
      <div class="col-md-12 text-center px-5">
        <div class="container px-5s py-5 homebox w-50">
            <h4 style="color: black; margin-bottom: 20px">Add Marks</h4>
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
                        <div class="col-md-4"><label for="asstype" class="form-label" style="font-size: 16px">Assessment Type</label></div>
                        <div class="col-md-8"><asp:TextBox runat="server"
                        type="text"
                        class="form-control text-center br"
                        Style="height: 30px"
                        ID="asstype" 
                        placeholder="Sessional 1" /></div>
                    </div>
                    <div class="row my-2">
                        <div class="col-md-4"><label for="marks" class="form-label" style="font-size: 16px">Marks Obtained</label></div>
                        <div class="col-md-8"><asp:TextBox runat="server"
                        type="text"
                        class="form-control text-center br"
                        Style="height: 30px"
                        ID="marks" 
                        placeholder="__/50"
                        /></div>
                    </div>
            <asp:Button runat ="server"  class="btn btn-lg loginbtn mt-4" Text ="Continue" Height ="40px"></asp:Button>
       
            
        </div>
        

      </div>
            </div>

        
        </div>
</asp:Content>
