<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fee_Payment.aspx.cs" Inherits="Fee_Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
  
       
             

          <asp:ScriptManager ID="ScriptManager1" runat="server"/>
 <div>
 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
 <ContentTemplate>
 <fieldset style="width:30%">
 <legend>Update Panel-1</legend>
 <asp:Label ID="lbl1" runat="server" ForeColor="green"/><br />
 <asp:Button ID="btnUpdate1" runat="server" Text="Update Both Panels" OnClick="btnUpdate1_Click" />
 <asp:Button ID="btnUpdate2" runat="server" Text="Update This Panel" OnClick="btnUpdate2_Click" />







    
        <div>
            <br />
            <table style="width:100%;">
                <tr>
                    <td colspan="5" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Size="30pt" style="font-weight: 700" Text="Fee Details"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="Enroll No."></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Font-Size="15pt" Text="Class"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Font-Size="15pt" Text="Section"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Font-Size="15pt" Text="Father's Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Size="15pt" RepeatDirection="Horizontal" Width="1349px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                            <asp:ListItem>April</asp:ListItem>
                            <asp:ListItem>May</asp:ListItem>
                            <asp:ListItem>June</asp:ListItem>
                            <asp:ListItem>July</asp:ListItem>
                            <asp:ListItem>August</asp:ListItem>
                            <asp:ListItem>September</asp:ListItem>
                            <asp:ListItem>October</asp:ListItem>
                            <asp:ListItem>November</asp:ListItem>
                            <asp:ListItem>December</asp:ListItem>
                            <asp:ListItem>January</asp:ListItem>
                            <asp:ListItem>Febuary</asp:ListItem>
                            <asp:ListItem>March</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                   </table>
    



       
            




        








            <table>



                <tr>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label38"  Font-Size="15pt" runat="server" Text="Examinations"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBoxList  Font-Size="15pt"  ID="CheckBoxList2" RepeatDirection="Horizontal"  runat="server" Width="342px" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged">
                            <asp:ListItem>Exam -1</asp:ListItem>
                            <asp:ListItem>Exam -2</asp:ListItem>
                            <asp:ListItem>Exam -3</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td>&nbsp;




                    </td>
                    



                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;
                         </td>
                    <td>


                        
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Font-Size="15pt" Text="Pay Date"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Font-Size="15pt" OnLoad="Label13_Load" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Font-Size="15pt" Text="Pay Time"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label15" runat="server" Font-Size="15pt" OnLoad="Label15_Load" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label16" runat="server" Font-Size="15pt" Text="Pre- Balance"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label17" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label18" runat="server" Font-Size="15pt" Text="Transport Fee"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label19" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label20" runat="server" Font-Size="15pt" Text="Monthly Fee"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label21" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label22" runat="server" Font-Size="15pt" Text="Exam Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label23" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label34" runat="server" Font-Size="15pt" Text="Computer Fee"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label35" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label36" runat="server" Font-Size="15pt" Text="Exam Fee"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label37" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label24" runat="server" Font-Size="15pt" Text="Other Fee"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label25" runat="server" Font-Size="15pt" Text="Reasons"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label26" runat="server" Font-Size="15pt" Text="Total Fee"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label31" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label27" runat="server" Font-Size="15pt" Text="Discount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label28" runat="server" Font-Size="15pt" Text="Payable Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label33" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label29" runat="server" Font-Size="15pt" Text="Total Paid"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="15pt"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label30" runat="server" Font-Size="15pt" Text="Due"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label32" runat="server" Font-Size="15pt" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: right">
                        <asp:Button ID="Button1" runat="server" Font-Size="15pt" style="font-weight: 700" Text="Reset" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" Font-Size="15pt" OnClick="Button2_Click" style="font-weight: 700" Text="Pay" />
                    </td>
                </tr>
                </table>




            <br />
            <br />
            <br />
            <br />
        </div>












 <asp:Label ID="lbl2" runat="server" ForeColor="red" />

 </ContentTemplate>

 </asp:UpdatePanel>
 </div>



    
    </div>




       
       


    </form>
</body>
</html>
