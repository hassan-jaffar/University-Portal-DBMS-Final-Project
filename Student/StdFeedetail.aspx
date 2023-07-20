<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="StdFeedetail.aspx.cs" Inherits="Flex.Student.StdFeedetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 pb-5 px-5">
              <div class="row justify-content-center mt-5 pt-5 pb-3">
          <div class="col-md-12 text-center px-5">
              <h2 style="margin-bottom: 40px">Fee Details</h2>
               <asp:DropDownList ID="DropDownList1" runat="server" Width ="400px" Height ="80px"></asp:DropDownList><br />
                 


              <table class="table markstab">
                  <tr>
                      <th scope="col">S.No.</th>
                      <th scope="col">Fee Description</th>
                      <th scope="col">Amount</th>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>Tuition Fee</td>
                      <td>$1000</td>
                  </tr>
                  <tr>
                      <td>2</td>
                      <td>Lab Fee</td>
                      <td>$200</td>
                  </tr>
                  <tr>
                      <td>3</td>
                      <td>Library Fee</td>
                      <td>$100</td>
                  </tr>
                  <tr>
                      <td>4</td>
                      <td>Transportation Fee</td>
                      <td>$300</td>
                  </tr>
              </table>
          </div>
          </div>
    </div>
</asp:Content>
