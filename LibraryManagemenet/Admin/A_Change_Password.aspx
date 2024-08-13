<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="A_Change_Password.aspx.cs" Inherits="Admin_A_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 77px;
        }
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  align="center">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <th style="padding-bottom:40px">OLD PASSWORD</th>
            <td class="auto-style2">&nbsp;</td>
            <td style="padding-bottom:40px;">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th style="padding-bottom:40px;">NEW PASSWORD</th>
            <td class="auto-style2">&nbsp;</td>
            <td style="padding-bottom:40px;">
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th style="padding-bottom:40px;">CONFIRM PASSWORD</th>
            <td class="auto-style2">&nbsp;</td>
            <td style="padding-bottom:40px;">
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="padding-bottom:20px;">
                <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" OnClick="Button1_Click" Text="RESET" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

