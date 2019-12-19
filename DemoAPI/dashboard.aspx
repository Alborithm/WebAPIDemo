<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="DemoAPI.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item active">Dashboard</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Dashboard <small>Layout</small></h1>
	<!-- end page-header -->

	<!-- begin row -->

	<div class="row">
		<div class="col col-12">
			<div id="accordion" class="card-accordion">
				<!-- begin card -->
				<div class="card">
					<div class="card-header bg-black text-white pointer-cursor collapsed" data-toggle="collapse" data-target="#collapseOne">
						Filtros						
					</div>
					<div id="collapseOne" class="collapse" data-parent="#accordion">
						<div class="card-body">
							<div class="row">
								<div class="col col-sm-12 col-md-2">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3 d-block text-nowrap">Complejo</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">EUA</option>
												<option value="2">MX</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-2">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3 d-block text-nowrap">Planta</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">Guadalajara</option>
												<option value="2">Monterrey</option>
												<option value="3">San Luis Potosí</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-2">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3 d-block text-nowrap">Área</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">Alimentos</option>
												<option value="2">Termoformado</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-2">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3 d-block text-nowrap">Línea</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">Termoformado</option>
												<option value="2">Etiquetado</option>
												<option value="3">Empaque</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-4">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3 d-block text-nowrap">Máquina</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">Máquina 1</option>
												<option value="2">Máquina 2</option>
												<option value="3">Máquina 3</option>
												<option value="4">Máquina 4</option>
												<option value="5">Máquina 5</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="row">
		<!-- begin col -->
		<div class=" col col-sm-12 col-md-6 col-xl-3">

			<div class="widget widget-rounded m-b-30" data-id="widget">
				<!-- begin widget-header -->
				<div class="widget-header">
					<h4 class="widget-header-title text-center">Máquina 1</h4>
				</div>
				<!-- end widget-header -->
				<!-- begin vertical-box -->
				<div class="vertical-box with-grid with-border-top">
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column align-content-center">
						<a href="/oee-maquina.aspx">
							<img src="img/maq1.jpg" class="media-object align-content-center" style="margin: 0 auto; border: 5px solid #45b045" width="100%" height="250px" alt="" />
						</a>
					</div>
					<!-- end vertical-box-column -->
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column p-15" style="width: 100%;">
						<div class="widget-chart-info">
							<h4 class="widget-chart-info-title">Nombre Producto <small class="widget-chart-info-desc">No. Orden de producción: <strong>10000012</strong></small></h4>
							<div class="widget-chart-info-progress">
								<b>Avance producción:</b>
								<span class="pull-right">70%</span>
							</div>
							<div class="progress progress-sm">
								<div class="progress-bar progress-bar-striped progress-bar-animated rounded-corner" style="width: 70%;"></div>
							</div>
							<div class="widget-chart-info-progress">
								<b>Velocidad:</b>
								<span class="pull-right">100 PZ/MIN</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Inicio de la producción:</b>
								<span class="pull-right">01/12/19 14:30:45</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Tiempo transcurrido:</b>
								<span class="pull-right">02:15:35 hrs</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Estatus:</b>
								<span class="pull-right">Activa</span>
							</div>
						</div>
					</div>
					<!-- end vertical-box-column -->
				</div>
				<!-- end vertical-box -->
			</div>

		</div>
		<!-- end col -->

		<!-- begin col -->
		<div class=" col col-sm-12 col-md-6 col-xl-3">

			<div class="widget widget-rounded m-b-30" data-id="widget">
				<!-- begin widget-header -->
				<div class="widget-header">
					<h4 class="widget-header-title text-center">Máquina 2</h4>
				</div>
				<!-- end widget-header -->
				<!-- begin vertical-box -->
				<div class="vertical-box with-grid with-border-top">
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column align-content-center">
						<a href="/oee-maquina.aspx">
							<img src="img/maq2.jpg" class="media-object align-content-center" style="margin: 0 auto; border: 5px solid #45b045" width="100%" height="250px" alt="" />
						</a>
					</div>
					<!-- end vertical-box-column -->
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column p-15" style="width: 100%;">
						<div class="widget-chart-info">
							<h4 class="widget-chart-info-title">Nombre Producto <small class="widget-chart-info-desc">No. Orden de producción: <strong>10000013</strong></small></h4>
							<div class="widget-chart-info-progress">
								<b>Avance producción:</b>
								<span class="pull-right">60%</span>
							</div>
							<div class="progress progress-sm">
								<div class="progress-bar progress-bar-striped progress-bar-animated rounded-corner" style="width: 60%;"></div>
							</div>
							<div class="widget-chart-info-progress">
								<b>Velocidad:</b>
								<span class="pull-right">100 PZ/MIN</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Inicio de la producción:</b>
								<span class="pull-right">01/12/19 14:30:45</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Tiempo transcurrido:</b>
								<span class="pull-right">02:15:35 hrs</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Estatus:</b>
								<span class="pull-right">Activa</span>
							</div>
						</div>
					</div>
					<!-- end vertical-box-column -->
				</div>
				<!-- end vertical-box -->
			</div>

		</div>
		<!-- end col -->

		<!-- begin col -->
		<div class=" col col-sm-12 col-md-6 col-xl-3">

			<div class="widget widget-rounded m-b-30" data-id="widget">
				<!-- begin widget-header -->
				<div class="widget-header">
					<h4 class="widget-header-title text-center">Máquina 3</h4>
				</div>
				<!-- end widget-header -->
				<!-- begin vertical-box -->
				<div class="vertical-box with-grid with-border-top">
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column align-content-center">
						<a href="/oee-maquina.aspx">
							<img src="img/maq3.jpg" class="media-object align-content-center" style="margin: 0 auto; border: 5px solid #a93246" width="100%" height="250px" alt="" />
						</a>
					</div>
					<!-- end vertical-box-column -->
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column p-15" style="width: 100%;">
						<div class="widget-chart-info">
							<h4 class="widget-chart-info-title">Nombre Producto <small class="widget-chart-info-desc">No. Orden de producción: <strong>10000014</strong></small></h4>
							<div class="widget-chart-info-progress">
								<b>Avance producción:</b>
								<span class="pull-right">85%</span>
							</div>
							<div class="progress progress-sm">
								<div class="progress-bar progress-bar-striped progress-bar-animated rounded-corner" style="width: 85%;"></div>
							</div>
							<div class="widget-chart-info-progress">
								<b>Velocidad:</b>
								<span class="pull-right">100 PZ/MIN</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Inicio de la producción:</b>
								<span class="pull-right">01/12/19 14:30:45</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Tiempo transcurrido:</b>
								<span class="pull-right">03:15:35 hrs</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Estatus:</b>
								<span class="pull-right">En Paro</span>
							</div>
						</div>
					</div>
					<!-- end vertical-box-column -->
				</div>
				<!-- end vertical-box -->
			</div>

		</div>
		<!-- end col -->

		<!-- begin col -->
		<div class=" col col-sm-12 col-md-6 col-xl-3">

			<div class="widget widget-rounded m-b-30" data-id="widget">
				<!-- begin widget-header -->
				<div class="widget-header">
					<h4 class="widget-header-title text-center">Máquina 4</h4>
				</div>
				<!-- end widget-header -->
				<!-- begin vertical-box -->
				<div class="vertical-box with-grid with-border-top">
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column align-content-center">
						<a href="/oee-maquina.aspx">
							<img src="img/maq4.jpg" class="media-object align-content-center" style="margin: 0 auto; border: 5px solid #45b045" width="100%" height="250px" alt="" />
						</a>
					</div>
					<!-- end vertical-box-column -->
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column p-15" style="width: 100%;">
						<div class="widget-chart-info">
							<h4 class="widget-chart-info-title">Nombre Producto <small class="widget-chart-info-desc">No. Orden de producción: <strong>10000015</strong></small></h4>
							<div class="widget-chart-info-progress">
								<b>Avance producción:</b>
								<span class="pull-right">45%</span>
							</div>
							<div class="progress progress-sm">
								<div class="progress-bar progress-bar-striped progress-bar-animated rounded-corner" style="width: 45%;"></div>
							</div>
							<div class="widget-chart-info-progress">
								<b>Velocidad:</b>
								<span class="pull-right">100 PZ/MIN</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Inicio de la producción:</b>
								<span class="pull-right">01/12/19 14:30:45</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Tiempo transcurrido:</b>
								<span class="pull-right">03:15:35 hrs</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Estatus:</b>
								<span class="pull-right">Activa</span>
							</div>
						</div>
					</div>
					<!-- end vertical-box-column -->
				</div>
				<!-- end vertical-box -->
			</div>

		</div>
		<!-- end col -->

	</div>

	<!-- end row -->

	<div class="row">

		<!-- begin col -->
		<div class=" col col-sm-12 col-md-6 col-xl-3">

			<div class="widget widget-rounded m-b-30" data-id="widget">
				<!-- begin widget-header -->
				<div class="widget-header">
					<h4 class="widget-header-title text-center">Máquina 5</h4>
				</div>
				<!-- end widget-header -->
				<!-- begin vertical-box -->
				<div class="vertical-box with-grid with-border-top">
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column align-content-center">
						<a href="/oee-maquina.aspx">
							<img src="img/maq5.jpg" class="media-object align-content-center" style="margin: 0 auto; border: 5px solid #f59c1a" width="100%" height="250px" alt="" />
						</a>
					</div>
					<!-- end vertical-box-column -->
					<!-- begin vertical-box-column -->
					<div class="horizontal-box-column p-15" style="width: 100%;">
						<div class="widget-chart-info">
							<h4 class="widget-chart-info-title">Nombre Producto <small class="widget-chart-info-desc">No. Orden de producción: <strong>10000016</strong></small></h4>
							<div class="widget-chart-info-progress">
								<b>Avance producción:</b>
								<span class="pull-right">90%</span>
							</div>
							<div class="progress progress-sm">
								<div class="progress-bar progress-bar-striped progress-bar-animated rounded-corner" style="width: 90%;"></div>
							</div>
							<div class="widget-chart-info-progress">
								<b>Velocidad:</b>
								<span class="pull-right">100 PZ/MIN</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Inicio de la producción:</b>
								<span class="pull-right">01/12/19 14:30:45</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Tiempo transcurrido:</b>
								<span class="pull-right">03:15:35 hrs</span>
							</div>
							<div class="widget-chart-info-progress">
								<b>Estatus:</b>
								<span class="pull-right">En Mantenimiento</span>
							</div>
						</div>
					</div>
					<!-- end vertical-box-column -->
				</div>
				<!-- end vertical-box -->
			</div>

		</div>
		<!-- end col -->

	</div>

	<!-- end row -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptFooter" runat="server">
</asp:Content>
