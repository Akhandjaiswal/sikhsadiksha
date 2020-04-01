<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SetStudentFee.aspx.cs" Inherits="SetStudentFee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 296px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 315px;
        }
        .auto-style4 {
            width: 299px;
            height: 38px;
        }
        .auto-style5 {
            width: 315px;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

            <hr />
                    <div>
            <table style="width:100%;" >
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2" style="text-align: center">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Font-Underline="True" Text="Set Student Fee"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label17" runat="server" Font-Size="20pt" style="font-weight: 700; text-decoration: underline" Text="Student Details:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="Enroll No"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label20" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="Date Of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label23" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Font-Size="15pt" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label21" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Font-Size="15pt" Text="Father's Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label24" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Font-Size="15pt" Text="Class"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server" Font-Size="15pt" OnTextChanged="TextBox15_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Font-Size="15pt" Text="Section"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label25" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        <hr />
        <div >
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label18" runat="server" Font-Size="20pt" style="font-weight: 700; text-decoration: underline" Text="Apply Fee:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Font-Size="15pt" Text="Admission Fee"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox6" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Font-Size="15pt" Text="Discount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Font-Size="15pt" Text="Monthly Fee"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox7" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Font-Size="15pt" Text="Exam Fee"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label12" runat="server" Font-Size="15pt" Text="Cumputer Fee"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox9" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label16" runat="server" Font-Size="15pt" Text="ID-Card Fee"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label13" runat="server" Font-Size="15pt" Text="Management Fee"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox10" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label14" runat="server" Font-Size="15pt" Text="Transport "></asp:Label>
                    </td>
                    <td class="auto-style5">
                
                <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/Images/chkimg.png" Width="60px" OnClick="ImageButton1_Click" />
               
                <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/Images/checked.png" Width="60px" OnClick="ImageButton2_Click" />
               
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style2" colspan="4">





                        <div  id="divcheck" runat="server" >
                            <table style="width:100%;">
                                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label19" runat="server" Font-Size="15pt" Text="From Place"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="15pt" DataSourceID="SqlDataSource1" DataTextField="Place" DataValueField="Place">
                            <asp:ListItem Selected="True">Select</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchooldbConnectionString %>" ProviderName="<%$ ConnectionStrings:SchooldbConnectionString.ProviderName %>" SelectCommand="SELECT [Place] FROM [Transport]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Label ID="Label15" runat="server" Font-Size="15pt" Text="Transport Fee"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                </tr>
                            </table>
                        </div>







                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Size="15pt" Text="Reset" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Font-Size="15pt" Text="Submit" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>



































            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>
