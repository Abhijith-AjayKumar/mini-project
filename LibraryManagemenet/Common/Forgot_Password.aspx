<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Common.master" AutoEventWireup="true" CodeFile="Forgot_Password.aspx.cs" Inherits="Common_Forgot_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 711px;
        }
        .auto-style3 {
            width: 719px;
        }
        .auto-style4 {
            width: 728px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="Center">
        
        <tr>
            
            <td>
                <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                    <asp:View ID="View1" runat="server">
                        <table align="center">
                            <tr>
                                
                                <th style="padding-right:55px;">USERNAME</th>
                                <td>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            
                        </table>
                        <div align="center">
                           
                                    <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" Text="NEXT" OnClick="Button1_Click" />
                               
                           
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table align="center">
                            <tr>
                                
                                <td class="auto-style3"></td>
                                
                            </tr>
                            <tr >
                                
                                <th style="padding:0px 40px 50px 0px;">NAME</th>
                                <td style="padding:0px 40px 50px 0px;">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                
                                <td style="padding:0px 40px 50px 0px;">MOBILE</td>
                                <td style="padding:0px 40px 50px 0px;">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                
                                <td class="auto-style3"></td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                           
                        </table>
        <div align="center">
              <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" Text="NEXT" OnClick="Button2_Click" />
        </div>
                    </asp:View>
                    
                    <asp:View ID="View3" runat="server">
                        <table align="center">
                            <tr>
                               
                                <td class="auto-style4"></td>
                                
                            </tr>
                            <tr>
                                
                                <th style="padding:0px 40px 50px 0px;">NEW PASWORD</th>
                                <td style="padding:0px 40px 50px 0px;">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                
                                <th style="padding:0px 40px 50px 0px;">CONFIRM PASSWORD</th>
                                <td style="padding:0px 40px 50px 0px;">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <div align="center">
                              <asp:Button ID="Button3" cssclass="btn btn-warning" runat="server" Text="OK" OnClick="Button3_Click" />
                               
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-link" runat="server" OnClick="LinkButton1_Click">Back</asp:LinkButton>
                        </div>
                    </asp:View>
                </asp:MultiView>
    </table>
</asp:Content>

