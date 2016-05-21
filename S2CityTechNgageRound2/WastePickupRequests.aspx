<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WastePickupRequests.aspx.cs" Inherits="Cloud_Security_Assessment.WastePickupRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">My Waste pickup requests</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Request Lists
                       
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <%--<table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Select</th>
                                    <th>Request Id</th>
                                    <th>Waste Type</th>
                                    <th>Quantity</th>
                                    <th>Location</th>
                                    <th>Status</th>
                                    <th>Date Raised</th>
                                    <th>Date Collected</th>
                                    <th>Date Completed</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input name="rbtnSelect" type="radio" /></td>
                                    <td>1</td>
                                    <td>E-Waste</td>
                                    <td>20</td>
                                    <td>E-city</td>
                                    <td>Completed</td>
                                    <td>20-Apr-2016</td>
                                    <td>22-Apr-2016</td>
                                    <td>23-Apr-2016</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="rbtnSelect" type="radio" /></td>
                                    <td>2</td>
                                    <td>Bio-Hazard</td>
                                    <td>20</td>
                                    <td>JP Nagar</td>
                                    <td>Completed</td>
                                    <td>22-Apr-2016</td>
                                    <td>23-Apr-2016</td>
                                    <td>24-Apr-2016</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="rbtnSelect" type="radio" /></td>
                                    <td>3</td>
                                    <td>Medical waste</td>
                                    <td>5</td>
                                    <td>Jayanagar</td>
                                    <td>Pickup</td>
                                    <td>28-Apr-2016</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </tbody>
                        </table>--%>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                            DataKeyNames="RequestNumber" DataSourceID="SqlDataSource1" AllowPaging="True"
                             GridLines="None" AllowSorting="True" Width="100%" CssClass="table table-striped">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="Select">
                                    <ItemTemplate>
                                        <input name="rbtnSelect" type="radio" value='<%# Eval("RequestNumber") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="RequestNumber" HeaderText="Request #" InsertVisible="False" ReadOnly="True" SortExpression="RequestNumber" />
                                <asp:BoundField DataField="WasteType" HeaderText="Waste Type" SortExpression="WasteType" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="AddressLine" HeaderText="Location" SortExpression="AddressLine" />
                                <asp:BoundField DataField="WasteStage" HeaderText="Status" SortExpression="WasteStage" />
                                <asp:BoundField HeaderText="Raised" DataField="RequestRaised" SortExpression="RequestRaised" />
                                <asp:BoundField HeaderText="Scheduled" DataField="Scheduled" SortExpression="Scheduled" />
                                <asp:BoundField DataField="Collected" HeaderText="Collected" SortExpression="Collected" />
                                <asp:BoundField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="Black" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S2CityDBConnectionString %>" SelectCommand="SELECT [RequestNumber], [WasteType], [Quantity], [AddressLine], [WasteStage], CONVERT(VARCHAR(10),[RequestRaised],3) as [RequestRaised], CONVERT(VARCHAR(10),[Scheduled],3) as [Scheduled], CONVERT(VARCHAR(10),[Completed],3) as [Completed], CONVERT(VARCHAR(10),[Collected],3) as [Collected] FROM [WasteManagement]"></asp:SqlDataSource>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-6 -->
    </div>




    <div class="row" style="align-content: center">
        <div class="col-lg-12" style="align-content: center">
            <div class="form-group" style="align-content: center">
                <asp:Button ID="btnNewRequest" runat="server" Text="Raise Waste Pickup request +" CssClass="btn btn-success" OnClick="btnNewRequest_Click" />
                <asp:Button ID="btnTrackStatus" runat="server" Text="Track Request status" CssClass="btn btn-info" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete -" CssClass="btn btn-danger" />
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="server">
</asp:Content>
