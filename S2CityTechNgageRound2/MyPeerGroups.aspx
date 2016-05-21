<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyPeerGroups.aspx.cs" Inherits="Cloud_Security_Assessment.MyPeerGroups" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Teams</h1>

        </div>
        <!-- /.col-lg-12 -->
    </div>

    <div class="row">
        <div class="col-lg-12">
            Create your own teams based on your colleague network and add friends to it, and play matches between teams.         

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <br />
    <br />
    <br />
    <div class="row" style="align-content: center">
        <div class="col-lg-12" style="align-content: center">
            <div class="form-group" style="align-content: center">
                <asp:Button ID="btnNewScan" runat="server" Text="Create New Group +" CssClass="btn btn-success" />
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="server">
</asp:Content>
