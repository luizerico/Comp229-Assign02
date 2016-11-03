<%@ Page Title="" Language="C#" MasterPageFile="~/AssignSurvey.Master" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Comp229_Assign02.survey.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <h1>Survey</h1>
    <div class="fom-horizontal">
        <div id="form_page1" class="form_page_active">
            <div class="form-group">
                <asp:Label runat="server" ID="label_firstname" Text="First Name:" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="text_firstname" placeholder="Your first name" ToolTip="Inform your first name" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="text_firstname_req" runat="server" ErrorMessage="Please, inform your first name."
                        ControlToValidate="text_firstname" SetFocusOnError="True" Display="Dynamic" CssClass="validation_error" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="label_lastname" Text="Last Name:" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="text_lastname" placeholder="Your last name" ToolTip="Inform your last name" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="text_lastname_req" runat="server" ErrorMessage="Please, inform your last name."
                        ControlToValidate="text_lastname" SetFocusOnError="True" Display="Dynamic" CssClass="validation_error" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="label_gender" Text="Gender:" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:RadioButtonList runat="server" ID="radiobox_gender" RepeatDirection="Horizontal">
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="radiobox_gender_req" runat="server" ErrorMessage="Please, inform the gender."
                        ControlToValidate="radiobox_gender" SetFocusOnError="True" Display="Dynamic" CssClass="validation_error" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="label_birthdate" Text="Birthdate:" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:Calendar runat="server" ID="date_birthdate"></asp:Calendar>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="label_email" Text="Email:" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="text_email" placeholder="Your email" ToolTip="Inform a valid email to contact you." TextMode="Email" CssClass="form-control" />
                    <asp:RegularExpressionValidator runat="server" ID="text_email_exp" ErrorMessage="Invalid email" ValidationExpression="^\S+@\S+\.\S+$" ControlToValidate="text_email" CssClass="validation_error" Display="Dynamic" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="label_phone" Text="Contact Phone:" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="text_phone" placeholder="(XXX) XXX XXXX" ToolTip="Inform a valid phone number to contact you." TextMode="Phone" CssClass="form-control" />
                    <asp:RegularExpressionValidator runat="server" ID="text_phone_exp" ErrorMessage="Invalid phone number" ValidationExpression="^\(?\d{3}\)?(\s|-)\d{3}-\d{4}$" ControlToValidate="text_phone" CssClass="validation_error" Display="Dynamic" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="label_country" Text="Country:" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:DropDownList runat="server" ID="dropdown_country" CssClass="form-control">
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
            </div>
            <div class="form-group">
                <%-- Returning false from javascript to prevent the form processing  --%>
                <asp:Button runat="server" ID="button1" Text="Next Page"
                    OnClientClick="javascript:survey_changepage('form_page1', 'form_page2'); return false;" CssClass="btn btn-default" />
            </div>
        </div>

        <div id="form_page2" class="form_page_inactive">
            <div class="form-group">
                <asp:Label runat="server" ID="label_university" Text="College/University:" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="text_university" placeholder="Where you graduated" ToolTip="Inform the institution's name where you have graduated." CssClass="form-control" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="label_areas" Text="Areas:" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:CheckBoxList runat="server" ID="checkbox_areas" CssClass="">
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
            </div>
            <div class="form-group">
                <%-- Returning false from javascript to prevent the form processing  --%>
                <asp:Button runat="server" ID="button2" Text="Previous Page"
                    OnClientClick="javascript:survey_changepage('form_page2', 'form_page1'); return false;" CssClass="btn btn-default" />
                <asp:Button runat="server" ID="button_next" Text="Next Page"
                    OnClientClick="javascript:survey_changepage('form_page2', 'form_page3'); return false;" CssClass="btn btn-default" />
            </div>
        </div>

        <div id="form_page3" class="form_page_inactive">
            <div class="form-group">
                <asp:Label runat="server" ID="label_haveworked" Text="Worked before?" CssClass="col-md-2 control-label" />
                <div class="col-md-10">
                    <asp:DropDownList runat="server" ID="checkbox_haveworked"
                        OnChange="javascript:survey_changeWorkedBefore(this, 'worked_before'); return false;" CssClass="form-control">
                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                        <asp:ListItem Value="No" Selected="True">No</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div id="worked_before" class="worked_before">
                <div class="form-group">
                    <asp:Label runat="server" ID="label_company1" Text="Company:" CssClass="col-md-2 control-label" />
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="text_company1" ToolTip="Inform the company's name" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="label_start1" Text="Start:" CssClass="col-md-2 control-label" />
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="calendar_start1" TextMode="Date" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="label_end1" Text="End:" CssClass="col-md-2 control-label" />
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="calendar_end1" TextMode="Date" CssClass="form-control" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
            <div class="form-group">
                <asp:Button runat="server" ID="button_previous" Text="Previous Page"
                    OnClientClick="javascript:survey_changepage('form_page3', 'form_page2'); return false;" CssClass="btn btn-default" />
                <asp:Button runat="server" ID="button_submit" Text="Submit" OnClick="button_submit_Click" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
