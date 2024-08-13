<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Student_Home.aspx.cs" Inherits="Student_Student_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 439px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td>;</td>
        </tr>
        <tr>
            <td> WLECOME to my home
                <asp:Label ID="Label1" runat="server"></asp:Label>

                </td>
            </tr>
                
    </table>
</asp:Content>

