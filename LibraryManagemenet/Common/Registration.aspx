<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Common.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Common_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 680px;
        }
        .auto-style2 {
            width: 185px;
        }
        .auto-style3 {
            width: 387px;
        }
        .auto-style4 {
            width: 387px;
            height: 93px;
        }
        .auto-style5 {
            width: 185px;
            height: 93px;
        }
        .auto-style6 {
            height: 93px;
        }
        .auto-style7 {
            width: 387px;
            height: 44px;
        }
        .auto-style8 {
            width: 185px;
            height: 44px;
        }
        .auto-style9 {
            height: 44px;
        }
        .auto-style10 {
            width: 387px;
            height: 39px;
        }
        .auto-style11 {
            width: 185px;
            height: 39px;
        }
        .auto-style12 {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h2 style="color:black;text-align:center;padding-bottom:30px">REGISTRATION</h2>
    </div>
    <table align="center" width="75%">
        
     
        <tr>
            <th> NAME</th>
          
            <td>
                <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <th>GENDER</th>
            
            <td>
                <asp:RadioButtonList ID="txtgender"  runat="server">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtgender" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <th>AGE</th>
            
            <td>
                <asp:TextBox ID="txtage" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtage" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <th> ADDRESS</th>
            
            <td>
                <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <th> MOBILE NO</th>
            
            <td>
                <asp:TextBox ID="txtmobile" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    
        <tr>
            <th> USERNAME</th>
           
            <td >
                <asp:TextBox ID="txtusername" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtusername" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    
        <tr>
            <th> PASSWORD</th>
            
            <td >
                <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpassword" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
      
    </table>
    <div class="text-center">
            
            

                <asp:Button ID="Button2" CssClass="btn btn-info" runat="server" Font-Bold="True" Font-Strikeout="False" ForeColor="White" OnClick="Button1_Click" Text="Register" />
</div>
</asp:Content>

