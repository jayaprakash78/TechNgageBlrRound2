<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecycledProducts.aspx.cs" Inherits="Cloud_Security_Assessment.RecycledProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-10">
            <table>
                <tr>
                    <td>
                        <h2 class="page-header">Recycled Products, Toys and accessories </h2>
                    </td>
                    <td>
                        <img src="images/recycle.png" />
                    </td>
                </tr>
            </table>

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-10">
            <div class="panel panel-green">
                <div class="panel-heading">
                    Shop for recycled products                       
                </div>
                <div class="panel-body">
                    <table >
                        <tr>
                            <td>
                                <img src="images/12.jpg" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <img src="images/home-holiday-nativities-recycled-paper-nativity-700x700.jpg" />
                            </td>

                        </tr>
                        <tr>
                            <td>Rs. 199/-
                                <input id="Checkbox1" type="checkbox" />
                                &nbsp; Quanity :
                                <input id="Text1" type="text" /></td>
                            <td>&nbsp;</td>

                            <td>Rs. 299/-
                                <input id="Checkbox2" type="checkbox" />
                                &nbsp; Quanity :
                                <input id="Text2" type="text" /></td>

                        </tr>
                        <tr>
                            <td>
                                <img src="images/L-recyc-pvc-shoes.jpeg" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <img src="images/Label-Whore-Sofa-01-670x372.jpg" />
                            </td>

                        </tr>
                        <tr>
                            <td>Rs. 499/-
                                <input id="Checkbox3" type="checkbox" />
                                &nbsp; Quanity :
                                <input id="Text3" type="text" /></td>
                            <td>&nbsp;</td>
                            <td>Rs. 22299/-
                                <input id="Checkbox4" type="checkbox" />
                                &nbsp; Quanity :
                                <input id="Text4" type="text" /></td>

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
