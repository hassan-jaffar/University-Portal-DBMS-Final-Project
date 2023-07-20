<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="StdAttendance.aspx.cs" Inherits="Flex.Student.StdAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="mt-5 px-5">
                <%--taskbar--%>


    <div class="row justify-content-center mt-5 pt-5 pb-3">
        <div class="col-md-12 text-center px-5">
            <h3 style="margin-bottom: 40px">Attendance</h3>

            <div class="d-flex justify-content-center mb-5">
                <ul class="nav nav-pills">
                    <%--<li class="nav-item">
                        <a class="nav-link tablinks active" data-bs-toggle="pill" href="#course1">Course 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course2">Course 2</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course3">Course 3</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course4">Course 4</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course5">Course 5</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course6">Course 6</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course7">Course 7</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tablinks" data-bs-toggle="pill" href="#course8">Course 8</a>
                    </li>--%>
                      <%@ Import Namespace="System.Data" %>
                     <%  
                         int numOfCourses = 0;
                         int numOfAttendances = 0;
                         string id = (string)Session["username"];

                         Flex.DAL.myDAL obj = new Flex.DAL.myDAL();

                         string[] MyArray2 = new string[8];
                         string[,,] attMatrix = new string[8, 32, 2];

                         // Assign values to the elements of the array
                         for (int i = 0; i < 8; i++)
                         {
                             MyArray2[i] = "";

                             for (int j = 0; j < 32; j++)
                             {

                                 for (int k = 0; i < 2; i++)
                                 {
                                     attMatrix[i, j, k] = "";
                                 }
                             }


                         }

                         DataTable alsoAttendance;

                         foreach (DataRow row in regcourses.Rows) {


                             MyArray2[numOfCourses] = Convert.ToString(row["crsName"]);

                             alsoAttendance = obj.displayAttendance(id, MyArray2[numOfCourses]);

                             numOfAttendances = 0;

                             foreach(DataRow arow in alsoAttendance.Rows)
                             {

                                 attMatrix[numOfCourses, numOfAttendances, 0] = Convert.ToString(alsoAttendance.Rows[numOfAttendances][0]);
                                 attMatrix[numOfCourses, numOfAttendances, 1] = Convert.ToString(alsoAttendance.Rows[numOfAttendances][1]);
                                 numOfAttendances++;
                             }

                             numOfCourses++;
                             Response.Write("<li class=\"nav-item\">\r\n<a class=\"nav-link tablinks\" data-bs-toggle=\"pill\" href=\"#course" + numOfCourses + "\">" + row["crsName"] + "</a></li>");


                         }




                         %>
                </ul>
            </div>






            <div class="tab-content">


                <div id="course1" class="tab-pane fade show active">
                    <div style="float: right">
                        <label for="c1">Percentage:</label>
                        <progress id="c1" value="32" max="100"> 32% </progress>
                    </div>
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Course 1</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col">Lecture No</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Duration (in hours)</th>
                                        <th scope="col">Presence</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% 

                                        int y = 0;

                                        foreach (DataRow crsrow in regcourses.Rows)
                                        {

                                            int x = 0;
                                            alsoAttendance = obj.displayAttendance(id, MyArray2[x]);
                                            foreach (DataRow row in alsoAttendance.Rows){

                                                x++;
                                                Response.Write("<tr>\r\n                                        <th scope=\"row\">" + x + "</th>\r\n                                        <td>" + attMatrix[y, x - 1, 0] + " </td>\r\n                                        <td>1.5</td>\r\n                                        <td>" + attMatrix[y,x - 1, 1] + "</td>\r\n                                    </tr>");

                                            }
                                            y++;

                                        }

                                        %>
                                    <%--<tr>
                                        <th scope="row">1</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>P</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>--%>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>






                <div id="course2" class="tab-pane fade">
                    <div style="float: right">
                        <label for="c2">Percentage:</label>
                        <progress id="c2" value="32" max="100"> 32% </progress>
                    </div>
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Course 2</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col">Lecture No</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Duration (in hours)</th>
                                        <th scope="col">Presence</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>P</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>






                <div id="course3" class="tab-pane fade">
                    <div style="float: right">
                        <label for="c3">Percentage:</label>
                        <progress id="c3" value="32" max="100"> 32% </progress>
                    </div>
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Course 3</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col">Lecture No</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Duration (in hours)</th>
                                        <th scope="col">Presence</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>P</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>










                <div id="course4" class="tab-pane fade">
                    <div style="float: right">
                        <label for="c4">Percentage:</label>
                        <progress id="c4" value="32" max="100"> 32% </progress>
                    </div>
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Course 4</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col">Lecture No</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Duration (in hours)</th>
                                        <th scope="col">Presence</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>P</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>






                <div id="course4" class="tab-pane fade">
                    <div style="float: right">
                        <label for="c4">Percentage:</label>
                        <progress id="c4" value="32" max="100"> 32% </progress>
                    </div>
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Course 4</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col">Lecture No</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Duration (in hours)</th>
                                        <th scope="col">Presence</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>P</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>








                <div id="course5" class="tab-pane fade">
                    <div style="float: right">
                        <label for="c5">Percentage:</label>
                        <progress id="c5" value="32" max="100"> 32% </progress>
                    </div>
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Course 5</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col">Lecture No</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Duration (in hours)</th>
                                        <th scope="col">Presence</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>P</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>







                <div id="course6" class="tab-pane fade">
                    <div style="float: right">
                        <label for="c6">Percentage:</label>
                        <progress id="c6" value="32" max="100"> 32% </progress>
                    </div>
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Course 6</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col">Lecture No</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Duration (in hours)</th>
                                        <th scope="col">Presence</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>P</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>






                <div id="course7" class="tab-pane fade">
                    <div style="float: right">
                        <label for="c7">Percentage:</label>
                        <progress id="c7" value="32" max="100"> 32% </progress>
                    </div>
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Course 7</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col">Lecture No</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Duration (in hours)</th>
                                        <th scope="col">Presence</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>P</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>








                <div id="course8" class="tab-pane fade">
                    <div style="float: right">
                        <label for="c8">Percentage:</label>
                        <progress id="c8" value="32" max="100"> 32% </progress>
                    </div>
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4>Course 8</h4>
                            <table class="table markstab">
                                <thead>
                                    <tr>
                                        <th scope="col">Lecture No</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Duration (in hours)</th>
                                        <th scope="col">Presence</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>P</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>1-1-2023</td>
                                        <td>1.5</td>
                                        <td>A</td>
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
