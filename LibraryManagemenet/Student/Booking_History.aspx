<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Booking_History.aspx.cs" Inherits="Student_Booking_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <ItemStyle BackColor="White" ForeColor="#330099" />
                    <ItemTemplate>
                        <table >
                            <tr>
                                <td>ORDER ID</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>BOOK NAME</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Image ID="Image1" runat="server" Height="59px" ImageUrl='<%# Eval("C_photo") %>' Width="54px" />
                                </td>
                            </tr>
                            <tr>
                                <td>BOOK ID</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("BookId") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">ORDER DATE</td>
                                <td class="auto-style2"></td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>RETURN DATE</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Return_Date") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>STATUS</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

