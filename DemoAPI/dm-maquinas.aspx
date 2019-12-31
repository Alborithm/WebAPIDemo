<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="dm-maquinas.aspx.cs" Inherits="DemoAPI.dm_maquinas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="datos-maestros.aspx">Datos Maestros</a></li>
		<li class="breadcrumb-item active">Máquinas</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Máquinas <small>Datos Maestros</small> <a href="#modal-dialog" class="btn btn-sm btn-success" data-toggle="modal"><i class="fa fa-plus fa-1x"></i></a></h1>
	<!-- end page-header -->

	<div class="row">
		<!-- begin col-3 -->
		<div class="col-lg-3 col-md-6">
			<div class="card">
				<img class="card-img-top" src="img/maq1.jpg" width="100%" height="250px" alt="" />
				<div class="card-block">
					<h4 class="card-title m-t-0 m-b-10">Máquina 1</h4>
					<p class="card-text">Descripción</p>
					<a href="#modal-dialog" class="btn btn-sm btn-default" data-toggle="modal">Ver más...</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6">
			<div class="card">
				<img class="card-img-top" src="img/maq2.jpg" width="100%" height="250px" alt="" />
				<div class="card-block">
					<h4 class="card-title m-t-0 m-b-10">Máquina 2</h4>
					<p class="card-text">Descripción</p>
					<a href="#modal-dialog" class="btn btn-sm btn-default" data-toggle="modal">Ver más...</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6">
			<div class="card">
				<img class="card-img-top" src="img/maq3.jpg" width="100%" height="250px" alt="" />
				<div class="card-block">
					<h4 class="card-title m-t-0 m-b-10">Máquina 3</h4>
					<p class="card-text">Descripción</p>
					<a href="#modal-dialog" class="btn btn-sm btn-default" data-toggle="modal">Ver más...</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6">
			<div class="card">
				<img class="card-img-top" src="img/maq4.jpg" width="100%" height="250px" alt="" />
				<div class="card-block">
					<h4 class="card-title m-t-0 m-b-10">Máquina 4</h4>
					<p class="card-text">Descripción</p>
					<a href="#modal-dialog" class="btn btn-sm btn-default" data-toggle="modal">Ver más...</a>
				</div>
			</div>
		</div>

	</div>

	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="card">
				<img class="card-img-top" src="img/maq5.jpg" width="100%" height="250px" alt="" />
				<div class="card-block">
					<h4 class="card-title m-t-0 m-b-10">Máquina 5</h4>
					<p class="card-text">Descripción</p>
					<a href="#modal-dialog" class="btn btn-sm btn-default" data-toggle="modal">Ver más...</a>
				</div>
			</div>
		</div>
	</div>

	<!-- #modal-dialog -->
	<div class="modal fade" id="modal-dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Alta nueva máquina</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<div class="table-responsive">
							<table class="table table-profile">
								<tbody>
									<tr class="divider">
										<td colspan="2"></td>
									</tr>
									<tr class="highlight">
										<td class="field">Nombre</td>
										<td>
											<input type="text" class="form-control m-b-5" value="Máquina" placeholder="Nombre máquina" /></td>
									</tr>
									<tr>
										<td class="field">Descripción</td>
										<td>
											<textarea class="form-control m-b-10" id="clipboard-textarea" rows="7">Descripción máquina</textarea>
										</td>
									</tr>
									<tr>
										<td class="field">Paros mayores a:</td>
										<td>
											<input type="number" class="form-control m-b-5" value="0" placeholder="valor minutos" />
											<small>Solo se consideran los paros mayores al valor (minutos) indicado en este campo</small>
										</td>
									</tr>
									<tr>
										<td class="field">Velocidad</td>
										<td>
											<table>
												<tr>
													<td>Mín.</td>
													<td>
														<input type="number" class="form-control m-b-5" value="0" />
													</td>
													<td>Máx.</td>
													<td>
														<input type="number" class="form-control m-b-5" value="250" />
													</td>
													</tr>
												</table>
										</td>
									</tr>
									<tr>
										<td class="field">Unidad de medida velocida:</td>
										<td>
											<input type="text" class="form-control m-b-5" value="Pza/Min" />
										</td>
									</tr>
									<tr class="divider">
										<td colspan="2"></td>
									</tr>
									<tr>
										<td class="field">Imágen:</td>
										<td>
											<input type="file" class="form-control m-b-5" />
										</td>
									</tr>
								</tbody>
							</table>
						</div>
				</div>
				<div class="modal-footer">
					<a href="#modal-dialog" class="btn btn-white" data-dismiss="modal">Cancelar</a>
					<a href="#modal-dialog" class="btn btn-success" data-dismiss="modal">Guardar</a>
				</div>
			</div>
		</div>
	</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptFooter" runat="server">
</asp:Content>
