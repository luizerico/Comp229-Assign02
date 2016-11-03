<%@ Page Title="" Language="C#" MasterPageFile="~/AssignSurvey.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Comp229_Assign02.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>About Us</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select * from employee"></asp:SqlDataSource>
</asp:Content>