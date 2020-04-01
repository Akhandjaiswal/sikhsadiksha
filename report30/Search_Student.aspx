<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Student.aspx.cs" Inherits="Search_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 969px;
        }
        .auto-style2 {
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="22pt" Text="Search Student"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="15pt" placeholder="Please Enter Student Name/ Roll No./ Enroll No./ DOB / Father Name/ Mobile No" style="text-align: center" Width="923px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="15pt" Width="105px">
                            <asp:ListItem Selected="True">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                                                                                                                                                                                                                                                                                                                                                                                               <asp:Button ID="Button1" runat="server" Font-Size="15pt" Text="Search" OnClick="Button1_Click1" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Enroll_No" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" EmptyDataText="No Records Founds...." Visible="False" Width="1248px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Button" HeaderText="Pay Fee" SelectText="Pay" ShowHeader="True" ShowSelectButton="True" />
                        
                    <asp:BoundField DataField="Enroll_No" HeaderText="Enroll_No" ReadOnly="True" SortExpression="Enroll_No" />
                    <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:BoundField DataField="csec" HeaderText="Section" SortExpression="csec" />
                    <asp:BoundField DataField="Rollno" HeaderText="Rollno" SortExpression="Rollno" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="Fathers_Name" HeaderText="Fathers_Name" SortExpression="Fathers_Name" />
                    <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Enroll_No], [Student_Name], [Class], [Rollno], [DOB], [Fathers_Name], [Mobile_No], [csec] FROM [admission] WHERE ((([Student_Name] LIKE '%' + ? + '%') OR ([Rollno] LIKE '%' + ? + '%') OR ([DOB] LIKE '%' + ? + '%') OR ([Enroll_No] LIKE '%' + ? + '%') OR ([Fathers_Name] LIKE '%' + ? + '%') OR ([Mobile_No] LIKE '%' + ? + '%')) AND ([Class] = ?))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="-" Name="Student_Name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="-" Name="Rollno" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="-" Name="DOB" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="-" Name="Enroll_No" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="-" Name="Fathers_Name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="-" Name="Mobile_No" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="Class" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
