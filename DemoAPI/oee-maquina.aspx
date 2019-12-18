<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="oee-maquina.aspx.cs" Inherits="DemoAPI.oee_maquina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.base.css" type="text/css" />
	<link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.energyblue.css" type="text/css" />
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/jqx-all.js"></script>
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/globalization/globalize.js"></script>
	<link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.arctic.css" type="text/css" />
	<!-- ================== BEGIN PAGE CSS STYLE ================== -->
	<link href="../assets/plugins/morris/morris.css" rel="stylesheet" />
	<!-- ================== END PAGE CSS STYLE ================== -->

	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css" rel="stylesheet" />
	<link href="../assets/plugins/ionRangeSlider/css/ion.rangeSlider.css" rel="stylesheet" />
	<link href="../assets/plugins/ionRangeSlider/css/ion.rangeSlider.skinNice.css" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
	<link href="../assets/plugins/password-indicator/css/password-indicator.css" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap-combobox/css/bootstrap-combobox.css" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
	<link href="../assets/plugins/jquery-tag-it/css/jquery.tagit.css" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />
	<link href="../assets/plugins/select2/dist/css/select2.min.css" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap-eonasdan-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css" rel="stylesheet" />
	<link href="../assets/plugins/jquery-simplecolorpicker/jquery.simplecolorpicker.css" rel="stylesheet" />
	<link href="../assets/plugins/jquery-simplecolorpicker/jquery.simplecolorpicker-fontawesome.css" rel="stylesheet" />
	<link href="../assets/plugins/jquery-simplecolorpicker/jquery.simplecolorpicker-glyphicons.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->

	<style type="text/css">
		#gaudeOEEValue {
			background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #fafafa), color-stop(100%, #f3f3f3));
			background-image: -webkit-linear-gradient(#fafafa, #f3f3f3);
			background-image: -moz-linear-gradient(#fafafa, #f3f3f3);
			background-image: -o-linear-gradient(#fafafa, #f3f3f3);
			background-image: -ms-linear-gradient(#fafafa, #f3f3f3);
			background-image: linear-gradient(#fafafa, #f3f3f3);
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			-ms-border-radius: 3px;
			-o-border-radius: 3px;
			border-radius: 3px;
			-webkit-box-shadow: 0 0 50px rgba(0, 0, 0, 0.2);
			-moz-box-shadow: 0 0 50px rgba(0, 0, 0, 0.2);
			box-shadow: 0 0 50px rgba(0, 0, 0, 0.2);
			padding: 10px;
			width: 150px;
		}

		.gaudeValue {
			position: absolute;
			top: 235px;
			left: 132px;
			font-family: Sans-Serif;
			text-align: center;
			font-size: 17px;
			width: 70px;
		}
	</style>
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
								<div class="col col-sm-12 col-md-4">
									<div class="form-group row align-middle">
										<label class="col-md-4 col-form-label">Fechas</label>
										<div class="col-md-8">
											<div class="row row-space-10">
												<div class="col-xs-6">
													<input type="text" class="form-control" id="datetimepicker3" placeholder="De:" />
												</div>
												<div class="col-xs-6">
													<input type="text" class="form-control" id="datetimepicker4" placeholder="A:" />
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-4">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3">Turno</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">Primero</option>
												<option value="2">Segundo</option>
												<option value="3">Tercero</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-4">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3">Complejo</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">EUA</option>
												<option value="2">MX</option>
											</select>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col col-sm-12 col-md-3">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3">Planta</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">Guadalajar</option>
												<option value="2">Monterrey</option>
												<option value="3">San Luis Potosí</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-3">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3">Área</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">Alimentos</option>
												<option value="2">Termoformado</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-3">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3">Línea</label>
										<div class="col-md-9">
											<select class="form-control">
												<option value="1">Termoformado</option>
												<option value="2">Etiquetado</option>
												<option value="3">Empaque</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col col-sm-12 col-md-3">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3">Máqiona</label>
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
				<div id="gaudeVelocidad" class="bg-black text-center align-middle" style="margin: 0 auto;"></div>
				<div class="list-group-item list-group-item-inverse text-ellipsis text-center align-middle" id="gaudeVelocidadValue"></div>
			</div>
		</div>
		<div class="col col-sm-12 col-md-6 col-lg-3 text-center align-middle">
			<div class="panel panel-inverse text-center align-middle bg-inverse" data-sortable-id="index-4">
				<div class="panel-heading">
					<h4 class="panel-title">Calidad</h4>
				</div>
				<div id="gaugeCalidad" class="bg-black text-center align-middle" style="margin: 0 auto;"></div>
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
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/jqx-all.js"></script>
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/globalization/globalize.js"></script>

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="../assets/plugins/ionRangeSlider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
	<script src="../assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<script src="../assets/plugins/masked-input/masked-input.min.js"></script>
	<script src="../assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script src="../assets/plugins/password-indicator/js/password-indicator.js"></script>
	<script src="../assets/plugins/bootstrap-combobox/js/bootstrap-combobox.js"></script>
	<script src="../assets/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="../assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
	<script src="../assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput-typeahead.js"></script>
	<script src="../assets/plugins/jquery-tag-it/js/tag-it.min.js"></script>
	<script src="../assets/plugins/bootstrap-daterangepicker/moment.js"></script>
	<script src="../assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script src="../assets/plugins/select2/dist/js/select2.min.js"></script>
	<script src="../assets/plugins/bootstrap-eonasdan-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<script src="../assets/plugins/bootstrap-show-password/bootstrap-show-password.js"></script>
	<script src="../assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
	<script src="../assets/plugins/jquery-simplecolorpicker/jquery.simplecolorpicker.js"></script>
	<script src="../assets/plugins/clipboard/clipboard.min.js"></script>
	<script src="../assets/js/demo/form-plugins.demo.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="../assets/plugins/morris/raphael.min.js"></script>
	<script src="../assets/plugins/morris/morris.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

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
		$(document).ready(function () {
			FormPlugins.init();
		});
	</script>

</asp:Content>
