<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Automobili5.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="p-3 mb-2 bg-body-tertiary">
        <div class="container p-1">

            <div id="carouselExampleCaptions" class="carousel slide">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Images/mercedes2.jpeg" style="width: 95%; height: 500px" title="" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <p>MERCEDES-BENZ 300 SL SPEEDESTER BUILD-2021-VERDE</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Images/audi3.jpg" style="width: 95%; height: 500px" title="" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <p>AUDI-A5-2019-GRIGIA</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Images/bmw6.jpg" style="width: 95%; height: 500px" title="" alt="..">
                        <div class="carousel-caption d-none d-md-block">
                            <p>BMW-SERIE 8-2020-BIANCA</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>


        <div class="container ">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h3>Our Features</h3>
                        <br />
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <i class="bi bi-suit-heart-fill"></i>
                        <h4>Trova l'annuncio che fa per te</h4>
                        <p class="text-justify">Tantissimi annunci disponibili, trova quello che fa per te con un solo click! </p>
                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success btn-lg  border-warning" runat="server" Style="--bs-btn-padding-y: .35rem; --bs-line-height: .85rem; --bs-btn-font-size: .95rem; border-block-start-color: pink;"
                            href="Visualizza_Annuncio.aspx">Visualizza annunci</asp:LinkButton>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <i class="bi bi-pencil-fill"></i>
                        <h4>Publicca il tuo annuncio</h4>
                        <p class="text-justify">Inserisci il tuo primo annuncio in modo molto semlice!</p>
                        <asp:LinkButton ID="LinkButton2" CssClass="btn btn-success btn-lg border-warning" runat="server" Style="--bs-btn-padding-y: .35rem; --bs-line-height: .85rem; --bs-btn-font-size: .95rem; border-block-start-color: pink;" href="Vendi.aspx  ">Pubblica annuncio</asp:LinkButton>
                    </center>
                </div>
                <div class="col-md-3">
                    <center>
                        <i class="bi bi-postcard-heart-fill"></i>
                        <h4>Contatti</h4>
                        <p class="text-justify">Serve aiuto? Contatta il nostro servizo clienti!</p>
                        <asp:LinkButton ID="LinkButton3" CssClass="btn btn-success btn-lg border-warning" runat="server" Style="--bs-btn-padding-y: .35rem; --bs-line-height: .85rem; --bs-btn-font-size: .95rem; border-block-start-color: pink;" >Scopri di più</asp:LinkButton>
                    </center>
                </div>
            </div>
            <br />

        </div>
        <div id="ErrorDiv" runat="server">
        </div>
    </div>
</asp:Content>
