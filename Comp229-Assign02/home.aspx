<%@ Page Title="" Language="C#" MasterPageFile="~/AssignSurvey.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Comp229_Assign02.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 320px;
            height: 320px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-offset-2 col-md-8"><p class="text-center" style="margin-bottom: -120px;">
                        <img alt="" class="auto-style1" src="resources/images/survey-icon-23.gif" /></p>
                    <div class="jumbotron text-center">
                    <h1>&nbsp</h1>
                    <h1>Survey Webapp</h1>
                    <h3>The final solution for you to make surveys on the web.</h3>
                    <h3><a class="btn btn-primary btn-lg" href="/survey/survey.aspx" role="button">Enter in a Sample Survey</a></h3>
                </div>
            </div>
        </div>
</asp:Content>
