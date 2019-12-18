<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="disponibilidad-maquina.aspx.cs" Inherits="DemoAPI.disponibilidad_maquina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
		<li class="breadcrumb-item"><a href="oee-maquina.aspx">Máquina</a></li>
		<li class="breadcrumb-item active">Disponibilidad</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Disponibilidad <small>Máquina 1</small></h1>
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
								</div>
								<div class="col col-sm-12 col-md-4">
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
							</div>

							<div class="row">
								<div class="col col-sm-12 col-md-3">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3 d-block text-nowrap">Planta</label>
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
										<label class="col-form-label col-md-3 d-block text-nowrap">Área</label>
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
								<div class="col col-sm-12 col-md-3">
									<div class="form-group row align-middle">
										<label class="col-form-label col-md-3 d-block text-nowrap">Máqiona</label>
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
		<div class="col col-sm-12 col-md-6">
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<!--div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div-->
					<h4 class="panel-title">Tiempo de paro</h4>
				</div>
				<div class="panel-body">
					<h4 class="text-center">Paros Máquina 1</h4>
					<canvas id="canvas"></canvas>
				</div>
			</div>
			<!-- end panel -->
		</div>

		<div class="col col-sm-12 col-md-6">
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<!--div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div-->
					<h4 class="panel-title">Paros Crónicos</h4>
				</div>
				<div class="panel-body">
					<h4 class="text-center">Frecuencia de paros Máquina 1</h4>
					<canvas id="canvasBarHorizontal"></canvas>
				</div>
			</div>
			<!-- end panel -->
		</div>
	</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptFooter" runat="server">

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
	<script src="../assets/plugins/chart-js/Chart.min.js"></script>
	<script src="../assets/js/demo/chart-js.demo.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		var chartData = {
			labels: ['Falta de material', 'Falla en el equipo', 'Problema de calidad', 'Preparación - Ajustes de la máquina', 'Ausentismo'],
			datasets: [{
				type: 'line',
				label: '%',
				borderColor: COLOR_RED,
				borderWidth: 0,
				fill: false,
				data: [
					37.5,
					37.5 + 25,
					37.5 + 25 + 21.875,
					37.5 + 25 + 21.875 + 9.375,
					37.5 + 25 + 21.875 + 9.375 + 6.25
				],
				yAxisID: 'y-axis-2'
			}, {
				type: 'bar',
				label: 'Minutos',
				backgroundColor: COLOR_BLUE,
				data: [
					60,
					40,
					35,
					15,
					10
				],
				borderColor: 'white',
				borderWidth: 2
			}]

		};

		var horizontalBarChartData = {
			labels: ['Falta de material', 'Falla en el equipo', 'Problema de calidad', 'Preparación - Ajustes de la máquina', 'Ausentismo'],
			datasets: [{
				label: 'Paros',
				backgroundColor: "#8bb8f1",
				borderColor: "#2f80e7",
				borderWidth: 1,
				data: [
					2, 4, 3, 1, 1
				]
			}]

		};

		window.onload = function () {
			var ctx = document.getElementById('canvas').getContext('2d');
			ctx.height = 600;
			window.myMixedChart = new Chart(ctx, {
				type: 'bar',
				data: chartData,
				options: {
					maintainAspectRatio: true,
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
						yAxes: [{
							display: true,
							scaleLabel: {
								display: true,
								labelString: 'Minutos'
							},
							ticks: {
								//steps: 1,
								//stepValue: 1,
								stepSize: 5,
								beginAtZero: true,
								min: 0,
								//max: 100
							}
						}, {
							type: "linear",
							position: "right",
							id: "y-axis-2",
							ticks: {
								suggestedMin: 0,
								callback: function (value) {
									return value + "%";
								}
							},
							scaleLabel: {
								display: true,
								labelString: "Porcentaje"
							}
						}]
					},
					title: {
						display: true,
						text: 'Tiempos muertos'
					}
				}
			});

			//bar horizontal
			ctx = document.getElementById('canvasBarHorizontal').getContext('2d');
			ctx.height = 600;
			window.myHorizontalBar = new Chart(ctx, {
				type: 'horizontalBar',
				data: horizontalBarChartData,
				options: {
					// Elements options apply to all of the options unless overridden in a dataset
					// In this case, we are setting the border of each horizontal bar to be 2px wide
					elements: {
						rectangle: {
							borderWidth: 2,
						}
					},
					maintainAspectRatio: true,
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
								labelString: 'No. De eventos'
							},
							ticks: {
								stepSize: 1,
								beginAtZero: true,
								min: 0,
							}
						}]
					},
					title: {
						display: false,
						text: 'No. De eventos'
					}
				}
			});
		};

		$(document).ready(function () {
			FormPlugins.init();
		});
	</script>
</asp:Content>
