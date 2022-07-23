<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Hospital_Mangment.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap-5.0.2-dist/style1.css" rel="stylesheet" />
    <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script> 
    <script src="bootstrap-5.0.2-dist/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="container">
      <div class="row" >
          
        <div class="offset-md-4 col-md-3 login-form" >
          <div class="profile-img">
            <img src="Image/image2.jpg" alt="profile_img" height="80px" width="80px;">
          </div>
      
          <h3>Login</h3>
            <div style="border:2px solid black ; padding:5px">
          <form >
            <div class="form-group">
              
            <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Username" ></asp:TextBox>
            </div>
              <br /> 
            <div class="form-group">
              <%--<input type="text" class="form-control" name="password" placeholder="Password">--%>
            <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Password" ></asp:TextBox>
            </div>
              <br>
            <div class="form-group">
              
            <asp:Button ID="Button1" runat="server" Text="Sign In" class="btn btn-primary btn-sm btn-block" OnClick="Button1_Click"  />
            </div>
              
            <div class="form-group forget-password">
                <a href="#">Forget Password</a>
          <asp:Label ID="Label1" runat="server" ></asp:Label>
            </div>
          </form>
                </div>
        </div>
      </div>
    </div>
    </form>
</body>
</html>
