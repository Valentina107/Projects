<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Automobili5.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<br/>
 <div class="container">
      <div class="row">
         <div class="col-md-8">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center> 
                           <h4>Registratione</h4>                            
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nome</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Inserisci Nome"></asp:TextBox>
                        </div>
                     </div>
                         <div class="col-md-6">
                        <label>Cognome</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Inserisci Cognome"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col-md-6">
                        <label>Telefono</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Inserisci Telefono" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>          
                     <div class="col-md-6">
                        <label>Ruolo</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Ruolo"></asp:TextBox>
                        </div>
                     </div>    
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div><br/>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Indirizzo E-mail</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Inserisci email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Inserisci Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div><br/>

                  <div class="row">
                     <div class="col-6 mx-auto">        
                           <div class="form-group">
                              <asp:Button class="btn btn-dark d-grid gap-2 col-6 mx-auto" ID="Button1" OnClick="Registrati" runat="server" Text="SignUp" />
                           </div>                      
                     </div>
                  </div><br>
                    <div class="row">
                   <center>
                   <label>Hai già un'account?</label><a href="Login.aspx">Accedi</a>
                   </center>
                  </div>
               </div>
            </div>
            <a href="Home.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>
