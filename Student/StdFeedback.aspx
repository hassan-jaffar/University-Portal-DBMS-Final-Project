<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="StdFeedback.aspx.cs" Inherits="Flex.Student.StdFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 px-5">
              <div class="row justify-content-center mt-5 pt-5 pb-3">
          <div class="col-md-12 text-center px-5">
              <h1 style="margin-bottom: 40px">Feedback</h1>
<%--              <form action="#" method="post">--%>
              <div class="feedbackform">
                  <label for="course">Course:</label>
                  <br />
                  <asp:DropDownList ID="DropDownList1" runat="server" Width ="400px" Height ="80px"></asp:DropDownList><br />
                  <label for="feedback" class="d-block"><br />Feedback:</label>
                   <asp:TextBox runat ="server"
          
          class="form-control text-center mb-3 br"
          Width ="400px" Height ="80px"
          id="feedback"
          placeholder="Enter your thoughts!"
          
        /><br><br>
                  <label for="satisfaction">How satisfied were you with the course?</label>
                  <br>
                  <input type="radio" id="satisfied" name="satisfaction" value="satisfied" required>
                  <label for="satisfied">Satisfied</label>
                  <br>
                  <input type="radio" id="neutral" name="satisfaction" value="neutral">
                  <label for="neutral">Neutral</label>
                  <br>
                  <input type="radio" id="unsatisfied" name="satisfaction" value="unsatisfied">
                  <label for="unsatisfied">Unsatisfied</label>
                  <br><br>
                  <label for="rating">Rate the course from 1 to 10:</label>
                  <input type="range" id="rating" name="rating" min="1" max="10" <%--required--%>><br><br>
                  <asp:Button runat ="server" OnClick ="submitFeedback" class="btn btn-lg loginbtn mt-4" Text ="Submit" Height ="40px"></asp:Button>
                 
              </div>
              <div class ="row" > <div class ="col-md-12"><asp:Label id="output" Text ="                              " runat ="server" style="color: green" ></asp:Label></div></div>
                   
              <%--</form>--%>
              </div>
          </div>
    </div>
</asp:Content>
