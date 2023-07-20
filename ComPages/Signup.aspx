<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Flex.ComPages.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Labrada:wght@500&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css" />
    <script src="https://kit.fontawesome.com/d58e49b8e9.js" crossorigin="anonymous"></script>

    <link href="../Content/style.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.6.4.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <title>Flex</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row justify-content-center">
                <div class="col-md-5 text-center px-5 py-4">
                    <img
                        src="https://www.nu.edu.pk/Content/images/Footer-Logo.png"
                        alt=""
                        style="width: 200px; margin-bottom: 40px" />
                    <%--<h4 class="mt-2" style="font-weight: bold; color: #355c7d;">SIGNUP</h4>--%>
                     
                    <div class ="row" > <div class ="col-md-12"><asp:Label id="output" Text ="                              " runat ="server" style="color: red" ></asp:Label></div></div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="name" class="form-label" style="font-size:16px">Name</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="text"
                                class="form-control text-start br"
                                style="height:30px"
                                id="name"
                                placeholder="" />

                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="rollno" class="form-label" style="font-size:16px">Roll Number</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="text"
                                class="form-control text-start br"
                                style="height:30px"
                                id="rollno"
                                placeholder="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="cnic" class="form-label text-start" style="font-size:16px">CNIC</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="number"
                                class="form-control text-start br"
                                style="height:30px"
                                id="cnic"
                                placeholder="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="fname" class="form-label text-start" style="font-size:16px">Father's Name</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="text"
                                class="form-control text-start br"
                                style="height:30px"
                                id="fname"
                                placeholder="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="email" class="form-label text-start" style="font-size:16px">Email</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="email"
                                class="form-control text-start br"
                                style="height:30px"
                                id="email"
                                placeholder="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="password" class="form-label text-start" style="font-size:16px">Password</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="password"
                                class="form-control text-start br"
                                style="height:30px"
                                id="password"
                                placeholder="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="degree" class="form-label" style="font-size:16px">Degree</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="text"
                                class="form-control text-start br"
                                style="height:30px"
                                id="degree"
                                placeholder="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="phone" class="form-label text-start" style="font-size:16px">Phone</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="number"
                                class="form-control text-start br"
                                style="height:30px"
                                id="phone"
                                placeholder="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="dob" class="form-label text-start" style="font-size:16px">Date of Birth</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="date"
                                class="form-control text-start br"
                                style="height:30px"
                                id="dob"
                                placeholder="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="nation" class="form-label text-start" style="font-size:16px">Nationality</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="text"
                                class="form-control text-start br"
                                style="height:30px"
                                id="nation"
                                placeholder="" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 text-start">
                            <label for="address" class="form-label text-start" style="font-size:16px">Address</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat ="server"
                                type="text"
                                class="form-control text-start br"
                                style="height:30px"
                                id="address"
                                placeholder="" />
                        </div>
                    </div>
                   
                    

                    <asp:Button runat ="server" OnClick ="signUp" class="btn btn-lg loginbtn mt-4" href="Login.aspx" Text ="Sign up" Height ="40px"></asp:Button>
                    <h6 class="mt-3" style="color: black">Already have an account? <a href="Login.aspx">Login</a>
                    </h6>
                </div>
                <div class="col-md-7 text-start">
                    <img
                        src="https://images.freeimages.com/images/large-previews/ff1/national-university-fast-lahor-1537049.jpg"
                        alt=""
                        style="height: 100vh" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
