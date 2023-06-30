<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Vendi.aspx.cs" Inherits="Automobili5.Vendi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        function readImage(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Pubblica</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readImage(this);" CssClass="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <div class="row">
                            <label>Titolo annuncio</label>
                            <div class="col">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Titolo annuncio"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <label>Prezzo</label>
                            <div class="col">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Prezzo"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Km</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Km"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Data fabbricazione</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Data fabbricazione" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Carburante</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Benzina" Value="Benzina" />
                                        <asp:ListItem Text="Diesel" Value="Diesel" />
                                        <asp:ListItem Text="Gpl" Value="Gpl" />
                                        <asp:ListItem Text="Metano" Value="Metano" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Marca</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="BMW" Value="BMW" />
                                        <asp:ListItem Text="Audi" Value="Audi" />
                                        <asp:ListItem Text="Mercedes" Value="Mercedes" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Cambio</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Automatico" Value="Automatico" />
                                        <asp:ListItem Text="Manuale" Value="Manuale" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Kw</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Kw"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <h5>Contatto</h5>
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Paese</label>
                                                <div class="form-group">
                                                    <asp:DropDownList class="form-control" ID="DropDownList5" runat="server">
                                                        <asp:ListItem Text="Italia" Value="Italia" />
                                                        <asp:ListItem Text="Romania" Value="Romania" />
                                                        <asp:ListItem Text="Germania" Value="Germania" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Città</label>
                                                <div class="form-group">
                                                    <asp:DropDownList class="form-control" ID="DropDownList6" runat="server">
                                                        <asp:ListItem Text="Roma" Value="Roma" />
                                                        <asp:ListItem Text="Bologna" Value="Bologna" />
                                                        <asp:ListItem Text="Iasi" Value="Iasi" />
                                                        <asp:ListItem Text="Berlino" Value="Berlino" />
                                                        <asp:ListItem Text="Perugia" Value="Perugia" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">

                                            <div class="col-md-4">
                                                <label>Indirizzo</label>
                                                <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Indirizzo"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Sono un/una</label>
                                                <div class="form-group">
                                                    <asp:DropDownList class="form-control" ID="DropDownList4" runat="server">
                                                        <asp:ListItem Text="Offerente privato" Value="Offerente privato" />
                                                        <asp:ListItem Text="Concessionaria" Value="Concessionaria" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="ID Utente" Visible="False"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Cod_auto" Visible="False"></asp:TextBox>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <label>Descrizione annuncio</label>
                            <div class="col">
                                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Descrizione Annuncio" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <label>Data di pubblicazione</label>
                            <div class="col">
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>

                        <br />
                        <div class="row">
                            <div class="d-grid gap-2 col-6 mx-auto">
                                <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                                <br />
                            </div>

                        </div>
                        <div class="row">
                        </div>
                    </div>
                </div>

                <a href="Home.aspx"><< Torna alla Home</a><br>
                <br>
            </div>
        </div>
    </div>
</asp:Content>




