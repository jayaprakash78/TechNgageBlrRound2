<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CloggedDrainageMap.aspx.cs" Inherits="Cloud_Security_Assessment.CloggedDrainageMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <br />
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-red">
                <div class="panel-heading">
                    Bengaluru's Clogged Drainage Map
                       
                </div>
                <div class="panel-body">
                    <img src="images/DrainMap.png" />
                </div>
                <div class="panel-footer">
                    <button type="submit" class="btn btn-success">Zoom out +</button>
                    <button type="reset" class="btn btn-info">Zoom in -</button>

                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="server">
</asp:Content>
