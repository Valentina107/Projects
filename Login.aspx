<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Automobili5.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<br/>
 <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <i class="fa-light fa-square-user"></i>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>SIGN IN</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-dark d-grid gap-2 col-6 mx-auto" ID="Button1" OnClick="Button1_Click" runat="server" Text="Login" />
                        </div>
                         <center> 
                            <label>Nuovo Utente?</label>
                         </center>      
                        <div class="form-group">
                           <a href="Signup.aspx"><input class="btn btn-dark d-grid gap-2 col-6 mx-auto" id="Button2" type="button" value="Sign Up" /></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            
            <a href="Home.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>
