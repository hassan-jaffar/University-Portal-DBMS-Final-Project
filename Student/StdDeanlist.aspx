<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="StdDeanlist.aspx.cs" Inherits="Flex.Student.StdDeanlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 px-5">
                    <style>
                body {
                    background-color: #f0f0f0;
                    font-family: Arial, sans-serif;
                }

                h1 {
                    font-size: 36px;
                    font-weight: bold;
                    text-align: center;
                    margin-top: 50px;
                    margin-bottom: 50px;
                }
                h5 {
                    font-size: 24px;
                    font-weight: bold;
                    text-align: center;
                   
                }

                h6 {
                    font-size: 20px;
                    /*font-weight: bold;*/
                    text-align: center;
                    
                }

                .container {
                    width: 90%;
                    margin: auto;
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    padding: 50px;
                }

                .row {
                    display: flex;
                    flex-direction: row;
                    justify-content: space-between;
                    align-items: center;
                    width: 100%;
                    margin-bottom:20px;
                }

                .col {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    text-align: center;
                    flex: 1;
                }

                .name {
                    font-size: 24px;
                    font-weight: bold;
                    margin-bottom: 10px;
                }

                .sgpa {
                    font-size: 18px;
                    color: #666;
                }

                .cgpa {
                    font-size: 18px;
                    color: #666;
                }
                .pos {
                    font-size: 18px;
                    color: dimgrey;
                    font-weight: bold;
                    margin-bottom: 6px;
                }
            </style>





    <div class="container">
        <h1>Dean's Honor List</h1>
        <div class="row">
            <div class="col">
                <div class="pos"><h5>1st</h5></div>
                <div class="name"><h5> <%=stdinfo.Rows[0]["stdname"] %></h5></div>
                <div class="sgpa"><h6>CGPA:  <%=stdinfo.Rows[0]["gpa"] %></h6></div>
                <div class="cgpa"><h6>Ruby</h6></div>
            </div>
            <div class="col">
                <div class="pos"><h5>2nd</h5></div>
                <div class="name"><h5> <%=stdinfo.Rows[1]["stdname"] %></h5></div>
                <div class="sgpa"><h6>CGPA:  <%=stdinfo.Rows[1]["gpa"] %></h6></div>
                <div class="cgpa"><h6>Diamond</h6></div>
            </div><div class="col">
                <div class="pos"><h5>3rd</h5></div>
                <div class="name"><h5> <%=stdinfo.Rows[2]["stdname"] %></h5></div>
                <div class="sgpa"><h6>CGPA:  <%=stdinfo.Rows[2]["gpa"] %></h6></div>
                <div class="cgpa"><h6>Platinum</h6></div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="pos"><h5>4th</h5></div>
                <div class="name"><h5> <%=stdinfo.Rows[3]["stdname"] %></h5></div>
                <div class="sgpa"><h6>CGPA:  <%=stdinfo.Rows[3]["gpa"] %></h6></div>
                <div class="cgpa"><h6>Gold</h6></div>
            </div><div class="col">
                <div class="pos"><h5>5th</h5></div>
                <div class="name"><h5> <%=stdinfo.Rows[4]["stdname"] %></h5></div>
                <div class="sgpa"><h6>CGPA:  <%=stdinfo.Rows[4]["gpa"] %></h6></div>
                <div class="cgpa"><h6>Silver</h6></div>
            </div><div class="col">
                <div class="pos"><h5>6th</h5></div>
                <div class="name"><h5> <%=stdinfo.Rows[5]["stdname"] %></h5></div>
                <div class="sgpa"><h6>CGPA:  <%=stdinfo.Rows[5]["gpa"] %></h6></div>
                <div class="cgpa"><h6>Bronze</h6></div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>