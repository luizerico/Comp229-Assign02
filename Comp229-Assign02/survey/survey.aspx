<%@ Page Title="" Language="C#" MasterPageFile="~/AssignSurvey.Master" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Comp229_Assign02.survey.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Survey</h1>
    <div id="form_page1" class="form_page_active" style="display:block;">
        <div>
            <asp:Label runat="server" ID="label_firstname" Text="First Name:" />
            <asp:TextBox runat="server" ID="text_firstname" placeholder="Your first name" ToolTip="Inform your first name" />
        </div>
        <div>
            <asp:Label runat="server" ID="label_lastname" Text="Last Name:" />
            <asp:TextBox runat="server" ID="text_lastname" placeholder="Your last name" ToolTip="Inform your last name" />
        </div>
        <div>
            <asp:Label runat="server" ID="label_gender" Text="Gender:" />
            <asp:RadioButtonList runat="server" ID="radiobox_gender">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>
            <asp:Label runat="server" ID="label_birthdate" Text="Birthdate:" />
            <asp:Calendar runat="server" ID="date_birthdate"></asp:Calendar>
        </div>
        <div>
            <asp:Label runat="server" ID="label_email" Text="Email:" />
            <asp:TextBox runat="server" ID="text_email" placeholder="Your email" ToolTip="Inform a valid email to contact you." />
        </div>
        <div>
            <asp:Label runat="server" ID="label_phone" Text="Contact Phone:" />
            <asp:TextBox runat="server" ID="text_phone" placeholder="(XXX) XXX XXXX" ToolTip="Inform a valid phone number to contact you." />
        </div>
        <div>
            <asp:Label runat="server" ID="label_country" Text="Country:" />
            <asp:DropDownList runat="server" ID="dropdown_country">
                <asp:ListItem>Argentina</asp:ListItem>
                <asp:ListItem>Brasil</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>EUA</asp:ListItem>
                <asp:ListItem>England</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:Label runat="server" ID="label_university" Text="College/University:" />
            <asp:TextBox runat="server" ID="text_university" placeholder="Where you graduated" ToolTip="Inform the institution's name where you have graduated." />
        </div>
        <div>
            <asp:Label runat="server" ID="label_areas" Text="Areas:" />
            <asp:CheckBoxList runat="server" ID="checkbox_areas">
                <asp:ListItem Value="C++">C++</asp:ListItem>
                <asp:ListItem Value="C#">C#</asp:ListItem>
                <asp:ListItem Value="Java">Java</asp:ListItem>
                <asp:ListItem Value="PHP">PHP</asp:ListItem>
                <asp:ListItem Value="Go">Go</asp:ListItem>
                <asp:ListItem Value="Python">Python</asp:ListItem>
                <asp:ListItem Value="Javascript">Javascript</asp:ListItem>
                <asp:ListItem Value="Perl">Perl</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            <%-- Returning false from javascript to prevent the form processing  --%> 
            <asp:Button runat="server" ID="button_next" Text="Next Page" 
                OnClientClick="javascript:survey_changepage('form_page1', 'form_page2'); return false;"/>
        </div>
    </div>

    <div id="form_page2" class="form_page_inactive" style="display:none;">
        <div>
            <asp:Label runat="server" ID="label_haveworked" Text="Have you worked before?" />
            <asp:RadioButtonList runat="server" ID="radiobox_haveworked">
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
                <asp:ListItem Value="No">No</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>
            <asp:Label runat="server" ID="label_company1" Text="Company:" /> 
            <asp:TextBox runat="server" ID="text_company1" Tooltip="INform the company's name"/>
        </div>
        
        <div>
            <asp:Label runat="server" ID="label_start1" Text="Start:" /> 
            <asp:Calendar runat="server" ID="calendar_start1" />
        </div>
        <div>
            <asp:Label runat="server" ID="label_end1" Text="End:" /> 
            <asp:Calendar runat="server" ID="calendar_end1" />
        </div>
        <div>
            <asp:Button runat="server" ID="button_previous" Text="Previous Page" 
                OnClientClick="javascript:survey_changepage('form_page2', 'form_page1'); return false;" />
            <asp:Button runat="server" ID="button_submit" Text="Submit" />
        </div>

    </div>
</asp:Content>
