<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="oee-maquina.aspx.cs" Inherits="DemoAPI.oee_maquina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	<!-- ================== BEGIN PAGE GAUGE TACOMETRO JS ================== -->
	<link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.base.css" type="text/css" />
	<link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.energyblue.css" type="text/css" />
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/jqx-all.js"></script>
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/globalization/globalize.js"></script>
	<link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.arctic.css" type="text/css" />
	<!-- ================== END PAGE GAUGE TACOMETRO JS ================== -->

	<!-- ================== BEGIN PAGE CHARTS CSS STYLE ================== -->
	<link href="../assets/plugins/morris/morris.css" rel="stylesheet" />
	<!-- ================== END PAGE CHARTS CSS STYLE ================== -->

	<!-- ================== BEGIN PAGE DATETIMEPICKER STYLE ================== -->
	<link href="../assets/plugins/bootstrap-eonasdan-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	<!-- ================== END PAGE DATETIMEPICKER STYLE ================== -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
		<li class="breadcrumb-item active">Máquina</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Máquina 1 <small>Descripción</small></h1>
	<!-- end page-header -->

	<!--div class="col col-sm-12 col-md-4">
									<div class="form-group row align-middle">
										<label class="col-md-4 col-form-label d-block text-nowrap">Fechas</label>
										<div class="col-md-8">
											<div class="row row-space-10">
												<div class="col-6">
													<input type="text" class="form-control" id="datetimepicker3" placeholder="De:" />
												</div>
												<div class="col-6">
													<input type="text" class="form-control" id="datetimepicker4" placeholder="A:" />
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-4">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3 d-block text-nowrap">Turno</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">Primero</option>
												<option value="2">Segundo</option>
												<option value="3">Tercero</option>
											</select>
										</div>
									</div>
								</div-->

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
		<div class="col col-sm-12 col-md-6 col-lg-3 text-center align-middle">
			<div class="panel panel-inverse text-center align-middle" data-sortable-id="index-1">
				<div class="panel-heading">
					<h4 class="panel-title">OEE</h4>
				</div>
				<div id="gaugeOEE" class="bg-black text-center align-middle" style="margin: 0 auto;"></div>
				<div class="list-group-item list-group-item-inverse text-ellipsis text-center align-middle" id="gaugeOEEValue">
				</div>
			</div>
		</div>
		<div class="col col-sm-12 col-md-6 col-lg-3 text-center align-middle">
			<div class="panel panel-inverse text-center align-middle bg-inverse" data-sortable-id="index-2">
				<div class="panel-heading">
					<h4 class="panel-title">Disponibilidad</h4>
				</div>
				<a href="disponibilidad-maquina.aspx">
					<div>
						<div id="gaudeDisponibilidad" class="bg-black text-center align-middle" style="margin: 0 auto;"></div>
					</div>
				</a>
				<div class="list-group-item list-group-item-inverse text-ellipsis text-center align-middle" id="gaudeDisponibilidadValue"></div>
			</div>
		</div>
		<div class="col col-sm-12 col-md-6 col-lg-3 text-center align-middle">
			<div class="panel panel-inverse text-center align-middle bg-inverse" data-sortable-id="index-3">
				<div class="panel-heading">
					<h4 class="panel-title">Velocidad</h4>
				</div>
				<a href="velocidad-maquina.aspx">
					<div>
						<div id="gaudeVelocidad" class="bg-black text-center align-middle" style="margin: 0 auto;"></div>
					</div>
				</a>
				<div class="list-group-item list-group-item-inverse text-ellipsis text-center align-middle" id="gaudeVelocidadValue"></div>
			</div>
		</div>
		<div class="col col-sm-12 col-md-6 col-lg-3 text-center align-middle">
			<div class="panel panel-inverse text-center align-middle bg-inverse" data-sortable-id="index-4">
				<div class="panel-heading">
					<h4 class="panel-title">Calidad</h4>
				</div>
				<a href="calidad-maquina.aspx">
					<div>
						<div id="gaugeCalidad" class="bg-black text-center align-middle" style="margin: 0 auto;"></div>
					</div>
				</a>
				<div class="list-group-item list-group-item-inverse text-ellipsis text-center align-middle" id="gaugeCalidadValue"></div>
			</div>
		</div>
	</div>
	<!-- begin row -->
	<div class="row">
		<div class="col">
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<!--div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div-->
					<h4 class="panel-title">Avance de Producción</h4>
				</div>
				<div class="panel-body">
					<h4 class="text-center">Nombre Producto / No. Orden: 10000012</h4>
					<div id="morris-line-chart" class="height-sm"></div>
				</div>
			</div>
			<!-- end panel -->
		</div>
	</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptFooter" runat="server">
	<!-- ================== BEGIN PAGE GAUGE TACOMETRO JS ================== -->
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/jqx-all.js"></script>
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/globalization/globalize.js"></script>
	<!-- ================== END PAGE GAUGE TACOMETRO JS ================== -->

	<!-- ================== BEGIN PAGE DATETIMEPICKER JS ================== -->
	<script src="../assets/plugins/bootstrap-daterangepicker/moment.js"></script>
	<script src="../assets/plugins/bootstrap-eonasdan-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<!-- ================== END PAGE DATETIMEPICKER JS ================== -->

	<!-- ================== BEGIN PAGE CHART JS ================== -->
	<script src="../assets/plugins/morris/raphael.min.js"></script>
	<script src="../assets/plugins/morris/morris.js"></script>
	<!-- ================== END PAGE CHART JS ================== -->

	<script type="text/javascript">
		$(document).ready(function () {
			//OEE
			$('#gaugeOEE').jqxGauge({
				ranges: [{ startValue: 0, endValue: 40, style: { fill: '#e53d37', stroke: '#e53d37' }, startDistance: 0, endDistance: 40 },
				{ startValue: 41, endValue: 70, style: { fill: '#fad00b', stroke: '#fad00b' }, startDistance: 40, endDistance: 70 },
				{ startValue: 71, endValue: 100, style: { fill: '#4cb848', stroke: '#4cb848' }, startDistance: 70, endDistance: 100 }],
				caption: { offset: [0, -40], value: 'OEE', position: 'bottom' },
				cap: { size: '5%', style: { fill: '#2e79bb', stroke: '#2e79bb' } },
				border: { style: { fill: '#8e9495', stroke: '#7b8384', 'stroke-width': 1 } },
				ticksMinor: { interval: 1, size: '5%' },
				ticksMajor: { interval: 10, size: '10%' },
				width: '100%',
				height: '350px',
				max: 100,
				labels: { position: 'outside', interval: 10 },
				pointer: { style: { fill: '#2e79bb' }, width: 5 },
				animationDuration: 1500
			});
			$('#gaugeOEE').jqxGauge('value', 43.2);
			$('#gaugeOEE').on('valueChanging', function (e) {
				$('#gaugeOEEValue').text(Math.round(e.args.value) + ' %');
			});

			//DISPONIBILIDAD
			$('#gaudeDisponibilidad').jqxGauge({
				ranges: [{ startValue: 0, endValue: 40, style: { fill: '#e53d37', stroke: '#e53d37' }, startDistance: 0, endDistance: 40 },
				{ startValue: 41, endValue: 70, style: { fill: '#fad00b', stroke: '#fad00b' }, startDistance: 40, endDistance: 70 },
				{ startValue: 71, endValue: 100, style: { fill: '#4cb848', stroke: '#4cb848' }, startDistance: 70, endDistance: 100 }],
				caption: { offset: [0, -40], value: 'Disponibilidad', position: 'bottom' },
				cap: { size: '5%', style: { fill: '#2e79bb', stroke: '#2e79bb' } },
				border: { style: { fill: '#8e9495', stroke: '#7b8384', 'stroke-width': 1 } },
				ticksMinor: { interval: 1, size: '5%' },
				ticksMajor: { interval: 10, size: '10%' },
				width: '80%',
				height: '250px',
				max: 100,
				labels: { position: 'outside', interval: 10 },
				pointer: { style: { fill: '#2e79bb' }, width: 5 },
				animationDuration: 1500
			});
			$('#gaudeDisponibilidad').jqxGauge('value', 60);
			$('#gaudeDisponibilidad').on('valueChanging', function (e) {
				$('#gaudeDisponibilidadValue').text(Math.round(e.args.value) + ' %');
			});

			//VELOCIDAD
			$('#gaudeVelocidad').jqxGauge({
				ranges: [{ startValue: 0, endValue: 40, style: { fill: '#e53d37', stroke: '#e53d37' }, startDistance: 0, endDistance: 40 },
				{ startValue: 41, endValue: 70, style: { fill: '#fad00b', stroke: '#fad00b' }, startDistance: 40, endDistance: 70 },
				{ startValue: 71, endValue: 100, style: { fill: '#4cb848', stroke: '#4cb848' }, startDistance: 70, endDistance: 100 }],
				caption: { offset: [0, -40], value: 'Velocidad', position: 'bottom' },
				cap: { size: '5%', style: { fill: '#2e79bb', stroke: '#2e79bb' } },
				border: { style: { fill: '#8e9495', stroke: '#7b8384', 'stroke-width': 1 } },
				ticksMinor: { interval: 1, size: '5%' },
				ticksMajor: { interval: 10, size: '10%' },
				width: '80%',
				height: '250px',
				max: 100,
				labels: { position: 'outside', interval: 10 },
				pointer: { style: { fill: '#2e79bb' }, width: 5 },
				animationDuration: 1500
			});
			$('#gaudeVelocidad').jqxGauge('value', 80);
			$('#gaudeVelocidad').on('valueChanging', function (e) {
				$('#gaudeVelocidadValue').text(Math.round(e.args.value) + ' %');
			});

			//CALIDAD
			$('#gaugeCalidad').jqxGauge({
				ranges: [{ startValue: 0, endValue: 40, style: { fill: '#e53d37', stroke: '#e53d37' }, startDistance: 0, endDistance: 40 },
				{ startValue: 41, endValue: 70, style: { fill: '#fad00b', stroke: '#fad00b' }, startDistance: 40, endDistance: 70 },
				{ startValue: 71, endValue: 100, style: { fill: '#4cb848', stroke: '#4cb848' }, startDistance: 70, endDistance: 100 }],
				caption: { offset: [0, -40], value: 'Calidad', position: 'bottom' },
				cap: { size: '5%', style: { fill: '#2e79bb', stroke: '#2e79bb' } },
				border: { style: { fill: '#8e9495', stroke: '#7b8384', 'stroke-width': 1 } },
				ticksMinor: { interval: 1, size: '5%' },
				ticksMajor: { interval: 10, size: '10%' },
				width: '80%',
				height: '250px',
				max: 100,
				labels: { position: 'outside', interval: 10 },
				pointer: { style: { fill: '#2e79bb' }, width: 5 },
				animationDuration: 1500
			});
			$('#gaugeCalidad').jqxGauge('value', 90);
			$('#gaugeCalidad').on('valueChanging', function (e) {
				$('#gaugeCalidadValue').text(Math.round(e.args.value) + ' %');
			});
			handleMorrisLineChart();
		});
		function handleMorrisLineChart() {
			var tax_data = [
				{ "FechaHr": "2019-12-01 07:00:00", "PzaPlan": 0, "PzaProd": 0, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 08:00:00", "PzaPlan": 500, "PzaProd": 300, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 09:00:00", "PzaPlan": 1000, "PzaProd": 1000, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 10:00:00", "PzaPlan": 1500, "PzaProd": 1600, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 11:00:00", "PzaPlan": 2000, "PzaProd": 2200, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 12:00:00", "PzaPlan": 2500, "PzaProd": 2700, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 13:00:00", "PzaPlan": 3000, "PzaProd": 2900, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 14:00:00", "PzaPlan": 3500, "PzaProd": 3000, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 15:00:00", "PzaPlan": 4000, "PzaProd": 3300, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 16:00:00", "PzaPlan": 4500, "PzaProd": 3400, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 17:00:00", "PzaPlan": 5000, "PzaProd": null, "PzaObj": 5000 },
				{ "FechaHr": "2019-12-01 18:00:00", "PzaPlan": 5500, "PzaProd": null, "PzaObj": 5000 }
			];
			Morris.Line({
				element: 'morris-line-chart',
				data: tax_data,
				xkey: 'FechaHr',
				ykeys: ['PzaProd', 'PzaPlan', 'PzaObj'],
				labels: ['Pzas Prodducidas', 'Pzas Planeadas', 'Objetivo'],
				resize: true,
				pointSize: 5,
				lineWidth: 2.5,
				gridLineColor: [COLOR_GREY_LIGHTER],
				gridTextFamily: FONT_FAMILY,
				gridTextColor: FONT_COLOR,
				gridTextWeight: FONT_WEIGHT,
				gridTextSize: FONT_SIZE,
				lineColors: ['#1BE327', '#E3451B', '#2B9DEC']
			});
		}
		/*
		$(document).ready(function () {
			handleDateTimePicker();
		});
		var handleDateTimePicker = function () {
			$('#datetimepicker3').datetimepicker({
				format: 'DD-MM-YYYY'
			});
			$('#datetimepicker4').datetimepicker({
				format: 'DD-MM-YYYY'
			});
			$("#datetimepicker3").on("dp.change", function (e) {
				$('#datetimepicker4').data("DateTimePicker").minDate(e.date);
			});
			$("#datetimepicker4").on("dp.change", function (e) {
				$('#datetimepicker3').data("DateTimePicker").maxDate(e.date);
			});
		};
		*/
	</script>

</asp:Content>
