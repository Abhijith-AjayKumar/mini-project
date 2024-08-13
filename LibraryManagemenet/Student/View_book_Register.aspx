<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="View_book_Register.aspx.cs" Inherits="Student_View_book_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnUpdateCommand="DataList1_UpdateCommand" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both" CellSpacing="2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <ItemTemplate >
                        <table align="center">
                            <tr>
                                <td>&nbsp;</td>
                                <td>BOOKING DETAILS</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">l</td>
                                <td>&nbsp;</td>
                                <td>BOOK DETAILS</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">l</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Booking Id</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="bookingid" runat="server" Text='<%# Eval("bookingId") %>'></asp:Label>
                                </td>
                                <td class="auto-style2">l</td>
                                <td>Book Id</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="bid" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">l</td>
                                <td>Name</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="txtname" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Booking Date</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="bookingdate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                </td>
                                <td class="auto-style2">l<br /> l<br /></td>
                                <td>Type</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="btype" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                                    <asp:Image ID="Image1" runat="server" Height="78px" ImageUrl='<%# Eval("C_photo") %>' Width="115px" />
                                </td>
                            </tr>
                            <tr>
                                <td>Booking Status</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="bookingstatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                </td>
                                <td class="auto-style2">l</td>
                                <td>Author</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="bauthor" runat="server" Text='<%# Eval("Author") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">l</td>
                                <td>Description</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="bdescript" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">l</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" CommandName="Return" OnClick="Button1_Click" Text="Return" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
      
    </table>
</asp:Content>

