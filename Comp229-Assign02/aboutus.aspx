<%@ Page Title="" Language="C#" MasterPageFile="~/AssignSurvey.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Comp229_Assign02.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center;">About Us</h2>
    <div class="panel panel-default">
        <div class="panel-heading text-center">Survey Webapp Inc.</div>
        <div class="panel-body text-center">
            <strong>We are a specialized survey company.</strong> <p />
            
            <div > 
                CEO:<p />
                <i>Luiz Erico de Almeida </i><p />
            </div>
            <div > 
                CIO:<p />
                <i>Luiz Erico de Almeida </i><p />
            </div>
            <div > 
                CFO:<p />
                <i>Luiz Erico de Almeida </i><p />
            </div> 
            <div > 
                Programmers Time:<p />
                <i>Luiz Erico de Almeida, Me and Myself </i><br />
                <i style="font-size: 10px;">We are borgs. Resistence is futile.</i><p />
            </div>
            <div > 
                Internal:<p />
                <i>Luiz Erico de Almeida </i><p />
            </div>
        </div>
    </div>
    <%-- 
        Testing datasource...
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select * from employee"></asp:SqlDataSource> --%>



</asp:Content>