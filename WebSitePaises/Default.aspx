<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODIGO_PAIS" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" OnClientClick="return confirm('Seguro desea eliminar ?');"  runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CODIGO_PAIS" HeaderText="CODIGO_PAIS" SortExpression="CODIGO_PAIS" />
                <asp:BoundField DataField="NOMBRE_PAIS" HeaderText="NOMBRE_PAIS" SortExpression="NOMBRE_PAIS" />
                <asp:BoundField DataField="NUMERO_HABITANTES_PAIS" HeaderText="NUMERO_HABITANTES_PAIS" SortExpression="NUMERO_HABITANTES_PAIS" />
                <asp:BoundField DataField="IDIOMA_PREDOMINANTE_PAIS" HeaderText="IDIOMA_PREDOMINANTE_PAIS" SortExpression="IDIOMA_PREDOMINANTE_PAIS" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="delete_pais_sp" InsertMethod="insertar_pais_sp" SelectMethod="lista_paises" TypeName="Paises.WebService" UpdateMethod="actualizar_pais_sp">
            <DeleteParameters>
                <asp:Parameter Name="CODIGO_PAIS" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NOMBRE_PAIS" Type="String" />
                <asp:Parameter Name="NUMERO_HABITANTES_PAIS" Type="Int32" />
                <asp:Parameter Name="IDIOMA_PREDOMINANTE_PAIS" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CODIGO_PAIS" Type="Int32" />
                <asp:Parameter Name="NOMBRE_PAIS" Type="String" />
                <asp:Parameter Name="NUMERO_HABITANTES_PAIS" Type="Int32" />
                <asp:Parameter Name="IDIOMA_PREDOMINANTE_PAIS" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="CODIGO_PAIS" HeaderText="CODIGO_PAIS" SortExpression="CODIGO_PAIS" Visible="False" />
                <asp:BoundField DataField="NOMBRE_PAIS" HeaderText="NOMBRE_PAIS" SortExpression="NOMBRE_PAIS" />
                <asp:BoundField DataField="NUMERO_HABITANTES_PAIS" HeaderText="NUMERO_HABITANTES_PAIS" SortExpression="NUMERO_HABITANTES_PAIS" />
                <asp:BoundField DataField="IDIOMA_PREDOMINANTE_PAIS" HeaderText="IDIOMA_PREDOMINANTE_PAIS" SortExpression="IDIOMA_PREDOMINANTE_PAIS" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="COD_CAPITAL" DataSourceID="ObjectDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" OnClientClick="return confirm('Seguro desea eliminar ? ');" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="COD_CAPITAL" HeaderText="COD_CAPITAL" SortExpression="COD_CAPITAL" />
                <asp:BoundField DataField="NOMBRE_CAPITAL" HeaderText="NOMBRE_CAPITAL" SortExpression="NOMBRE_CAPITAL" />
                <asp:BoundField DataField="NUMERO_HABITANTES_CAPITAL" HeaderText="NUMERO_HABITANTES_CAPITAL" SortExpression="NUMERO_HABITANTES_CAPITAL" />
                <asp:BoundField DataField="IDIOMA_PREDOMINANTE_CAPITAL" HeaderText="IDIOMA_PREDOMINANTE_CAPITAL" SortExpression="IDIOMA_PREDOMINANTE_CAPITAL" />
                <asp:BoundField DataField="CODIGO_PAIS" HeaderText="CODIGO_PAIS" SortExpression="CODIGO_PAIS" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="eliminar_capital_sp" InsertMethod="insertar_capital_sp" SelectMethod="lista_capitales" TypeName="Paises.WebService" UpdateMethod="actualizar_capital_sp">
            <DeleteParameters>
                <asp:Parameter Name="COD_CAPITAL" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NOMBRE_CAPITAL" Type="String" />
                <asp:Parameter Name="NUMERO_HABITANTES_CAPITAL" Type="Int32" />
                <asp:Parameter Name="IDIOMA_PREDOMINANTE_CAPITAL" Type="String" />
                <asp:Parameter Name="CODIGO_PAIS" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="COD_CAPITAL" Type="Int32" />
                <asp:Parameter Name="NOMBRE_CAPITAL" Type="String" />
                <asp:Parameter Name="NUMERO_HABITANTES_CAPITAL" Type="Int32" />
                <asp:Parameter Name="IDIOMA_PREDOMINANTE_CAPITAL" Type="String" />
                <asp:Parameter Name="CODIGO_PAIS" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource2" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="COD_CAPITAL" HeaderText="COD_CAPITAL" SortExpression="COD_CAPITAL" Visible="False" />
                <asp:BoundField DataField="NOMBRE_CAPITAL" HeaderText="NOMBRE_CAPITAL" SortExpression="NOMBRE_CAPITAL" />
                <asp:BoundField DataField="NUMERO_HABITANTES_CAPITAL" HeaderText="NUMERO_HABITANTES_CAPITAL" SortExpression="NUMERO_HABITANTES_CAPITAL" />
                <asp:BoundField DataField="IDIOMA_PREDOMINANTE_CAPITAL" HeaderText="IDIOMA_PREDOMINANTE_CAPITAL" SortExpression="IDIOMA_PREDOMINANTE_CAPITAL" />
                <asp:BoundField DataField="CODIGO_PAIS" HeaderText="CODIGO_PAIS" SortExpression="CODIGO_PAIS" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
