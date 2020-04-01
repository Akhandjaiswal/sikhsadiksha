<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admissionform.aspx.cs" Inherits="admissionform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border-style: inset; border-width: thick; margin-left: 18px; margin-top: 41px;", border-width:5px; border-style:outset;> 




         <p style="text-align: center"> <asp:Label ID="Label1" runat="server" Text="Admission Form" Font-Bold="True" Font-Size="30pt"></asp:Label></p>
    <table style="margin: 0px; padding: 1in 1in 0in 1in; border-style: groove; border-width: medium 0px 0px 0px; border-color: #008000; width:100%; background-color:#b3d1ff;"  border="0"  >
        <tr>
            <td class="auto-style1" colspan="2">
&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2"><p style="text-align: right">
                <asp:Label ID="Label37" runat="server" Font-Size="15pt" Text="Date"></asp:Label></p>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox27" runat="server" Font-Size="15pt" Width="153px" TextMode="Date" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Label ID="Label5" runat="server" Font-Size="20pt" style="font-weight: 700; text-decoration: underline" Text="Student Details"></asp:Label>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Font-Size="15pt" Text="Student Name"></asp:Label>
            &nbsp;<asp:Label ID="Label48" runat="server" Font-Size="13pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Font-Names="15" Width="200px" Font-Size="15pt"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td colspan="2" style="text-align: right">
                <asp:Label ID="Label38" runat="server" Font-Size="15pt" Text="Student Photo"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="10pt" Width="165px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Font-Size="15pt" Text="Class"></asp:Label>
            &nbsp;<asp:Label ID="Label49" runat="server" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="15pt" Width="121px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Class Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label47" runat="server" Font-Size="15pt" Text="Section"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox34" runat="server" Font-Size="15pt" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Font-Size="15pt" Text="D.O.B."></asp:Label>
            &nbsp;<asp:Label ID="Label50" runat="server" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="15pt" TextMode="Date" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="D.O.B. Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label9" runat="server" Font-Size="15pt" Text="Aadhar ID"></asp:Label>
            &nbsp;</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label10" runat="server" Font-Size="15pt" Text="Gender"></asp:Label>
            &nbsp;<asp:Label ID="Label52" runat="server" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3" colspan="5">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="308px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label11" runat="server" Font-Size="15pt" Text="Catagory"></asp:Label>
            &nbsp;<asp:Label ID="Label53" runat="server" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label39" runat="server" Font-Size="15pt" Text="Religion"></asp:Label>
            &nbsp;<asp:Label ID="Label54" runat="server" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox26" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label40" runat="server" Font-Size="15pt" Text="Nationality"></asp:Label>
            &nbsp;<asp:Label ID="Label55" runat="server" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="15pt">
                    <asp:ListItem>Indian</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td colspan="2" class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Label ID="Label12" runat="server" Font-Size="20pt" style="font-weight: 700; text-decoration: underline" Text="Parent Details"></asp:Label>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label13" runat="server" Font-Size="15pt" Text="Father's Name"></asp:Label>
            &nbsp;<asp:Label ID="Label56" runat="server" Font-Size="13pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox6" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Father's Name Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label14" runat="server" Font-Size="15pt" Text="Occupation"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox7" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label15" runat="server" Font-Size="15pt" Text="Mother's Name"></asp:Label>
            &nbsp;<asp:Label ID="Label57" runat="server" Font-Size="13pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox8" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage=" Mother's Name Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label16" runat="server" Font-Size="15pt" Text="Occupation"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox9" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label17" runat="server" Font-Size="15pt" Text="Mobile No."></asp:Label>
            &nbsp;<asp:Label ID="Label58" runat="server" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox10" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter Mobile No. " Font-Bold="True" ForeColor="Red" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter 10 Digits" Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label18" runat="server" Font-Size="15pt" Text="E-mail ID"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox11" runat="server" Font-Size="15pt" TextMode="Email" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox11" ErrorMessage="Email-ID Required" Font-Bold="True" ForeColor="Red" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox11" ErrorMessage="Enter Valid Email-ID" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label19" runat="server" Font-Size="15pt" Text="Gardian's Name"></asp:Label>
            &nbsp;<asp:Label ID="Label59" runat="server" Font-Size="13pt" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox12" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Label ID="Label20" runat="server" Font-Size="20pt" style="font-weight: 700; text-decoration: underline" Text="Permanent Address"></asp:Label>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label21" runat="server" Font-Size="15pt" Text="Address"></asp:Label>
            </td>
            <td class="auto-style3" colspan="5">
                <asp:TextBox ID="TextBox32" runat="server" Height="35px" TextMode="MultiLine" Width="241px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox32" ErrorMessage="Address Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label22" runat="server" Font-Size="15pt" Text="City"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox13" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label41" runat="server" Font-Size="15pt" Text="State"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="15pt" >
                    <asp:ListItem>Select State</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chhattisgarh</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Meghalaya</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Odisha</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Sikkim</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Tripura</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                    <asp:ListItem Enabled="False">Select State</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label45" runat="server" Font-Size="15pt" Text="District"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox28" runat="server" Width="149px" Font-Size="15pt"></asp:TextBox>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList3" ErrorMessage="State Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox28" ErrorMessage="District Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label23" runat="server" Font-Size="15pt" Text="Pin Code"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox14" runat="server" Font-Size="15pt" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox14" ErrorMessage="Pin Code Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style1" colspan="2"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Label ID="Label24" runat="server" Font-Size="20pt" style="font-weight: 700; text-decoration: underline" Text="Correspondance Address"></asp:Label>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
            <td colspan="2" class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="8">
                <asp:Label ID="Label25" runat="server" Font-Size="15pt" Text="Same as Permanent Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/Images/chkimg.png" Width="60px" OnClick="ImageButton1_Click" />
               
                <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/Images/checked.png" Width="60px" OnClick="ImageButton2_Click" />
               
                &nbsp;&nbsp;&nbsp;&nbsp;



            </td>
        </tr>
        <tr>
         
            <td class="auto-style1">

                <asp:Label ID="Label26" runat="server" Font-Size="15pt" Text="Address"></asp:Label>
            </td>
            <td class="auto-style3" colspan="5">
                <asp:TextBox ID="TextBox33" runat="server" Height="35px" TextMode="MultiLine" Width="241px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label27" runat="server" Font-Size="15pt" Text="City"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox15" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label43" runat="server" Font-Size="15pt" Text="State"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="15pt">
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chhastisgarh</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Jammu And Kashmir</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Meghalaya</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Odisha</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Sikkim</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Tripura</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                    <asp:ListItem Selected="True">Select State</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label46" runat="server" Font-Size="15pt" Text="District"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox29" runat="server" Width="160px" Font-Size="15pt"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label28" runat="server" Font-Size="15pt" Text="Pin Code"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox16" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">
                <asp:Label ID="Label29" runat="server" Font-Size="20pt" style="font-weight: 700; text-decoration: underline" Text="Last Class Detail"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label30" runat="server" Font-Size="15pt" Text="Class"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label31" runat="server" Font-Size="15pt" Text="Passing Year"></asp:Label>
            </td>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="Label32" runat="server" Font-Size="15pt" Text="School Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label33" runat="server" Font-Size="15pt" Text="Total Marks"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label34" runat="server" Font-Size="15pt" Text="Obtained Marks"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox17" runat="server" Font-Size="15pt" Width="122px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox18" runat="server" Font-Size="15pt" Width="193px"></asp:TextBox>
            </td>
            <td class="auto-style3" colspan="2">
                <asp:TextBox ID="TextBox19" runat="server" Font-Size="15pt" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox20" runat="server" Font-Size="15pt" Width="161px"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox31" runat="server" Font-Size="15pt"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Font-Size="15pt" Text="Reset" OnClick="Button1_Click" />
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button2" runat="server" Font-Size="15pt" Text="Submit" OnClick="Button2_Click" OnClientClick="ConfirmFields" />
           
                  <script type="text/javascript">
                      function ConfirmFields() {
                          var cspecies = Label3.Text;
                          return confirm("Are you sure you want to submit the following values.\n Species -" + cspecies + "\n");
                      }
    </script>
                
                 </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>






    </div>
</asp:Content>

