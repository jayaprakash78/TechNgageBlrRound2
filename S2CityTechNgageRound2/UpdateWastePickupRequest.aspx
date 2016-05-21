<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateWastePickupRequest.aspx.cs" Inherits="S2City.UpdateWastePickupRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Update Waste Pickup request</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-info">
                <div class="panel-heading">
                    Update Waste Pickup information                       
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">


                            <div class="form-group">
                                <label>Waste Type</label>
                                <asp:TextBox ID="WasteType" runat="server" CssClass="form-control" Enabled="false"  ></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Quantity (in Kgs)</label>
                                <asp:TextBox ID="Quantity" runat="server" CssClass="form-control" Enabled="false"  ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="disabledSelect">Status</label>
                                 <asp:DropDownList ID="WasteStageStatus" runat="server" CssClass="form-control" OnTextChanged="WasteStageStatus_TextChanged">
                                    <asp:ListItem>Pickup Scheduled</asp:ListItem>
                                    <asp:ListItem>Collected</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>                                    
                                </asp:DropDownList>
                            </div>


                        </div>
                        <!-- /.col-lg-6 (nested) -->
                        <div class="col-lg-6">

                            <div class="form-group">
                                <label>Address Line </label>
                                <asp:TextBox ID="txtAddressLine" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Pin code</label>
                                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Mobile</label>
                                 <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
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
