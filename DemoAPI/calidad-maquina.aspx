<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="calidad-maquina.aspx.cs" Inherits="DemoAPI.calidad_maquina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!-- ================== BEGIN PAGE CHARTS CSS STYLE ================== -->
	<link href="../assets/plugins/morris/morris.css" rel="stylesheet" />
	<!-- ================== END PAGE CHARTS CSS STYLE ================== -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
		<li class="breadcrumb-item"><a href="oee-maquina.aspx">Máquina</a></li>
		<li class="breadcrumb-item active">Calidad</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Calidad <small>Máquina 1</small></h1>
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
					<h4 class="panel-title">Producción</h4>
				</div>
				<div class="panel-body text-left align-middle">
					<!--h4 class="text-center">Paros Máquina 1</h4-->
					<canvas id="canvas"></canvas>

					<div class="note note-secondary m-b-15">
						<p>
							<b>Pruducción total: </b> 3,400 Piezas
							<br />
							<b>Pruducción buena (73.53 %): </b> 2,500 Piezas
							<br />
							<b>Pruducción mala (26.47 %): </b> 900 Piezas
						</p>
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
					<h4 class="panel-title">Desperdicio</h4>
				</div>
				<div class="panel-body">
					<h4 class="text-center">Causas de deperdicio</h4>
					<canvas id="canvasDesperdicio" height="100"></canvas>
				</div>
			</div>
			<!-- end panel -->
		</div>
	</div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptFooter" runat="server">
	<!-- ================== BEGIN PAGE CHART JS ================== -->
	<script src="../assets/plugins/chart-js/Chart.min.js"></script>
	<!-- ================== END PAGE CHART JS ================== -->
	<script type="text/javascript">
		//3400
		var barChartData = {
			labels: ['Buena', 'Mala'],
			datasets: [{
				label: 'Piezas',
				backgroundColor: ['#58ceb1', '#ec2121'],
				borderColor: ['#58ceb1', '#ec2121'],
				borderWidth: 1,
				data: [
					2500,
					900
				]
			}]

		};

		var chartData = {
			labels: ['Problema de calidad', 'Deforme', 'Arracque de máquina'],
			datasets: [{
				type: 'line',
				label: '%',
				borderColor: COLOR_RED,
				borderWidth: 0,
				fill: false,
				data: [
					55.56,
					55.56 + 33.33,
					55.56 + 33.33 + 11.11

				],
				yAxisID: 'y-axis-2'
			}, {
				type: 'bar',
				label: 'Piezas',
				backgroundColor: "#8bb8f1",
				data: [
					500,
					300,
					100
				],
				borderColor: 'white',
				borderWidth: 2
			}]

		};

		window.onload = function () {
			var ctx = document.getElementById('canvas').getContext('2d');
			window.myBar = new Chart(ctx, {
				type: 'bar',
				data: barChartData,
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
						yAxes: [{
							display: true,
							scaleLabel: {
								display: true,
								labelString: 'Piezas'
							},
							ticks: {
								//steps: 1,
								//stepValue: 1,
								//stepSize: 1,
								beginAtZero: true,
								min: 0,
								//max: 100
							}
						}]
					},
					title: {
						display: true,
						text: 'Producción'
					}
				}
			});


			var ctx2 = document.getElementById('canvasDesperdicio').getContext('2d');
			//ctx.height = 600;
			window.myMixedChart = new Chart(ctx2, {
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
								labelString: 'Piezas'
							},
							ticks: {
								//steps: 1,
								//stepValue: 1,
								//stepSize: 5,
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
						display: false,
						text: 'Desperdicio'
					}
				}
			});

		};
	</script>
</asp:Content>
