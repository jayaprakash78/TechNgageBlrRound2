<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WasteManagementProducts.aspx.cs" Inherits="Cloud_Security_Assessment.WasteManagementProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <table>
                <tr>
                    <td>
                        <h1 class="page-header">e-cart</h1>
                    </td>
                    <td>
                        <img src="images/Shopping_cart_icon.svg.png" />
                    </td>
                </tr>
            </table>

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-green">
                <div class="panel-heading">
                    Shop for products to manage your waste smartly
                       
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <img src="images/green-waste.jpg" /></td>
                            <td>&nbsp;</td>
                            <td>
                                <img src="images/office-recycling-720.jpg" /></td>

                        </tr>
                        <tr>
                            <td>Rs. 4500/-
                                <input id="Checkbox1" type="checkbox" />
                                &nbsp; Quanity :
                                <input id="Text1" type="text" /></td>
                            <td>&nbsp;</td>

                            <td>Rs. 999/-
                                <input id="Checkbox2" type="checkbox" />
                                &nbsp; Quanity :
                                <input id="Text2" type="text" /></td>

                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <button type="submit" class="btn btn-success">Check out</button>
                </div>

            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="server">
</asp:Content>
