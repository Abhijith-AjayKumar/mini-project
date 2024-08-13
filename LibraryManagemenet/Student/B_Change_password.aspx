<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="B_Change_password.aspx.cs" Inherits="Student_B_Change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
       
        <tr >
            <th style="padding-bottom:30px;">OLD PASSWORD</th>
            
            <td style="padding-bottom:30px;" >
                <asp:TextBox ID="TextBox1" cssclass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th style="padding-bottom:30px;" >NEW PASSWORD</th>
            
            <td style="padding-bottom:30px;">
                <asp:TextBox ID="TextBox2" cssclass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th style="padding-bottom:30px;">CONFIRM PASSWORD</th>
            
            <td style="padding-bottom:30px;">
                <asp:TextBox ID="TextBox3" cssclass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            
            <td align="center">
                <asp:Button ID="Button1" cssclass="btn btn-danger" runat="server" OnClick="Button1_Click" Text="RESET" />
            </td>
            
        </tr>
      
    </table>
</asp:Content>

