<%@ Page MasterPageFile="Site.master" Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Cloud_Security_Assessment.Dashboard" %>

<asp:Content ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">Welcome <i> '<%= Session["Username"].ToString()%>'</i> role as <i> '<%= Session["UserRole"].ToString()%>'</i></h3>

            <table>
                <tr>
                    <td>
                        <img src="images/smart_cities_400.jpg" style="height: 50%" />

                    </td>
                    <td>
                        <div class="col-lg-12">
                            <h3>Swachh Smart City waste management system</h3>

                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-red">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-flag fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">521</div>
                            <div>T20 - My Scores</div>
                        </div>
                    </div>
                </div>
                <a href="PlayerProfile.aspx">
                    <div class="panel-footer">
                        <span class="pull-left">My stats</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-cloud-upload fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">3</div>
                            <div>Pickup Requests</div>
                        </div>
                    </div>
                </div>
                <a href="WastePickupRequests.aspx">
                    <div class="panel-footer">
                        <span class="pull-left">View Requests</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-file-pdf-o fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">5</div>
                            <div>Items Shopped</div>
                        </div>
                    </div>
                </div>
                <a href="RecycledProducts.aspx">
                    <div class="panel-footer">
                        <span class="pull-left">View Cart</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-yellow">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-database fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">9</div>
                            <div>Perishables Prevented</div>
                        </div>
                    </div>
                </div>
                <a href="PerishablesIntimationList.aspx">
                    <div class="panel-footer">
                        <span class="pull-left">View Details</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <div class="row">

        

        <div class="col-lg-4">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <i class="fa  fa-trophy fa-fw"></i>Green Bengaluru T20 Premier League
                </div>
                <div class="panel-body">
                    
                    <table>
                        <tr>
                            <td>
                                <img src="images/cricket-art-ball-bat-wickets.jpg" /> </td>
                            
                        </tr>
                        <tr>
                            <td>Manage waste smartly and enjoy the game of T20 Cricket. Click on <a href="EarningPolicy.aspx">Earning Policy</a></td>
                        </tr>
                        <tr>
                            <td>
                                <img src="images/cricket-batting.jpg"/></td>
                            
                        </tr>
                        <tr><td>Report waste pickup, Report clogged sewages, Prevent perishables from going waste and Shop for re-cycled products start accumulating runs and earn wickets.</td></tr> 
                        <tr>
                            <td>
                                <img src="images/spin-bowling-tips.gif" />
                            </td>
                            
                        </tr>
                        <tr><td>Compete with other fellow Bengalurean who care about making Bengaluru swachh city</td></tr> 
                    </table>

                </div>
            </div>

        </div>
        <div class="col-lg-8">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <i class="fa fa-wrench fa-fw"></i>Tool Guide
                </div>
                <div class="panel-body">
                    <div class="row">
                         <div class="col-lg-12">
                            <h3>T20 - My Scores
                                <small>View your score</small>
                            </h3>
                            <ul>
                                <li>Click on <a href="LeaderBoard.aspx">My Score</a></li>
                                <li>Provide incentive based workflow</li>
                                <li>Earn credits/points</li>
                                <li>Leader board (highlighting achievers and performers)</li>
                                <li>Individual (housing societies, company)/communities (City level ) compete in this game</li>
                            </ul>
                            <h3>Waste Management 
                                <small>Smart waste management</small>
                            </h3>
                            <ul>
                                <li>Click on <a href="RaiseWastePickup.aspx">Waste Management System</a>.</li>
                                <li>Waste generation</li>
                                <li>Waste segregation</li>
                                <li>Waste notification/reporting/complaining</li>
                                <li>Waste collection request</li>
                                <li>Waste transportation (alert- intimation)</li>
                                <li>Waste segregation (information-awareness)</li>
                                <li>Safe Waste disposal (awareness- education)
                                </li>
                            </ul>
                            <h3>Drainage/sewage monitoring system
                                <small>Monitor drains and report any clogged drains</small>
                            </h3>
                            <ul>
                                <li>Click on <a href="CloggedDrainageMap.aspx">Drainage/sewage monitoring system</a></li>
                                <li>Information of clogged drains</li>
                                <li>Crowd sourcing the clogged drains</li>
                            </ul>
                            <h3>Perishables Prevention
                                <small>Raise Perishables Intimation Requests</small>
                            </h3>
                            <ul>
                                <li>Click on <a href="RaisePerishablesRequest.aspx">Perishables Prevention</a>.</li>
                                <li>Link between perishable generators to in need (details of quantity, time, address)</li>
                                <li>Local vegetable markets to NGOs</li>
                                <li>Restaurants to NGOs</li>
                                <li>Food/Perishable products can be donated before it goes waste</li>
                            </ul>
                            <h3>e-cart
                                <small>E-Commerce Portal to sell recycled products</small>
                            </h3>
                            <ul>
                                <li>Click on <a href="RecycledProducts.aspx">e-cart</a> to shop for </li>
                                <li>Recycled products and organic solutions.</li>
                                <li>Smart dustbins, cleaning tools.</li>
                                <li>Compost, and other items</li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
