<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="settransport.aspx.cs" Inherits="settransport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style >
        .leftdiv {
            float: left;
            width: 50%;
        }
         .rightdiv {
            float: right;
            width: 49%;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>

        <br />
    </p>
    <div class="leftdiv">
        <br />
        <table style="width:100%;">
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="Label4" runat="server" Font-Size="20pt" Text="Set Transport Fee"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td style="text-align: center">
                    <asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="Place"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="15pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td style="text-align: center">
                    <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="Fare"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="15pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Font-Size="15pt" OnClick="Button1_Click" Text="Set" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    <div class="rightdiv">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="500px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchooldbConnectionString %>" DeleteCommand="DELETE FROM [Transport] WHERE [ID] = ? AND (([Place] = ?) OR ([Place] IS NULL AND ? IS NULL)) AND (([Fare] = ?) OR ([Fare] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Transport] ([ID], [Place], [Fare]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchooldbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Transport]" UpdateCommand="UPDATE [Transport] SET [Place] = ?, [Fare] = ? WHERE [ID] = ? AND (([Place] = ?) OR ([Place] IS NULL AND ? IS NULL)) AND (([Fare] = ?) OR ([Fare] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Place" Type="String" />
                <asp:Parameter Name="original_Place" Type="String" />
                <asp:Parameter Name="original_Fare" Type="String" />
                <asp:Parameter Name="original_Fare" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Place" Type="String" />
                <asp:Parameter Name="Fare" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Place" Type="String" />
                <asp:Parameter Name="Fare" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Place" Type="String" />
                <asp:Parameter Name="original_Place" Type="String" />
                <asp:Parameter Name="original_Fare" Type="String" />
                <asp:Parameter Name="original_Fare" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
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





    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
        <br />
    </p>
</asp:Content>

