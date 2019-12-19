<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="velocidad-maquina.aspx.cs" Inherits="DemoAPI.velocidad_maquina" %>

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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
		<li class="breadcrumb-item"><a href="oee-maquina.aspx">Máquina</a></li>
		<li class="breadcrumb-item active">Velocidad</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Velocidad <small>Máquina 1</small></h1>
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
		<div class="col col-sm-12 col-md-5">
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<!--div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div-->
					<h4 class="panel-title">Velocidad Actual</h4>
				</div>
				<div class="panel-body text-center align-middle">
					<!--h4 class="text-center">Paros Máquina 1</h4-->
					<div id="gaudeVelocidad" class="text-center align-middle" style="margin: 0 auto;"></div>
					<div class="note note-secondary m-b-15 text-center align-middle">
						<div class="note-icon"><i class="fas fa-tachometer-alt fa-fw pull-left m-r-10 text-black-lighter"></i></div>
						<div class="note-content text-center">
							<h4><b id="gaudeVelocidadValue"></b></h4>
						</div>
					</div>
				</div>
			</div>
			<!-- end panel -->
		</div>

		<div class="col col-sm-12 col-md-7">
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<!--div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div-->
					<h4 class="panel-title">Velocidad</h4>
				</div>
				<div class="panel-body">
					<h4 class="text-center">Comportamiento de la Velocidad</h4>
					<canvas id="canvas"></canvas>
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

	<!-- ================== BEGIN PAGE CHART JS ================== -->
	<script src="../assets/plugins/chart-js/Chart.min.js"></script>
	<!-- ================== END PAGE CHART JS ================== -->

	<script type="text/javascript">
		$(document).ready(function () {
			//VELOCIDAD
			$('#gaudeVelocidad').jqxGauge({
				ranges: [{ startValue: 0, endValue: 80, style: { fill: '#e53d37', stroke: '#e53d37' }, startDistance: 0, endDistance: 40 },
				{ startValue: 81, endValue: 170, style: { fill: '#fad00b', stroke: '#fad00b' }, startDistance: 40, endDistance: 70 },
				{ startValue: 171, endValue: 220, style: { fill: '#4cb848', stroke: '#4cb848' }, startDistance: 70, endDistance: 100 }],
				caption: { offset: [0, -40], value: 'Velocidad', position: 'bottom' },
				cap: { size: '5%', style: { fill: '#2e79bb', stroke: '#2e79bb' } },
				border: { style: { fill: '#8e9495', stroke: '#7b8384', 'stroke-width': 1 } },
				ticksMinor: { interval: 1, size: '5%' },
				ticksMajor: { interval: 10, size: '10%' },
				width: '330px',
				height: '330px',
				max: 220,
				labels: { position: 'outside', interval: 10 },
				pointer: { style: { fill: '#2e79bb' }, width: 5 },
				animationDuration: 1500
			});
			$('#gaudeVelocidad').jqxGauge('value', 202);
			$('#gaudeVelocidad').on('valueChanging', function (e) {
				$('#gaudeVelocidadValue').text(Math.round(e.args.value) + ' Pza/Min');
			});
			//handleMorrisLineChart()
		});


		var config = {
			type: 'line',
			data: {
				labels: [
					'2019-12-18 07:05:00',
					'2019-12-18 07:10:00',
					'2019-12-18 07:15:00',
					'2019-12-18 07:20:00',
					'2019-12-18 07:25:00',
					'2019-12-18 07:30:00',
					'2019-12-18 07:35:00',
					'2019-12-18 07:40:00',
					'2019-12-18 07:45:00',
					'2019-12-18 07:50:00',
					'2019-12-18 07:55:00',
					'2019-12-18 08:00:00',
					'2019-12-18 08:05:00',
					'2019-12-18 08:10:00',
					'2019-12-18 08:15:00',
					'2019-12-18 08:20:00',
					'2019-12-18 08:25:00',
					'2019-12-18 08:30:00',
					'2019-12-18 08:35:00',
					'2019-12-18 08:40:00',
					'2019-12-18 08:45:00',
					'2019-12-18 08:50:00',
					'2019-12-18 08:55:00',
					'2019-12-18 09:00:00',
					'2019-12-18 09:05:00',
					'2019-12-18 09:10:00',
					'2019-12-18 09:15:00',
					'2019-12-18 09:20:00',
					'2019-12-18 09:25:00',
					'2019-12-18 09:30:00',
					'2019-12-18 09:35:00',
					'2019-12-18 09:40:00',
					'2019-12-18 09:45:00'
				],
				datasets: [{
					label: 'Velocidad',
					backgroundColor: "#8bb8f1",
					borderColor: "#8bb8f1",
					data: [
						10, 20, 30, 40, 36, 158, 17, 44, 196, 37, 123,
						14, 182, 157, 129, 107, 24, 212, 23, 120, 38,
						84, 86, 210, 110, 105, 82, 162, 92, 18, 191, 102, 202
					],
					fill: false,
				}]
			},
			options: {
				responsive: true,
				min: 0,
				tooltips: {
					mode: 'label'
				},
				legend: {
					display: false,
					labels: {
						boxWidth: 50,
						fontSize: 10,
						fontColor: '#bbb',
						padding: 5,
					}
				},
				scales: {
					xAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'Fecha/Hora'
						}
					}],
					yAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'Pza/Min'
						}
					}]
				}
			}
		};

		window.onload = function () {
			var ctx = document.getElementById('canvas').getContext('2d');
			window.myLine = new Chart(ctx, config);
		};

		document.getElementById('randomizeData').addEventListener('click', function () {
			config.data.datasets.forEach(function (dataset) {
				dataset.data = dataset.data.map(function () {
					return randomScalingFactor();
				});

			});

			window.myLine.update();
		});

		/*
		function handleMorrisLineChart() {
			var tax_data = [
				{ 'FechaHr': '2019-12-18 07:05:00', 'VelocidadReal': 10 },
				{ 'FechaHr': '2019-12-18 07:10:00', 'VelocidadReal': 20 },
				{ 'FechaHr': '2019-12-18 07:15:00', 'VelocidadReal': 30 },
				{ 'FechaHr': '2019-12-18 07:20:00', 'VelocidadReal': 40 },
				{ 'FechaHr': '2019-12-18 07:25:00', 'VelocidadReal': 36 },
				{ 'FechaHr': '2019-12-18 07:30:00', 'VelocidadReal': 158 },
				{ 'FechaHr': '2019-12-18 07:35:00', 'VelocidadReal': 17 },
				{ 'FechaHr': '2019-12-18 07:40:00', 'VelocidadReal': 44 },
				{ 'FechaHr': '2019-12-18 07:45:00', 'VelocidadReal': 196 },
				{ 'FechaHr': '2019-12-18 07:50:00', 'VelocidadReal': 37 },
				{ 'FechaHr': '2019-12-18 07:55:00', 'VelocidadReal': 123 },
				{ 'FechaHr': '2019-12-18 08:00:00', 'VelocidadReal': 14 },
				{ 'FechaHr': '2019-12-18 08:05:00', 'VelocidadReal': 182 },
				{ 'FechaHr': '2019-12-18 08:10:00', 'VelocidadReal': 157 },
				{ 'FechaHr': '2019-12-18 08:15:00', 'VelocidadReal': 129 },
				{ 'FechaHr': '2019-12-18 08:20:00', 'VelocidadReal': 107 },
				{ 'FechaHr': '2019-12-18 08:25:00', 'VelocidadReal': 24 },
				{ 'FechaHr': '2019-12-18 08:30:00', 'VelocidadReal': 212 },
				{ 'FechaHr': '2019-12-18 08:35:00', 'VelocidadReal': 23 },
				{ 'FechaHr': '2019-12-18 08:40:00', 'VelocidadReal': 120 },
				{ 'FechaHr': '2019-12-18 08:45:00', 'VelocidadReal': 38 },
				{ 'FechaHr': '2019-12-18 08:50:00', 'VelocidadReal': 84 },
				{ 'FechaHr': '2019-12-18 08:55:00', 'VelocidadReal': 86 },
				{ 'FechaHr': '2019-12-18 09:00:00', 'VelocidadReal': 210 },
				{ 'FechaHr': '2019-12-18 09:05:00', 'VelocidadReal': 110 },
				{ 'FechaHr': '2019-12-18 09:10:00', 'VelocidadReal': 105 },
				{ 'FechaHr': '2019-12-18 09:15:00', 'VelocidadReal': 82 },
				{ 'FechaHr': '2019-12-18 09:20:00', 'VelocidadReal': 162 },
				{ 'FechaHr': '2019-12-18 09:25:00', 'VelocidadReal': 92 },
				{ 'FechaHr': '2019-12-18 09:30:00', 'VelocidadReal': 18 },
				{ 'FechaHr': '2019-12-18 09:35:00', 'VelocidadReal': 191 },
				{ 'FechaHr': '2019-12-18 09:40:00', 'VelocidadReal': 102 },
				{ 'FechaHr': '2019-12-18 09:45:00', 'VelocidadReal': 202 }
			];
			Morris.Line({
				element: 'morris-line-chart',
				data: tax_data,
				xkey: 'FechaHr',
				ykeys: ['VelocidadReal'],
				labels: ['Velocidad PZA/MIN'],
				resize: true,
				pointSize: 5,
				lineWidth: 2.5,
				gridLineColor: [COLOR_GREY_LIGHTER],
				gridTextFamily: FONT_FAMILY,
				gridTextColor: FONT_COLOR,
				gridTextWeight: FONT_WEIGHT,
				gridTextSize: FONT_SIZE,
				lineColors: ['#8bb8f1']
			});
		}*/
	</script>

</asp:Content>
