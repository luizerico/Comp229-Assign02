<%@ Page Title="" Language="C#" MasterPageFile="~/AssignSurvey.Master" AutoEventWireup="true" CodeBehind="thankyou.aspx.cs" Inherits="Comp229_Assign02.survey.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Thank you, <%=Application["first_name"].ToString() %> <%=Application["last_name"].ToString() %>.</h1>


    <div class="panel panel-default">
        <div class="panel-heading">Below a summary of your survey:</div>
        <div class="panel-body">
            <p>First name: <%=Application["first_name"].ToString() %></p>
            <p>Last name: <%=Application["last_name"].ToString() %></p>
            <p>Email: <%=Application["email"].ToString() %></p>
            <p>Phone number: <%=Application["phone"].ToString() %></p>
            <p>Birthdate: <%=Application["birthdate"].ToString() %></p>
            <p>Gender: <%=Application["gender"].ToString() %></p>
            <p>University/College: <%=Application["university"].ToString() %></p>
            <p>Programming Skills: <%=Application["areas"].ToString() %></p>
        </div>
        <% if (Application["company"].ToString() != "")  {  %>
        <div class="panel-heading">Previous Experience</div>        
        <div class="panel-body">
            <p>Company: <%=Application["company"].ToString() %></p>
            <p>Start date: <%=Application["start"].ToString() %></p>
            <p>End date: <%=Application["end"].ToString() %></p>
        </div>
        <% } %>
    </div>
</asp:Content>
