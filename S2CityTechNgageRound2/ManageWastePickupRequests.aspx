<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageWastePickupRequests.aspx.cs" Inherits="S2City.ManageWastePickupRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Manage pickup requests</h1>
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

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                            DataKeyNames="RequestNumber" DataSourceID="SqlDataSource2" AllowPaging="True"
                            GridLines="None" AllowSorting="True" Width="100%" CssClass="table table-striped">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="Select">
                                    <ItemTemplate>
                                       <input name="rbtnSelect" type="radio" value='<%# Eval("RequestNumber") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="RequestNumber" HeaderText="Request Number" InsertVisible="False" ReadOnly="True" SortExpression="RequestNumber" />
                                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                                <asp:BoundField DataField="WasteType" HeaderText="Waste Type" SortExpression="WasteType" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="AddressLine" HeaderText="Address Line" SortExpression="AddressLine" />
                                <asp:BoundField DataField="Pincode" HeaderText="Pincode"  SortExpression="Pincode" />
                                <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number"  SortExpression="MobileNumber" />
                                <asp:BoundField DataField="WasteStage" HeaderText="Waste Stage" SortExpression="WasteStage" />
                                <asp:BoundField DataField="RequestRaised" HeaderText="Request Raised" SortExpression="RequestRaised" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:S2CityDBConnectionString %>" SelectCommand="SELECT [RequestNumber], [UserId], [WasteType], [Quantity], [AddressLine], [Pincode], [MobileNumber], [WasteStage], CONVERT(VARCHAR(10),[RequestRaised],3) as [RequestRaised] FROM [WasteManagement] WHERE ([WasteStage] <>'Completed')">

                        </asp:SqlDataSource>

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
                <asp:Button ID="btnUpdateRequest" runat="server" Text="Update Waste Pickup request +" CssClass="btn btn-success" OnClick="btnUpdateRequest_Click" />

            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="server">
</asp:Content>
