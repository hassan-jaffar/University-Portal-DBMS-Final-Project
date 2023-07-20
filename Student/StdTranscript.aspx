<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="StdTranscript.aspx.cs" Inherits="Flex.Student.StdTranscript" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 px-5">
            <div class="row justify-content-center mt-5 pt-5 pb-3">
        <div class="col-md-12 text-center px-5">
            <h3 style="margin-bottom: 40px">Transcript</h3>

            <div class="d-flex justify-content-center mb-5">
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a class="nav-link tablinks active" data-bs-toggle="pill" href="#course1">Fall 2021</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course2">Spring 2022</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course3">Fall 2022</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course4">Spring 2023</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course5">Fall 2023</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course6">Spring 2024</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course7">Fall 2024</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course8">Spring 2025</a>
                    </li>
                </ul>
            </div>






            <div class="tab-content">


                <div id="course1" class="tab-pane fade show active">
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Fall 2021</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <%@ Import Namespace="System.Data" %>
                                        <% 
                                            string id = (string)Session["username"];

                                            Flex.DAL.myDAL obj = new Flex.DAL.myDAL();
                                            DataTable transcript = obj.displayTranscript(id, "Fall 2021");
                                            int x = 0;
                                            

                                            string[,] courses = new string[10, 3];

                                            for (int i = 0; i < x; i++)
                                            {
                                               
                                                for (int j = 0; j < 3; j++)
                                                {
                                                    courses[i, j] = "";
                                                }
                                            }
                                            x = 0;
                                            foreach(DataRow row in transcript.Rows)
                                            {
                                                
                                                courses[x, 0] = Convert.ToString(row["crsName"]);
                                                courses[x, 1] = Convert.ToString(row["gpa"]);
                                                courses[x, 2] = Convert.ToString(row["grade"]);

                                            }


                                            %>
                                        <th scope="col"><%=courses[0, 0] %></th>
                                        <th scope="col"><%=courses[1, 0] %></th>
                                        <th scope="col"><%=courses[2, 0] %></th>
                                        <th scope="col"><%=courses[3, 0] %></th>
                                        <th scope="col"><%=courses[4, 0] %></th>
                                        <th scope="col"><%=courses[5, 0] %></th>
                                        <th scope="col"><%=courses[6, 0] %></th>
                                        <th scope="col"><%=courses[7, 0] %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        
                                    </tr>
                                    <tr>
                                        <td><%=courses[0, 1] %></td>
                                        <td><%=courses[1, 1] %></td>
                                        <td><%=courses[2, 1] %></td>
                                        <td><%=courses[3, 1] %></td>
                                        <td><%=courses[4, 1] %></td>
                                        <td><%=courses[5, 1] %></td>
                                        <td><%=courses[6, 1] %></td>
                                        <td><%=courses[7, 1] %></td>
                                    </tr>
                                     <tr>
                                        <td><%=courses[0, 2] %></td>
                                        <td><%=courses[1, 2] %></td>
                                        <td><%=courses[2, 2] %></td>
                                        <td><%=courses[3, 2] %></td>
                                        <td><%=courses[4, 2] %></td>
                                        <td><%=courses[5, 2] %></td>
                                        <td><%=courses[6, 2] %></td>
                                        <td><%=courses[7, 2] %></td>
                                    </tr>
                                </tbody>

                                </table>

                                <h4></h4>
                                <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>



                <div id="course2" class="tab-pane fade">
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Spring 2022</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <%@ Import Namespace="System.Data" %>
                                        <% 
                                            

                                            
                                            transcript = obj.displayTranscript(id, "Spring 2022");
                                            

                                            for (int i = 0; i < x; i++)
                                            {
                                               
                                                for (int j = 0; j < 3; j++)
                                                {
                                                    courses[i, j] = "";
                                                }
                                            }
                                            x = 0;
                                            foreach(DataRow row in transcript.Rows)
                                            {
                                                
                                                courses[x, 0] = Convert.ToString(row["crsName"]);
                                                courses[x, 1] = Convert.ToString(row["gpa"]);
                                                courses[x, 2] = Convert.ToString(row["grade"]);

                                            }


                                            %>
                                       <th scope="col"><%=courses[0, 0] %></th>
                                        <th scope="col"><%=courses[1, 0] %></th>
                                        <th scope="col"><%=courses[2, 0] %></th>
                                        <th scope="col"><%=courses[3, 0] %></th>
                                        <th scope="col"><%=courses[4, 0] %></th>
                                        <th scope="col"><%=courses[5, 0] %></th>
                                        <th scope="col"><%=courses[6, 0] %></th>
                                        <th scope="col"><%=courses[7, 0] %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%=courses[0, 1] %></td>
                                        <td><%=courses[1, 1] %></td>
                                        <td><%=courses[2, 1] %></td>
                                        <td><%=courses[3, 1] %></td>
                                        <td><%=courses[4, 1] %></td>
                                        <td><%=courses[5, 1] %></td>
                                        <td><%=courses[6, 1] %></td>
                                        <td><%=courses[7, 1] %></td>
                                    </tr>
                                    <tr>
                                       <td><%=courses[0, 2] %></td>
                                        <td><%=courses[1, 2] %></td>
                                        <td><%=courses[2, 2] %></td>
                                        <td><%=courses[3, 2] %></td>
                                        <td><%=courses[4, 2] %></td>
                                        <td><%=courses[5, 2] %></td>
                                        <td><%=courses[6, 2] %></td>
                                        <td><%=courses[7, 2] %></td>
                                    </tr>
                                </tbody>

                                </table>

                                <h4></h4>
                                <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>



                <div id="course3" class="tab-pane fade ">
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Fall 2022</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <%@ Import Namespace="System.Data" %>
                                        <% 
                                            

                                            
                                            transcript = obj.displayTranscript(id, "Fall 2022");
                                            

                                            for (int i = 0; i < x; i++)
                                            {
                                               
                                                for (int j = 0; j < 3; j++)
                                                {
                                                    courses[i, j] = "";
                                                }
                                            }
                                            x = 0;
                                            foreach(DataRow row in transcript.Rows)
                                            {
                                                
                                                courses[x, 0] = Convert.ToString(row["crsName"]);
                                                courses[x, 1] = Convert.ToString(row["gpa"]);
                                                courses[x, 2] = Convert.ToString(row["grade"]);

                                            }


                                            %>
                                       <th scope="col"><%=courses[0, 0] %></th>
                                        <th scope="col"><%=courses[1, 0] %></th>
                                        <th scope="col"><%=courses[2, 0] %></th>
                                        <th scope="col"><%=courses[3, 0] %></th>
                                        <th scope="col"><%=courses[4, 0] %></th>
                                        <th scope="col"><%=courses[5, 0] %></th>
                                        <th scope="col"><%=courses[6, 0] %></th>
                                        <th scope="col"><%=courses[7, 0] %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%=courses[0, 1] %></td>
                                        <td><%=courses[1, 1] %></td>
                                        <td><%=courses[2, 1] %></td>
                                        <td><%=courses[3, 1] %></td>
                                        <td><%=courses[4, 1] %></td>
                                        <td><%=courses[5, 1] %></td>
                                        <td><%=courses[6, 1] %></td>
                                        <td><%=courses[7, 1] %></td>
                                    </tr>
                                    <tr>
                                       <td><%=courses[0, 2] %></td>
                                        <td><%=courses[1, 2] %></td>
                                        <td><%=courses[2, 2] %></td>
                                        <td><%=courses[3, 2] %></td>
                                        <td><%=courses[4, 2] %></td>
                                        <td><%=courses[5, 2] %></td>
                                        <td><%=courses[6, 2] %></td>
                                        <td><%=courses[7, 2] %></td>
                                    </tr>
                                </tbody>

                                </table>

                                <h4></h4>
                                <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>

                <div id="course4" class="tab-pane fade">
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Spring 2023</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                    <%@ Import Namespace="System.Data" %>
                                        <% 
                                            

                                            
                                            transcript = obj.displayTranscript(id, "Spring 2023");
                                            

                                            for (int i = 0; i < x; i++)
                                            {
                                               
                                                for (int j = 0; j < 3; j++)
                                                {
                                                    courses[i, j] = "";
                                                }
                                            }
                                            x = 0;
                                            foreach(DataRow row in transcript.Rows)
                                            {
                                                
                                                courses[x, 0] = Convert.ToString(row["crsName"]);
                                                courses[x, 1] = Convert.ToString(row["gpa"]);
                                                courses[x, 2] = Convert.ToString(row["grade"]);

                                            }


                                            %>
                                       <th scope="col"><%=courses[0, 0] %></th>
                                        <th scope="col"><%=courses[1, 0] %></th>
                                        <th scope="col"><%=courses[2, 0] %></th>
                                        <th scope="col"><%=courses[3, 0] %></th>
                                        <th scope="col"><%=courses[4, 0] %></th>
                                        <th scope="col"><%=courses[5, 0] %></th>
                                        <th scope="col"><%=courses[6, 0] %></th>
                                        <th scope="col"><%=courses[7, 0] %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%=courses[0, 1] %></td>
                                        <td><%=courses[1, 1] %></td>
                                        <td><%=courses[2, 1] %></td>
                                        <td><%=courses[3, 1] %></td>
                                        <td><%=courses[4, 1] %></td>
                                        <td><%=courses[5, 1] %></td>
                                        <td><%=courses[6, 1] %></td>
                                        <td><%=courses[7, 1] %></td>
                                    </tr>
                                    <tr>
                                       <td><%=courses[0, 2] %></td>
                                        <td><%=courses[1, 2] %></td>
                                        <td><%=courses[2, 2] %></td>
                                        <td><%=courses[3, 2] %></td>
                                        <td><%=courses[4, 2] %></td>
                                        <td><%=courses[5, 2] %></td>
                                        <td><%=courses[6, 2] %></td>
                                        <td><%=courses[7, 2] %></td>
                                    </tr>
                                </tbody>

                                </table>

                                <h4></h4>
                                <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>

                     <div id="course5" class="tab-pane fade">
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Fall 2023</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                    <%@ Import Namespace="System.Data" %>
                                        <% 
                                            

                                            
                                            transcript = obj.displayTranscript(id, "Fall 2023");
                                            

                                            for (int i = 0; i < x; i++)
                                            {
                                               
                                                for (int j = 0; j < 3; j++)
                                                {
                                                    courses[i, j] = "";
                                                }
                                            }
                                            x = 0;
                                            foreach(DataRow row in transcript.Rows)
                                            {
                                                
                                                courses[x, 0] = Convert.ToString(row["crsName"]);
                                                courses[x, 1] = Convert.ToString(row["gpa"]);
                                                courses[x, 2] = Convert.ToString(row["grade"]);

                                            }


                                            %>
                                       <th scope="col"><%=courses[0, 0] %></th>
                                        <th scope="col"><%=courses[1, 0] %></th>
                                        <th scope="col"><%=courses[2, 0] %></th>
                                        <th scope="col"><%=courses[3, 0] %></th>
                                        <th scope="col"><%=courses[4, 0] %></th>
                                        <th scope="col"><%=courses[5, 0] %></th>
                                        <th scope="col"><%=courses[6, 0] %></th>
                                        <th scope="col"><%=courses[7, 0] %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%=courses[0, 1] %></td>
                                        <td><%=courses[1, 1] %></td>
                                        <td><%=courses[2, 1] %></td>
                                        <td><%=courses[3, 1] %></td>
                                        <td><%=courses[4, 1] %></td>
                                        <td><%=courses[5, 1] %></td>
                                        <td><%=courses[6, 1] %></td>
                                        <td><%=courses[7, 1] %></td>
                                    </tr>
                                    <tr>
                                       <td><%=courses[0, 2] %></td>
                                        <td><%=courses[1, 2] %></td>
                                        <td><%=courses[2, 2] %></td>
                                        <td><%=courses[3, 2] %></td>
                                        <td><%=courses[4, 2] %></td>
                                        <td><%=courses[5, 2] %></td>
                                        <td><%=courses[6, 2] %></td>
                                        <td><%=courses[7, 2] %></td>
                                    </tr>
                                </tbody>

                                </table>

                                <h4></h4>
                                <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>


                <div id="course6" class="tab-pane fade">
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Spring 2024</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                   <%@ Import Namespace="System.Data" %>
                                        <% 
                                            

                                            
                                            transcript = obj.displayTranscript(id, "Spring 2024");
                                            

                                            for (int i = 0; i < x; i++)
                                            {
                                               
                                                for (int j = 0; j < 3; j++)
                                                {
                                                    courses[i, j] = "";
                                                }
                                            }
                                            x = 0;
                                            foreach(DataRow row in transcript.Rows)
                                            {
                                                
                                                courses[x, 0] = Convert.ToString(row["crsName"]);
                                                courses[x, 1] = Convert.ToString(row["gpa"]);
                                                courses[x, 2] = Convert.ToString(row["grade"]);

                                            }


                                            %>
                                       <th scope="col"><%=courses[0, 0] %></th>
                                        <th scope="col"><%=courses[1, 0] %></th>
                                        <th scope="col"><%=courses[2, 0] %></th>
                                        <th scope="col"><%=courses[3, 0] %></th>
                                        <th scope="col"><%=courses[4, 0] %></th>
                                        <th scope="col"><%=courses[5, 0] %></th>
                                        <th scope="col"><%=courses[6, 0] %></th>
                                        <th scope="col"><%=courses[7, 0] %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%=courses[0, 1] %></td>
                                        <td><%=courses[1, 1] %></td>
                                        <td><%=courses[2, 1] %></td>
                                        <td><%=courses[3, 1] %></td>
                                        <td><%=courses[4, 1] %></td>
                                        <td><%=courses[5, 1] %></td>
                                        <td><%=courses[6, 1] %></td>
                                        <td><%=courses[7, 1] %></td>
                                    </tr>
                                    <tr>
                                       <td><%=courses[0, 2] %></td>
                                        <td><%=courses[1, 2] %></td>
                                        <td><%=courses[2, 2] %></td>
                                        <td><%=courses[3, 2] %></td>
                                        <td><%=courses[4, 2] %></td>
                                        <td><%=courses[5, 2] %></td>
                                        <td><%=courses[6, 2] %></td>
                                        <td><%=courses[7, 2] %></td>
                                    </tr>
                                </tbody>

                                </table>

                                <h4></h4>
                                <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>

                <div id="course7" class="tab-pane fade ">
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Fall 2024</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                    <%@ Import Namespace="System.Data" %>
                                        <% 
                                            

                                            
                                            transcript = obj.displayTranscript(id, "Fall 2024");
                                            

                                            for (int i = 0; i < x; i++)
                                            {
                                               
                                                for (int j = 0; j < 3; j++)
                                                {
                                                    courses[i, j] = "";
                                                }
                                            }
                                            x = 0;
                                            foreach(DataRow row in transcript.Rows)
                                            {
                                                
                                                courses[x, 0] = Convert.ToString(row["crsName"]);
                                                courses[x, 1] = Convert.ToString(row["gpa"]);
                                                courses[x, 2] = Convert.ToString(row["grade"]);

                                            }


                                            %>
                                       <th scope="col"><%=courses[0, 0] %></th>
                                        <th scope="col"><%=courses[1, 0] %></th>
                                        <th scope="col"><%=courses[2, 0] %></th>
                                        <th scope="col"><%=courses[3, 0] %></th>
                                        <th scope="col"><%=courses[4, 0] %></th>
                                        <th scope="col"><%=courses[5, 0] %></th>
                                        <th scope="col"><%=courses[6, 0] %></th>
                                        <th scope="col"><%=courses[7, 0] %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%=courses[0, 1] %></td>
                                        <td><%=courses[1, 1] %></td>
                                        <td><%=courses[2, 1] %></td>
                                        <td><%=courses[3, 1] %></td>
                                        <td><%=courses[4, 1] %></td>
                                        <td><%=courses[5, 1] %></td>
                                        <td><%=courses[6, 1] %></td>
                                        <td><%=courses[7, 1] %></td>
                                    </tr>
                                    <tr>
                                       <td><%=courses[0, 2] %></td>
                                        <td><%=courses[1, 2] %></td>
                                        <td><%=courses[2, 2] %></td>
                                        <td><%=courses[3, 2] %></td>
                                        <td><%=courses[4, 2] %></td>
                                        <td><%=courses[5, 2] %></td>
                                        <td><%=courses[6, 2] %></td>
                                        <td><%=courses[7, 2] %></td>
                                    </tr>
                                </tbody>

                                </table>

                                <h4></h4>
                                <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>


                <div id="course8" class="tab-pane fade ">
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Spring 2025</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                         <%@ Import Namespace="System.Data" %>
                                        <% 
                                            

                                            
                                            transcript = obj.displayTranscript(id, "Spring 2025");
                                            

                                            for (int i = 0; i < x; i++)
                                            {
                                               
                                                for (int j = 0; j < 3; j++)
                                                {
                                                    courses[i, j] = "";
                                                }
                                            }
                                            x = 0;
                                            foreach(DataRow row in transcript.Rows)
                                            {
                                                
                                                courses[x, 0] = Convert.ToString(row["crsName"]);
                                                courses[x, 1] = Convert.ToString(row["gpa"]);
                                                courses[x, 2] = Convert.ToString(row["grade"]);

                                            }


                                            %>
                                       <th scope="col"><%=courses[0, 0] %></th>
                                        <th scope="col"><%=courses[1, 0] %></th>
                                        <th scope="col"><%=courses[2, 0] %></th>
                                        <th scope="col"><%=courses[3, 0] %></th>
                                        <th scope="col"><%=courses[4, 0] %></th>
                                        <th scope="col"><%=courses[5, 0] %></th>
                                        <th scope="col"><%=courses[6, 0] %></th>
                                        <th scope="col"><%=courses[7, 0] %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%=courses[0, 1] %></td>
                                        <td><%=courses[1, 1] %></td>
                                        <td><%=courses[2, 1] %></td>
                                        <td><%=courses[3, 1] %></td>
                                        <td><%=courses[4, 1] %></td>
                                        <td><%=courses[5, 1] %></td>
                                        <td><%=courses[6, 1] %></td>
                                        <td><%=courses[7, 1] %></td>
                                    </tr>
                                    <tr>
                                       <td><%=courses[0, 2] %></td>
                                        <td><%=courses[1, 2] %></td>
                                        <td><%=courses[2, 2] %></td>
                                        <td><%=courses[3, 2] %></td>
                                        <td><%=courses[4, 2] %></td>
                                        <td><%=courses[5, 2] %></td>
                                        <td><%=courses[6, 2] %></td>
                                        <td><%=courses[7, 2] %></td>
                                    </tr>
                                </tbody>

                                </table>

                                <h4></h4>
                                <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>





            </div>
        </div>
    </div>
    </div>
</asp:Content>
