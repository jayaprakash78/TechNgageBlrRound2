<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportCloggedDrain.aspx.cs" Inherits="Cloud_Security_Assessment.ReportCloggedDrain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageWrapper" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Report Clogged Drain</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-info">
                <div class="panel-heading">
                    Enter Location                        
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <form role="form">
                                <div class="form-group">
                                    <label>Address Line </label>
                                    <input class="form-control" placeholder="Enter Address">
                                </div>
                                <div class="form-group">
                                    <label>Zone</label>
                                    <select class="form-control">
                                        <option>East Zone</option>
                                        <option>West Zone</option>
                                        <option>South Zone</option>
                                        <option>Bommanahalli Zone</option>
                                        <option>Dasarahalli Zone</option>
                                        <option>Mahadevapura  Zone</option>
                                        <option>Rajarajeshwarinagara Zone</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Pin Code </label>
                                    <input class="form-control" placeholder="Enter Pin Code">
                                </div>
                                <div class="form-group">
                                    <label>Upload Picture</label>
                                    <input type="file">
                                </div>
     

                            </form>

                        </div>
                        <!-- /.col-lg-6 (nested) -->
                        <div class="col-lg-6">
                            <table>
                                <tr>
                                    <td>
                                        <img src="images/CloggedDrain1.jpg" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="images/CloggedDrain2.jpg" /></td>
                                </tr>
                            </table>


                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>
                    <!-- /.row (nested) -->

                </div>
                <!-- /.panel-body -->
                <br />
                <div class="panel-footer">
                    <button type="submit" class="btn btn-success">Submit Request</button>
                    <button type="reset" class="btn btn-info">Reset Button</button>
                </div>
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="server">
</asp:Content>
