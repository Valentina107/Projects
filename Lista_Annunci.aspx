<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Lista_Annunci.aspx.cs" Inherits="Automobili5.Lista_Annunci" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="row">
                  
                    <div class="col-md-5">
                          <br />
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <h4>Modifica Annuncio</h4>
                                        </center>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>ID Annuncio</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="ID Annuncio"></asp:TextBox>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Titolo annuncio</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Titolo annuncio"></asp:TextBox><br />
                                    </div>
                                    <div class="col-md-8">
                                        <asp:Button ID="Button4" class="btn btn-dark" runat="server" Text="Delete" OnClick="Button4_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Lista Annunci</h4>
                                </center>
                                <br />
                            </div>
                            <div class="row">
                                <div class="col-md-8">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                        
                </div>
           
             </div>
        </div>
   </div>

</asp:Content>
