<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 49px;
        }
        .auto-style3 {
            width: 810px;
        }
        .auto-style4 {
            width: 1153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="font-size: x-large; font-weight: bolder">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="LOGOUT" />
                        &nbsp;
                           
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>
</asp:Content>

