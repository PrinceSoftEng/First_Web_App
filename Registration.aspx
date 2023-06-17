﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Registration.aspx.cs" Inherits="Web_Application_Registration.CS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Css/RegisNLogin.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin: 25% 25% 25% 25%;">
        <tr>
            <td>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUsername" runat="server" Text="UserName:"></asp:Label></td>
            <td style="background:transparent;opacity:0.1;">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ErrorMessage="UserName Cannot be Empty" ForeColor="Red" ControlToValidate="txtUsername"
                    runat="server" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFirstname" runat="server" Text="FirstName:"></asp:Label></td>
            <td style="background:transparent;opacity:0.1">
                <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ErrorMessage="FirstName Required" ForeColor="Red" ControlToValidate="txtFirstname"
                    runat="server" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMiddlename" runat="server" Text="MiddleName:"></asp:Label></td>
            <td style="background:transparent;opacity:0.1">
                <asp:TextBox ID="txtMiddlename" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ErrorMessage="MiddleName Required" ForeColor="Red" ControlToValidate="txtMiddlename"
                    runat="server" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLastname" runat="server" Text="LastName:"></asp:Label></td>
            <td style="background:transparent;opacity:0.1">
                <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ErrorMessage="LastName Required" ForeColor="Red" ControlToValidate="txtLastname"
                    runat="server" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label></td>
            <td style="background:transparent;opacity:0.70">
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                </asp:RadioButtonList></td>
            <td>
                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="rblGender" ErrorMessage="Please select Gender" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMobile" runat="server" Text="Mobile:"></asp:Label>
            </td>
            <td style="background:transparent;opacity:0.1">
                <asp:TextBox ID="txtMobile" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red"
                    ControlToValidate="txtMobile" ErrorMessage="Please Enter 10 Digit Mobile Number."
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td style="background:transparent;opacity:0.1">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ErrorMessage="Email Cannot be Empty" Display="Dynamic" ForeColor="Red"
                    ControlToValidate="txtEmail" runat="server" />
                <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </td>
            <td style="background:transparent;opacity:0.1">
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="txtPassword"
                    runat="server" /></td>
            <td>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Enter Strong Password Using Upper,lower,Number and it Should be between 8 to 15 "
                    ValidationExpression="^.*(?=.{8,15})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$" ForeColor="Red"
                    ControlToValidate="txtPassword"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label></td>
            <td style="background:transparent;opacity:0.1">
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ErrorMessage="Passwords does not match." ForeColor="Red" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirmPassword" runat="server" /></td>
        </tr>
        <tr>
            <td style="vertical-align:top">
                <asp:Label ID="Address" runat="server" Text="Address:"></asp:Label></td>
            <td style="background:transparent;opacity:0.1;vertical-align:top">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="vertical-align:top">
                <asp:RequiredFieldValidator ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Enter Address" ForeColor="Red" runat="server"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCountry" runat="server" Text="Country:"></asp:Label></td>
            <td style="background:transparent;opacity:0.70">
                <asp:DropDownList ID="ddlCountry" class="btn btn-primary dropdown-toggle" runat="server" OnSelectedIndexChanged="ddlCountry_OnSelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblState" runat="server" Text="State:"></asp:Label>
            </td>
            <td style="background:transparent;opacity:0.70">
                <asp:DropDownList ID="ddlState" class="btn btn-primary dropdown-toggle" runat="server" OnSelectedIndexChanged="ddlState_OnSelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label></td>
            <td style="background:transparent;opacity:0.70">
                <asp:DropDownList ID="ddlCity" class="btn btn-primary dropdown-toggle" runat="server" AutoPostBack="true">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblIsActive" runat="server" Text="IsActive"></asp:Label></td>
            <td style="background:transparent;opacity:0.5">
                <asp:RadioButtonList ID="rblIsActive" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnSubmit" class="btn btn-primary  btn-sm" runat="server" Text="Submit" OnClick="btnSubmit_Click" />&nbsp;&nbsp;
                <asp:Button ID="btnCancel" class="btn btn-secondary btn-sm" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Label ID="lblLoginUp" runat="server" Text="Alredy Register? "></asp:Label><a href="Login.aspx">Login</a></td>
        </tr>
    </table>
</asp:Content>
