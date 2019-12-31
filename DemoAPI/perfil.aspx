<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="DemoAPI.perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="content-full-width">
		<div class="profile">
			<div class="profile-header">
				<div class="profile-header-cover"></div>
				<div class="profile-header-content">
					<div class="profile-header-img">
						<img src="../assets/img/user/user-13.jpg" alt="">
					</div>
					<div class="profile-header-info pb-5">
						<h4 class="m-t-10 m-b-5">Usuario Demo ITM</h4>
						<p class="m-b-10">Administrador</p>
					</div>
				</div>
			</div>
		</div>
		<div class="table-responsive">
			<table class="table table-profile">
				<thead>
					<tr>
						<th></th>
						<th>
							<h4>Usuario Demo ITM <small>Administrador</small></h4>
						</th>
					</tr>
				</thead>
				<tbody>

					<tr class="divider">
						<td colspan="2"></td>
					</tr>
					<tr class="highlight">
						<td class="field">Nombre</td>
						<td><input type="text" class="form-control m-b-5 w-25" value="Usuario" placeholder="Nombre" /></td>
					</tr>
					<tr>
						<td class="field">Apellido Paterno</td>
						<td><input type="text" class="form-control m-b-5 w-25" value="Demo" placeholder="Apellido Paterno" /></td>
					</tr>
					<tr>
						<td class="field">Apellido Materno</td>
						<td><input type="text" class="form-control m-b-5 w-25" value="ITM" placeholder="Apellido Materno" /></td>
					</tr>
					<tr class="divider">
						<td colspan="2"></td>
					</tr>
					<tr>
						<td class="field">Correo Electrónico</td>
						<td><input type="email" class="form-control m-b-5 w-25" value="demo@trascenti.com" disabled placeholder="e-mail" /></td>
					</tr>
					<tr>
						<td class="field">No. Celular</td>
						<td><input type="tel" class="form-control m-b-5 w-25" value="(847)- 367-8924" placeholder="Celular" /></td>
					</tr>
					<tr class="highlight">
						<td class="field"></td>
						<td></td>
					</tr>
					<tr class="divider">
						<td colspan="2"></td>
					</tr>
					<tr>
						<td class="field">Complejo</td>
						<td>
							<select class="form-control input-inline input-xs">
								<option value="1">EUA</option>
								<option value="2">MX</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="field">Planta</td>
						<td>
							<select class="form-control input-inline input-xs">
								<option value="1">Guadalajara</option>
								<option value="2">Monterrey</option>
								<option value="3">San Luis Potosí</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="field">Área</td>
						<td>
							<select class="form-control input-inline input-xs">
								<option value="1">Alimentos</option>
								<option value="2">Termoformado</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="field">Turno</td>
						<td>
							<select class="form-control input-inline input-xs">
								<option value="1">Primero</option>
								<option value="2">Segundo</option>
								<option value="3">Tercero</option>
							</select>
						</td>
					</tr>
					<tr class="highlight">
						<td class="field">Perfil</td>
						<td>
							<select class="form-control input-inline input-xs">
								<option value="1">Administrador</option>
								<option value="2">Jefe</option>
								<option value="3">Supervisor</option>
								<option value="4">Operador</option>
							</select>
						</td>
					</tr>
					<tr class="highlight">
						<td class="field">&nbsp;</td>
						<td class="p-t-10 p-b-10">
							<button type="submit" class="btn btn-primary width-150">Guardar</button>
							<button type="submit" class="btn btn-white btn-white-without-border width-150 m-l-5">Cancelar</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptFooter" runat="server">
</asp:Content>
