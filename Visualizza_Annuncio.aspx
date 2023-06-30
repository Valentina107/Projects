  <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Visualizza_Annuncio.aspx.cs" Inherits="Automobili5.Visualizza_Annuncio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="Repeater2" ItemType="Automobili5.Classes.Automobili" runat="server">
        <ItemTemplate>

            <div class="container p-2">
                <div class="row">
                    <center>
                        <div class="col-md-8">
                            <div class="card">

                                <center>
                                    <img src="auto/<%#Item.foto%>" class="card-img-top" alt="..." style="width: 740px; height: 530px">
                                </center>

                                <div class="card-body" style="text-align: left;">
                                    <h2 class="card-title" runat="server"><%#Item.titolo%></h2>
                                    <h3 class="card-title" runat="server"><%#Item.prezzo%> <i class="fa fa-eur" aria-hidden="true"></i></h3>
                                    <div class="row">
                                        <div class="col">
                                            <hr>
                                        </div>
                                    </div>
                                    <b>
                                        <asp:Label ID="Label13" runat="server" Text="Dati principali"> </asp:Label></b><br />
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:Label ID="Label7" runat="server" Text="Km "><b><%# Item.kilometri %> </b></asp:Label>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="Label8" runat="server" Text="Kw "><b><%# Item.kw %> </b></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:Label ID="Label9" runat="server" Text="Marca "><b><%#Item.marca %> </b></asp:Label>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="Label10" runat="server" Text="Cambio "><b><%#Item.cambio %> </b></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:Label ID="Label11" runat="server" Text="Carburante "><b><%#Item.carburante%> </b></asp:Label>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="Label12" runat="server" Text="Data_fabricazione "><b> <i class="fa fa-calendar" aria-hidden="true"></i> <%#Item.data_fabbricazione%> </b></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col">
                                            <hr>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <p runat="server">
                                                <b>Descrizione </b>
                                                <br />
                                                <%#Item.descrizione%>
                                            </p>
                                        </div>
                                    </div>
                                    <label><b>Contatto</b></label>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <p runat="server"><b><%#Item.sono_un_una%></b></p>
                                                    <p runat="server"><%#Item.nome%> <%#Item.cognome%></p>
                                                    <label><b>Indirizzo</b></label>
                                                    <p runat="server"><i class="fa fa-map" aria-hidden="true"></i><%#Item.paese%>, <%#Item.città%>, <%#Item.indirizzo%> </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <center>
                                        <div class="row">
                                            <div class="col">
                                                <button type="button" class="btn btn-outline-primary" runat="server"><i class="fa fa-phone" aria-hidden="true"></i><%#Item.telefono%></button>
                                                <button type="button" class="btn btn-primary" runat="server"><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:<%#Item.email%>"><%#Item.email%></a> </button>
                                                <br />
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </center>
                </div>
            </div>
            <br />
        </ItemTemplate>
    </asp:Repeater>

    <asp:Label ID="ErrorDiv" runat="server" Text=""></asp:Label>
</asp:Content>






