<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Flex.ComPages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Labrada:wght@500&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"/>
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
      <div class="col-md-5 text-center px-5 py-5">
        <img
          src="https://www.nu.edu.pk/Content/images/Footer-Logo.png"
          alt=""
          style="width: 250px"
        />
           
        <h1 class="mt-5" style="font-weight: bold; color: #355c7d; ">LOGIN</h1>
              
        <div class ="row" > <div class ="col-md-12"><asp:Label id="output" Text ="                              " runat ="server" style="color: red" ></asp:Label></div></div>

        <label for="username" class="form-label mt-3" style="font-size: 16px"  >Roll No</label>
           
        <asp:TextBox runat ="server"
          type="text"
          class="form-control text-center mb-3 br"
          style="height: 30px"
          id="username"
          placeholder="PAK00000"
        />
          
        <label for="password" class="form-label mt-2" style="font-size: 16px">Password</label>
         
        <asp:TextBox runat ="server"
          type="password"
          class="form-control text-center mb-3 br"
          style="height: 30px"
          id="password"
          placeholder="********"
          
        />
        <asp:Button runat ="server" OnClick ="loginToAccount" class="btn btn-lg loginbtn mt-4" Text ="Continue" Height ="40px"></asp:Button>
        <h6 class="mt-3" style="color: black">
          Do not have an account yet? <a href="Signup.aspx">Signup</a>
        </h6>
      </div>
      <div class="col-md-7 text-center">
        <img
          src="https://images.freeimages.com/images/large-previews/ff1/national-university-fast-lahor-1537049.jpg"
          alt=""
          style="height: 100vh"
        />
      </div>
    </div>
        </div>

    </form>
</body>
</html>
