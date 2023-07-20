<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="StdRegistration.aspx.cs" Inherits="Flex.Student.StdRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 pb-5 pt-3 px-5">
              <div class="row justify-content-center mt-5 pt-5 pb-3">
          <div class="col-md-12 text-center px-5">
              <h1>Course Registration</h1>

                  <div class="feedbackform">
                  <label for="course">Offered Courses</label>
                  <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                      
                       

                  <asp:Button runat ="server" OnClick ="register" class="btn btn-lg loginbtn mt-4" Text ="Register" Height ="40px"></asp:Button>
                  <asp:Button runat ="server" OnClick ="drop" class="btn btn-lg loginbtn mt-4" Text ="Drop" Height ="40px"></asp:Button>

                </div>
                     <div class ="row" > <div class ="col-md-12"><asp:Label id="output" Text ="                              " runat ="server" style="color: red" ></asp:Label></div></div>
                   


        </div>
    </div>
    </div>
</asp:Content>