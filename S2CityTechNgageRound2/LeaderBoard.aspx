<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaderBoard.aspx.cs" Inherits="Cloud_Security_Assessment.LeaderBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <table>
                <tr>
                    <td>
                        <h1 class="page-header">Leader Board</h1>
                    </td>
                    <td>
                        <img src="images/Cups.jpg" />
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
                    <table>
                        <tr>
                            <td>Last:
                                <select>
                                    <option value="All">All</option>
                                    <option value="90">90</option>
                                    <option value="60">60</option>
                                    <option value="30">30</option>
                                </select></td>
                            <td>Number of Players:
                                <select>
                                    <option value="50">50</option>
                                    <option value="30">30</option>
                                    <option value="20">20</option>
                                    <option value="10">10</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td>My Rank: 12 </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#home" data-toggle="tab">Batting</a>
                        </li>
                        <li><a href="#profile" data-toggle="tab">Bowling</a>
                        </li>

                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="home">

                            <div class="col-lg-12">
                                <div class="panel panel-default">

                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>

                                                        <th>Player</th>
                                                        <th>Runs</th>
                                                        <th>Rank</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="success">

                                                        <td>Robin</td>
                                                        <td>503</td>
                                                        <td>1</td>

                                                    </tr>
                                                    <tr class="info">


                                                        <td>Jayaprakash</td>
                                                        <td>421</td>
                                                        <td>2</td>


                                                    </tr>
                                                    <tr class="warning">
                                                        <td>Gopi</td>
                                                        <td>401</td>
                                                        <td>3</td>

                                                    </tr>
                                                    <tr class="danger">

                                                        <td>Ravi</td>
                                                        <td>379</td>
                                                        <td>4</td>

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
                           
                             <div class="col-lg-12">
                                <div class="panel panel-default">

                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>

                                                        <th>Player</th>
                                                        <th>Wickets</th>
                                                        <th>Rank</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="success">

                                                        <td>Ravi</td>
                                                        <td>50</td>
                                                        <td>1</td>

                                                    </tr>
                                                    <tr class="info">


                                                        <td>Jayaprakash</td>
                                                        <td>43</td>
                                                        <td>2</td>


                                                    </tr>
                                                    <tr class="warning">
                                                        <td>Gopi</td>
                                                        <td>23</td>
                                                        <td>3</td>

                                                    </tr>
                                                    <tr class="danger">

                                                        <td>Satish</td>
                                                        <td>21</td>
                                                        <td>4</td>

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
