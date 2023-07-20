<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Flex.Student.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 py-5 px-5">
        <div class="row justify-content-center mt-5 py-3 px-3 mx-0 homebox">
      <div class="col-md-12 text-start px-5">
        <div class="container px-3 py-3">
            <h4 style="color: black; margin-bottom: 20px">Personal Information</h4>
            <div class="row">
                 <div class="col-md-4"><h6>Name: <%=stdinfo.Rows[0]["stdname"] %></h6></div> 
                <div class="col-md-4"><h6>CNIC: <%=stdinfo.Rows[0]["cnic"]%></h6></div>
                <div class="col-md-4"><h6>Gender: <%=stdinfo.Rows[0]["gendar"] %></h6></div>
            </div>
            <div class="row">
                <div class="col-md-4"><h6>Date of Birth: <%=stdinfo.Rows[0]["dob"] %></h6></div>
                <div class="col-md-4"><h6>Father's Name: <%=stdinfo.Rows[0]["fatherName"] %></h6></div>
                <div class="col-md-4"><h6>Email: <%=stdinfo.Rows[0]["email"] %></h6></div>
            </div>
            <div class="row">
                <div class="col-md-4"><h6>Phone: <%=stdinfo.Rows[0]["phoneNo"] %></h6></div>
                <div class="col-md-4"><h6>Nationality: <%=stdinfo.Rows[0]["nationality"] %></h6></div>
                <div class="col-md-4"></div>
            </div>            
            <asp:GridView ID = stdinfogrid runat ="server" >
            </asp:GridView >
        </div>
        

      </div>
            </div>
          <div class="row justify-content-center mt-5 py-3 px-3 mx-0 homebox">
            <div class="col-md-12 text-start px-5">
        <div class="container px-3 py-3">
            <h4 style="color: black; margin-bottom: 20px">University Information</h4>
            <div class="row">
                <div class="col-md-4"><h6>Roll Num: <%=stdinfo.Rows[0]["rollnum"] %></h6></div>
                <div class="col-md-4"><h6>Batch: Fall 2021</h6></div>
                <div class="col-md-4"><h6>CGPA: 3.3</h6></div>
            </div>
            <div class="row">
                <div class="col-md-4"><h6>Degree: <%=stdinfo.Rows[0]["degree"] %></h6></div>
            </div>
           
       
            
            </div>
            
        </div>

      </div>
            </div>

        
        </div>
</asp:Content>
