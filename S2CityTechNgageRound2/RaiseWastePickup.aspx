<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RaiseWastePickup.aspx.cs" Inherits="Cloud_Security_Assessment.RaiseWastePickup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">New Waste Pickup request</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <%--<form role="form" runat="server">--%>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-info">
                <div class="panel-heading">
                    Enter Waste Pickup information                       
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">


                            <div class="form-group">
                                <label>Waste Type</label>
                                <asp:DropDownList ID="WasteType" runat="server" CssClass="form-control">
                                    <asp:ListItem>Household Waste</asp:ListItem>
                                    <asp:ListItem>Plastic Waste</asp:ListItem>
                                    <asp:ListItem>Food Waste</asp:ListItem>
                                    <asp:ListItem>Electronic Waste</asp:ListItem>
                                    <asp:ListItem>Medical Waste</asp:ListItem>
                                    <asp:ListItem>Biodegradable Waste</asp:ListItem>
                                    <asp:ListItem>Hazardous Waste</asp:ListItem>
                                    <asp:ListItem>Chemical Waste</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="form-group">
                                <label>Quantity (in Kgs)</label>
                                <asp:DropDownList ID="Quantity" runat="server" CssClass="form-control">
                                    <asp:ListItem><5</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>                                   
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label for="disabledSelect">Status</label>
                                <input class="form-control" id="disabledInput" type="text" placeholder="For Pickup" disabled>
                            </div>


                        </div>
                        <!-- /.col-lg-6 (nested) -->
                        <div class="col-lg-6">

                            <div class="form-group">
                                <label>Address Line </label>
                                <asp:TextBox ID="txtAddressLine" runat="server" CssClass="form-control" placeholder="Enter Address" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Pin code</label>
                                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" placeholder="Pin Code" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Mobile</label>
                                 <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter Mobile number" ></asp:TextBox>
                            </div>




                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>
                    <!-- /.row (nested) -->

                </div>
                <!-- /.panel-body -->
                <br />
                <div class="panel-footer">
                    <asp:Button ID="btnSubmitRequest" runat="server" Text="Submit Request" CssClass="btn btn-success" OnClick="btnSubmitRequest_Click" />
                    <button type="reset" class="btn btn-info">Reset Button</button>
                </div>
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

    <%--</form>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="server">
</asp:Content>
