<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Booking_History.aspx.cs" Inherits="Admin_Booking_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 55px;
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
            <td>
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" OnSelectedIndexChanged="Page_Load">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <ItemStyle BackColor="White" ForeColor="#330099" />
                    <ItemTemplate>
                        <table >
                            <tr>
                                <td>&nbsp;</td>
                                <td>BOOKING DEATILS</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>BOOK DETAILS</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>STUDENT DETAIL</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>Booking Id</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("bookingId") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>Book Id</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("bid") %>'></asp:Label>
                                </td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>Student Id</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Buy Date</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>Name</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("bname") %>'></asp:Label>
                                </td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>Name</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Return Date</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Return_Date") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>Author</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Author") %>'></asp:Label>
                                </td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>UserName</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("Username") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Status</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>Type</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                                </td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>Gender</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>Decription</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                </td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>Address</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>Cover Photo</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Image ID="Image1" runat="server" Height="52px" ImageUrl='<%# Eval("C_photo") %>' Width="62px" />
                                </td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>Age</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>Phone</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                                </td>
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
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

