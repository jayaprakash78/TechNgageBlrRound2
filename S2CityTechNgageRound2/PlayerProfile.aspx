<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PlayerProfile.aspx.cs" Inherits="Cloud_Security_Assessment.PlayerProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <table>
                <tr>
                    <td>
                        <h1 class="page-header">Player Profile</h1>
                    </td>
                    <td>
                        <img src="images/Cricket-icon.png" />
                    </td>
                </tr>
            </table>

        </div>
        <!-- /.col-lg-12 -->
    </div>

    <div class="row">

        <div class="col-lg-10">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Your statistics
                       
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#home" data-toggle="tab">Runs</a>
                        </li>
                        <li><a href="#profile" data-toggle="tab">Wickets</a>
                        </li>
                        <li><a href="#messages" data-toggle="tab">Innings</a>
                        </li>
                        <li><a href="#settings" data-toggle="tab">Feeds</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="home">
                            <h4>Runs Scored</h4>
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Total Runs : 541 Runs
                       
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>

                                                        <th>Earned Badges</th>
                                                        <th>Count</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="success">

                                                        <td>Century</td>
                                                        <td>1</td>

                                                    </tr>
                                                    <tr class="info">

                                                        <td>Half Century</td>
                                                        <td>2</td>

                                                    </tr>
                                                    <tr class="warning">

                                                        <td>Innings</td>
                                                        <td>21</td>

                                                    </tr>
                                                    <tr class="danger">

                                                        <td>Less than 30</td>
                                                        <td>10</td>

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
                        <div class="tab-pane fade" id="profile">
                            <h4>Wickets Taken</h4>
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Total wickets : 56 wickets
                       
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>

                                                        <th>Earned Badges</th>
                                                        <th>Count</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="success">

                                                        <td>5 wicket haul</td>
                                                        <td>2</td>

                                                    </tr>
                                                    <tr class="info">

                                                        <td>Hat Trick</td>
                                                        <td>0</td>

                                                    </tr>
                                                    <tr class="warning">

                                                        <td>Overs</td>
                                                        <td>21</td>

                                                    </tr>
                                                    <tr class="danger">

                                                        <td>Economy</td>
                                                        <td>4.5</td>

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
                        <div class="tab-pane fade" id="messages">
                            <h4>Innings info</h4>
                            <p>Not played any innings.</p>
                        </div>
                        <div class="tab-pane fade" id="settings">
                            <h4>Live feed</h4>
                            <table>
                                <tr>
                                    <td>Robin scored 4 runs by raising Waste pickup request</td>
                                </tr>
                                <tr>
                                    <td>Jayaprakash scored 6 runs by raising Perishables Intimation request</td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-6 -->

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="server">
</asp:Content>
