<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EarningPolicy.aspx.cs" Inherits="Cloud_Security_Assessment.EarningPolicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <table>
                <tr>
                    <td>
                        <h1 class="page-header">Earning Policy</h1>
                    </td>
                    <td>
                        <img src="images/Badges.jpg" />
                    </td>
                </tr>
            </table>

        </div>
        <!-- /.col-lg-12 -->
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Badge Earning Policy
                       
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>

                                    <th>Badge</th>
                                    <th>Earning Policy</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr class="success">

                                    <td>Innings</td>
                                    <td>On completion of 1 Waste pickup request, 1 Clogged drain report, 1 Perishable prevention and 1 recycled product shopping</td>

                                </tr>
                                <tr class="info">

                                    <td>Over</td>
                                    <td>On Raising waste pickup request</td>

                                </tr>
                                <tr class="warning">

                                    <td>Wicket</td>
                                    <td>On waste pickup complete</td>

                                </tr>
                                <tr class="danger">

                                    <td>Century</td>
                                    <td>On completion of 100kgs waste pickup requests</td>

                                </tr>

                                 <tr class="success">

                                    <td>Half Century</td>
                                    <td>On completion of 50kgs waste pickup requests</td>

                                </tr>
                                <tr class="info">

                                    <td>30's</td>
                                    <td>On completion of 50kgs waste pickup requests</td>

                                </tr>
                                <tr class="warning">

                                    <td>5 wicket haul</td>
                                    <td>On completion of 50kgs perishables prevention intimation requests</td>

                                </tr>
                                <tr class="danger">

                                    <td>Hat trick</td>
                                    <td>On completion of 30kgs perishables prevention intimation requests</td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="server">
</asp:Content>
