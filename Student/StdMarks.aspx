<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="StdMarks.aspx.cs" Inherits="Flex.Student.StdMarks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 px-5">
            <div class="row justify-content-center mt-5 pt-5 pb-3">
        <div class="col-md-12 text-center px-5">
            <h3>Marks</h3>

            <div class="d-flex justify-content-center">
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


                         int rows = 8;    // Number of rows in the 2D array
                         int columns = 10; // Number of columns in the 2D array

                         string[,] myArray = new string[rows, columns];
                         string[] MyArray2 = new string[rows];

                         // Assign values to the elements of the array
                         for (int i = 0; i < rows; i++)
                         {
                             MyArray2[i] = "";

                             for (int j = 0; j < columns; j++)
                             {
                                 myArray[i, j] = "-";
                             }
                         }

                         foreach (DataRow row in regcourses.Rows) {

                             myArray[numOfCourses, 0] = Convert.ToString(marks.Rows[numOfCourses]["q1"]);
                             myArray[numOfCourses, 1] = Convert.ToString(marks.Rows[numOfCourses]["q2"]);
                             myArray[numOfCourses, 2] = Convert.ToString(marks.Rows[numOfCourses]["q3"]);
                             myArray[numOfCourses, 3] = Convert.ToString(marks.Rows[numOfCourses]["a1"]);
                             myArray[numOfCourses, 4] = Convert.ToString(marks.Rows[numOfCourses]["a2"]);
                             myArray[numOfCourses, 5] = Convert.ToString(marks.Rows[numOfCourses]["a3"]);
                             myArray[numOfCourses, 6] = Convert.ToString(marks.Rows[numOfCourses]["m1"]);
                             myArray[numOfCourses, 7] = Convert.ToString(marks.Rows[numOfCourses]["m2"]);
                             myArray[numOfCourses, 8] = Convert.ToString(marks.Rows[numOfCourses]["f"]);
                             myArray[numOfCourses, 9] = Convert.ToString(marks.Rows[numOfCourses]["gtotal"]);
                             MyArray2[numOfCourses] = Convert.ToString(row["crsName"]);


                             numOfCourses++;
                             Response.Write("<li class=\"nav-item\">\r\n<a class=\"nav-link tablinks\" data-bs-toggle=\"pill\" href=\"#course" + numOfCourses + "\">" + row["crsName"] + "</a></li>");

                         }




                         %>
                </ul>
            </div>

            <div class="tab-content">
                
                <div id = "course1"  class="tab-pane fade show active">
                    <!-- Course 1 marks go here -->
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4 class="my-3"><%=MyArray2[0]%> </h4>
                            <div class="accordion" id="accordionExample1">
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingOne1">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">
                                      Quiz
                                    </button>
                                  </h2>
                                  <div id="collapseOne1" class="accordion-collapse collapse" aria-labelledby="headingOne1" data-bs-parent="#accordionExample1">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                            <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">Weightage</th>
                                                    <th scope="col">Obtained Marks</th>
                                                    <th scope="col">Total Marks</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">1</th>
                                                    <td>3.33</td>
                                                    <td><%=myArray[0, 0] %></td>
                                                    <td>50</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">2</th>
                                                    <td>3.33</td>
                                                    <td><%=myArray[0, 1] %></td>
                                                    <td>50</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">3</th>
                                                    <td>3.34</td>
                                                    <td><%=myArray[0, 2] %></td>
                                                    <td>50</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingTwo1">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo1" aria-expanded="false" aria-controls="collapseTwo1">
                                      Assignment
                                    </button>
                                  </h2>
                                  <div id="collapseTwo1" class="accordion-collapse collapse" aria-labelledby="headingTwo1" data-bs-parent="#accordionExample1">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[0, 3] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>3.33</td>
                                                <td><%=myArray[0, 4] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">3</th>
                                                <td>3.34</td>
                                                <td><%=myArray[0, 5] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingThree1">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree1" aria-expanded="false" aria-controls="collapseThree1">
                                      Sessional 1
                                    </button>
                                  </h2>
                                  <div id="collapseThree1" class="accordion-collapse collapse" aria-labelledby="headingThree1" data-bs-parent="#accordionExample1">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[0, 6] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFour1">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour1" aria-expanded="false" aria-controls="collapseFour1">
                                        Sessional 2
                                      </button>
                                    </h2>
                                    <div id="collapseFour1" class="accordion-collapse collapse" aria-labelledby="headingFour1" data-bs-parent="#accordionExample1">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[0, 7] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFive1">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive1" aria-expanded="false" aria-controls="collapseFive1">
                                        Final Exam
                                      </button>
                                    </h2>
                                    <div id="collapseFive1" class="accordion-collapse collapse" aria-labelledby="headingFive1" data-bs-parent="#accordionExample1">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>50</td>
                                                <td><%=myArray[0, 8] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingSix1">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix1" aria-expanded="false" aria-controls="collapseSix1">
                                        Grand Total
                                      </button>
                                    </h2>
                                    <div id="collapseSix1" class="accordion-collapse collapse" aria-labelledby="headingSix1" data-bs-parent="#accordionExample1">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>100</td>
                                                <td><%=myArray[0, 9] %></td>
                                                <td>250</td>
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


                <div id= "course2" class="tab-pane fade">
                    <!-- Course 2 marks go here -->
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4 class="my-3"><%=MyArray2[1]%></h4>
                            <div class="accordion" id="accordionExample2">
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingOne2">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne2" aria-expanded="true" aria-controls="collapseOne2">
                                      Quiz
                                    </button>
                                  </h2>
                                  <div id="collapseOne2" class="accordion-collapse collapse" aria-labelledby="headingOne2" data-bs-parent="#accordionExample2">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[1, 0] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[1, 1] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[1, 2] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingTwo2">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2">
                                      Assignment
                                    </button>
                                  </h2>
                                  <div id="collapseTwo2" class="accordion-collapse collapse" aria-labelledby="headingTwo2" data-bs-parent="#accordionExample2">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[1, 3] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[1, 4] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[1, 5] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingThree2">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree2" aria-expanded="false" aria-controls="collapseThree2">
                                      Sessional 1
                                    </button>
                                  </h2>
                                  <div id="collapseThree2" class="accordion-collapse collapse" aria-labelledby="headingThree2" data-bs-parent="#accordionExample2">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[1, 6] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFour2">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour2" aria-expanded="false" aria-controls="collapseFour2">
                                        Sessional 2
                                      </button>
                                    </h2>
                                    <div id="collapseFour2" class="accordion-collapse collapse" aria-labelledby="headingFour2" data-bs-parent="#accordionExample2">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[1, 7] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFive2">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive2" aria-expanded="false" aria-controls="collapseFive2">
                                        Final Exam
                                      </button>
                                    </h2>
                                    <div id="collapseFive2" class="accordion-collapse collapse" aria-labelledby="headingFive2" data-bs-parent="#accordionExample2">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>50</td>
                                                <td><%=myArray[1, 8] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingSix2">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix2" aria-expanded="false" aria-controls="collapseSix2">
                                        Grand Total
                                      </button>
                                    </h2>
                                    <div id="collapseSix2" class="accordion-collapse collapse" aria-labelledby="headingSix2" data-bs-parent="#accordionExample2">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>100</td>
                                                <td><%=myArray[1, 9] %></td>
                                                <td>300</td>
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
                <div id="course3" class="tab-pane fade">
                    <!-- Course 3 marks go here -->
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4 class="my-3"><%=MyArray2[2] %></h4>
                            <div class="accordion" id="accordionExample3">
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingOne3">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne3" aria-expanded="true" aria-controls="collapseOne3">
                                      Quiz
                                    </button>
                                  </h2>
                                  <div id="collapseOne3" class="accordion-collapse collapse" aria-labelledby="headingOne3" data-bs-parent="#accordionExample3">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[2, 0] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[2, 1] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[2, 2] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingTwo3">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo3" aria-expanded="false" aria-controls="collapseTwo3">
                                      Assignment
                                    </button>
                                  </h2>
                                  <div id="collapseTwo3" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample33">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[2, 3] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[2, 4] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[2, 5] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingThree3">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree3" aria-expanded="false" aria-controls="collapseThree3">
                                      Sessional 1
                                    </button>
                                  </h2>
                                  <div id="collapseThree3" class="accordion-collapse collapse" aria-labelledby="headingThree3" data-bs-parent="#accordionExample3">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[2, 6] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFour3">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour3" aria-expanded="false" aria-controls="collapseFour3">
                                        Sessional 2
                                      </button>
                                    </h2>
                                    <div id="collapseFour3" class="accordion-collapse collapse" aria-labelledby="headingFour3" data-bs-parent="#accordionExample3">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[2, 7] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFive3">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive3" aria-expanded="false" aria-controls="collapseFive3">
                                        Final Exam
                                      </button>
                                    </h2>
                                    <div id="collapseFive3" class="accordion-collapse collapse" aria-labelledby="headingFive3" data-bs-parent="#accordionExample3">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>50</td>
                                                <td><%=myArray[2, 8] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingSix3">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix3" aria-expanded="false" aria-controls="collapseSix3">
                                        Grand Total
                                      </button>
                                    </h2>
                                    <div id="collapseSix3" class="accordion-collapse collapse" aria-labelledby="headingSix3" data-bs-parent="#accordionExample3">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>100</td>
                                                <td><%=myArray[2, 9] %></td>
                                                <td>300</td>
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
                <div id="course4" class="tab-pane fade">
                    <!-- Course 4 marks go here -->
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4 class="my-3"><%=MyArray2[3] %></h4>
                            <div class="accordion" id="accordionExample4">
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingOne4">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne4" aria-expanded="true" aria-controls="collapseOne4">
                                      Quiz
                                    </button>
                                  </h2>
                                  <div id="collapseOne4" class="accordion-collapse collapse" aria-labelledby="headingOne4" data-bs-parent="#accordionExample4">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[3, 0] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[3, 1] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[3, 2] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingTwo4">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo4" aria-expanded="false" aria-controls="collapseTwo4">
                                      Assignment
                                    </button>
                                  </h2>
                                  <div id="collapseTwo4" class="accordion-collapse collapse" aria-labelledby="headingTwo4" data-bs-parent="#accordionExample4">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[3, 3] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[3, 4] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[3, 5] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingThree4">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree4" aria-expanded="false" aria-controls="collapseThree4">
                                      Sessional 1
                                    </button>
                                  </h2>
                                  <div id="collapseThree4" class="accordion-collapse collapse" aria-labelledby="headingThree4" data-bs-parent="#accordionExample4">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[3, 6] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFour4">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour4" aria-expanded="false" aria-controls="collapseFour4">
                                        Sessional 2
                                      </button>
                                    </h2>
                                    <div id="collapseFour4" class="accordion-collapse collapse" aria-labelledby="headingFour4" data-bs-parent="#accordionExample4">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[3, 7] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFive4">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive4" aria-expanded="false" aria-controls="collapseFive4">
                                        Final Exam
                                      </button>
                                    </h2>
                                    <div id="collapseFive4" class="accordion-collapse collapse" aria-labelledby="headingFive4" data-bs-parent="#accordionExample4">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>50</td>
                                                <td><%=myArray[3, 8] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingSix4">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix4" aria-expanded="false" aria-controls="collapseSix4">
                                        Grand Total
                                      </button>
                                    </h2>
                                    <div id="collapseSix4" class="accordion-collapse collapse" aria-labelledby="headingSix4" data-bs-parent="#accordionExample4">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>100</td>
                                                <td><%=myArray[3, 9] %></td>
                                                <td>250</td>
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
                <div id="course5" class="tab-pane fade">
                    <!-- Course 5 marks go here -->
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4 class="my-3"><%=MyArray2[4] %></h4>
                            <div class="accordion" id="accordionExample5">
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne5" aria-expanded="true" aria-controls="collapseOne5">
                                      Quiz
                                    </button>
                                  </h2>
                                  <div id="collapseOne5" class="accordion-collapse collapse" aria-labelledby="headingOne5" data-bs-parent="#accordionExample5">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[4,0] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[4,1] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[4,2] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingTwo5">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo5" aria-expanded="false" aria-controls="collapseTwo5">
                                      Assignment
                                    </button>
                                  </h2>
                                  <div id="collapseTwo5" class="accordion-collapse collapse" aria-labelledby="headingTwo5" data-bs-parent="#accordionExample5">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[4,3] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[4,4] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[4,5] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingThree5">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree5" aria-expanded="false" aria-controls="collapseThree5">
                                      Sessional 1
                                    </button>
                                  </h2>
                                  <div id="collapseThree5" class="accordion-collapse collapse" aria-labelledby="headingThree5" data-bs-parent="#accordionExample5">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[4,6] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFour5">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour5" aria-expanded="false" aria-controls="collapseFour5">
                                        Sessional 2
                                      </button>
                                    </h2>
                                    <div id="collapseFour5" class="accordion-collapse collapse" aria-labelledby="headingFour5" data-bs-parent="#accordionExample5">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[4,7] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFive5">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive5" aria-expanded="false" aria-controls="collapseFive5">
                                        Final Exam
                                      </button>
                                    </h2>
                                    <div id="collapseFive5" class="accordion-collapse collapse" aria-labelledby="headingFive5" data-bs-parent="#accordionExample5">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>50</td>
                                                <td><%=myArray[4,8] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingSix5">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix5" aria-expanded="false" aria-controls="collapseSix5">
                                        Grand Total
                                      </button>
                                    </h2>
                                    <div id="collapseSix5" class="accordion-collapse collapse" aria-labelledby="headingSix5" data-bs-parent="#accordionExample5">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>100</td>
                                                <td><%=myArray[4,9] %></td>
                                                <td>250</td>
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
                <div id="course6" class="tab-pane fade">
                    <!-- Course 6 marks go here -->
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4 class="my-3"><%=MyArray2[5] %></h4>
                            <div class="accordion" id="accordionExample6">
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingOne6">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne6" aria-expanded="true" aria-controls="collapseOne6">
                                      Quiz
                                    </button>
                                  </h2>
                                  <div id="collapseOne6" class="accordion-collapse collapse" aria-labelledby="headingOne6" data-bs-parent="#accordionExample6">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[5,0] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[5,1] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[5,2] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingTwo6">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo6" aria-expanded="false" aria-controls="collapseTwo6">
                                      Assignment
                                    </button>
                                  </h2>
                                  <div id="collapseTwo6" class="accordion-collapse collapse" aria-labelledby="headingTwo6" data-bs-parent="#accordionExample6">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[5,3] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[5,4] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[5,5] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingThree6">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree6" aria-expanded="false" aria-controls="collapseThree6">
                                      Sessional 1
                                    </button>
                                  </h2>
                                  <div id="collapseThree6" class="accordion-collapse collapse" aria-labelledby="headingThree6" data-bs-parent="#accordionExample6">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[5,6] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFour6">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour6" aria-expanded="false" aria-controls="collapseFour6">
                                        Sessional 2
                                      </button>
                                    </h2>
                                    <div id="collapseFour6" class="accordion-collapse collapse" aria-labelledby="headingFour6" data-bs-parent="#accordionExample6">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[5,7] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFive6">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive6" aria-expanded="false" aria-controls="collapseFive6">
                                        Final Exam
                                      </button>
                                    </h2>
                                    <div id="collapseFive6" class="accordion-collapse collapse" aria-labelledby="headingFive6" data-bs-parent="#accordionExample6">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>50</td>
                                                <td><%=myArray[5,8] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingSix6">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix6" aria-expanded="false" aria-controls="collapseSix6">
                                        Grand Total
                                      </button>
                                    </h2>
                                    <div id="collapseSix6" class="accordion-collapse collapse" aria-labelledby="headingSix6" data-bs-parent="#accordionExample6">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>100</td>
                                                <td><%=myArray[5,9] %></td>
                                                <td>250</td>
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
                <div id="course7" class="tab-pane fade">
                    <!-- Course 7 marks go here -->
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4 class="my-3"><%=MyArray2[6] %></h4>
                            <div class="accordion" id="accordionExample7">
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingOne7">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne7" aria-expanded="true" aria-controls="collapseOne7">
                                      Quiz
                                    </button>
                                  </h2>
                                  <div id="collapseOne7" class="accordion-collapse collapse" aria-labelledby="headingOne7" data-bs-parent="#accordionExample7">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[6,0] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[6,1] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[6,2] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingTwo7">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo7" aria-expanded="false" aria-controls="collapseTwo7">
                                      Assignment
                                    </button>
                                  </h2>
                                  <div id="collapseTwo7" class="accordion-collapse collapse" aria-labelledby="headingTwo7" data-bs-parent="#accordionExample7">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[6,3] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[6,4] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[6,5] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingThree7">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree7" aria-expanded="false" aria-controls="collapseThree7">
                                      Sessional 1
                                    </button>
                                  </h2>
                                  <div id="collapseThree7" class="accordion-collapse collapse" aria-labelledby="headingThree7" data-bs-parent="#accordionExample7">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[6,6] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFour7">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour7" aria-expanded="false" aria-controls="collapseFour7">
                                        Sessional 2
                                      </button>
                                    </h2>
                                    <div id="collapseFour7" class="accordion-collapse collapse" aria-labelledby="headingFour7" data-bs-parent="#accordionExample7">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[6,7] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFive7">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive7" aria-expanded="false" aria-controls="collapseFive7">
                                        Final Exam
                                      </button>
                                    </h2>
                                    <div id="collapseFive7" class="accordion-collapse collapse" aria-labelledby="headingFive7" data-bs-parent="#accordionExample7">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>50</td>
                                                <td><%=myArray[6,8] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingSix7">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix7" aria-expanded="false" aria-controls="collapseSix7">
                                        Grand Total
                                      </button>
                                    </h2>
                                    <div id="collapseSix7" class="accordion-collapse collapse" aria-labelledby="headingSix7" data-bs-parent="#accordionExample7">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>100</td>
                                                <td><%=myArray[6,9] %></td>
                                                <td>250</td>
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
                <div id="course8" class="tab-pane fade">
                    <!-- Course 8 marks go here -->
                    <div class="row pt-3 pb-5 px-5">
                        <div class="col-md-12 text-start">
                            <h4 class="my-3"><%=MyArray2[7] %></h4>
                            <div class="accordion" id="accordionExample8">
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingOne8">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne8" aria-expanded="true" aria-controls="collapseOne8">
                                      Quiz
                                    </button>
                                  </h2>
                                  <div id="collapseOne8" class="accordion-collapse collapse" aria-labelledby="headingOne8" data-bs-parent="#accordionExample8">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[7,0] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[7,1] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[7,2] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingTwo8">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo8" aria-expanded="false" aria-controls="collapseTwo8">
                                      Assignment
                                    </button>
                                  </h2>
                                  <div id="collapseTwo8" class="accordion-collapse collapse" aria-labelledby="headingTwo8" data-bs-parent="#accordionExample8">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>3.33</td>
                                                <td><%=myArray[7,3] %></td>
                                                <td>50</td>
                                            </tr>
                                            <tr>
                                              <th scope="row">1</th>
                                              <td>3.33</td>
                                              <td><%=myArray[7,4] %></td>
                                              <td>50</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>3.34</td>
                                            <td><%=myArray[7,5] %></td>
                                            <td>50</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                  <h2 class="accordion-header" id="headingThree8">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree8" aria-expanded="false" aria-controls="collapseThree8">
                                      Sessional 1
                                    </button>
                                  </h2>
                                  <div id="collapseThree8" class="accordion-collapse collapse" aria-labelledby="headingThree8" data-bs-parent="#accordionExample8">
                                    <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[7,6] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                  </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFour8">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour8" aria-expanded="false" aria-controls="collapseFour8">
                                        Sessional 2
                                      </button>
                                    </h2>
                                    <div id="collapseFour8" class="accordion-collapse collapse" aria-labelledby="headingFour8" data-bs-parent="#accordionExample8">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>15</td>
                                                <td><%=myArray[7,7] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFive8">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive8" aria-expanded="false" aria-controls="collapseFive8">
                                        Final Exam
                                      </button>
                                    </h2>
                                    <div id="collapseFive8" class="accordion-collapse collapse" aria-labelledby="headingFive8" data-bs-parent="#accordionExample8">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>50</td>
                                                <td><%=myArray[7,8] %></td>
                                                <td>50</td>
                                            </tr>
                                        </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingSix8">
                                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix8" aria-expanded="false" aria-controls="collapseSix8">
                                        Grand Total
                                      </button>
                                    </h2>
                                    <div id="collapseSix8" class="accordion-collapse collapse" aria-labelledby="headingSix8" data-bs-parent="#accordionExample8">
                                      <div class="accordion-body">
                                        <table class="table markstab">
                                          <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Weightage</th>
                                                <th scope="col">Obtained Marks</th>
                                                <th scope="col">Total Marks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>100</td>
                                                <td><%=myArray[7,9] %></td>
                                                <td>250</td>
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
            </div>



        </div>
    </div>
    </div>
</asp:Content>
