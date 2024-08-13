<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Common.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Common_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="text-center" style="color:red">LOGIN</h2>
    
        
      <table align="center" >
          <tr style="padding-bottom: 20px;">
              <th style="align-content: flex-end;">USERNAME</th>
              <td style="align-content: flex-start;">
                  <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>

              </td>

          </tr>
        <tr>
            <th style="align-content:flex-end;padding-top:20px;padding-right:50px;" > PASSWORD</th>
            <td style="align-content:flex-start;padding-top:20px;" >
                <asp:TextBox ID="txtpassword" runat="server"  TextMode="Password" CssClass="form-control"></asp:TextBox>
            </td>
           
        </tr>
    </table>
    <div class="text-center" style="padding-top:20px;">
         
                <asp:Button ID="Button2" cssclass="btn btn-danger" runat="server" Height="33px" Text="LOGIN" OnClick="Button1_Click" />
            <br />
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton2_Click">forgot password</asp:LinkButton>
    </div>

</asp:Content>

