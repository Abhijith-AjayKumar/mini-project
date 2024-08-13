<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Student_Profile.aspx.cs" Inherits="Student_Student_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td align="center" style="font-size: x-large; font-weight: bolder"> PROFILE</td>
        </tr>
        </table>
            <div style="padding-left:1000px">
                    
                       
                        <div  >
                            
                   </div>                    
                </div>
                <table align="center">
                    <tr>
                        <th style="padding-bottom:60px;padding-right:200px;" > NAME</th>
                        <td style="padding-bottom:60px;">            
                            <asp:Label ID="txtname" runat="server"></asp:Label>
                        </td>

                            
                    </tr>
                    
                    <tr>
                        <th style="padding-bottom:60px"> GENDER</th>
                        
                        <td style="padding-bottom:60px">
                            <asp:Label ID="txtgender" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <th style="padding-bottom:60px" > AGE</th>
                        
                        <td style="padding-bottom:60px">
                            <asp:Label ID="txtage" runat="server"></asp:Label>
                        </td>
                    </tr>
                   
                    <tr > 
                        <th style="padding-bottom:60px"> ADDRESS</th>
                       
                        <td style="padding-bottom:60px">
                            <asp:Label ID="txtaddress" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <th style="padding-bottom:60px"> MOBILE NO </th>
                       
                        <td style="padding-bottom:60px">
                            <asp:Label ID="txtmobile" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                      
                        <td align="center">
                            <asp:Button ID="Button1" cssclass="btn btn-danger" runat="server" OnClick="Button1_Click" Text="EDIT" />
                        </td>
                    
                    </tr>
                    
                    
                </table>
</asp:Content>

