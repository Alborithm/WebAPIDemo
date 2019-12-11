<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="oee-maquina.aspx.cs" Inherits="DemoAPI.oee_maquina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.base.css" type="text/css" />
	<link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.energyblue.css" type="text/css" />
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/jqx-all.js"></script>
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/globalization/globalize.js"></script>
	<link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.arctic.css" type="text/css" />
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
			<div class="panel panel-inverse text-center align-middle bg-inverse" data-sortable-id="index-1">
				<div class="panel-heading">
					<h4 class="panel-title">Disponibilidad</h4>
				</div>
				<div id="gaudeDisponibilidad" 
					class="bg-black text-center align-middle" 
					style="margin: 0 auto;"></div>
				<div class="list-group-item list-group-item-inverse text-ellipsis text-center align-middle" id="gaudeDisponibilidadValue">
				</div>
			</div>
		</div>
		<div class="col col-sm-12 col-md-6 col-lg-3 text-center align-middle">
			<div class="panel panel-inverse text-center align-middle bg-inverse" data-sortable-id="index-1">
				<div class="panel-heading">
					<h4 class="panel-title">Velocidad</h4>
				</div>
				<div id="gaudeVelocidad" class="bg-black text-center align-middle" style="margin: 0 auto;"></div>
				<div class="list-group-item list-group-item-inverse text-ellipsis text-center align-middle" id="gaudeVelocidadValue">
				</div>
			</div>
		</div>
		<div class="col col-sm-12 col-md-6 col-lg-3 text-center align-middle">
			<div class="panel panel-inverse text-center align-middle bg-inverse" data-sortable-id="index-1">
				<div class="panel-heading">
					<h4 class="panel-title">Calidad</h4>
				</div>
				<div id="gaugeCalidad" class="bg-black text-center align-middle" style="margin: 0 auto;"></div>
				<div class="list-group-item list-group-item-inverse text-ellipsis text-center align-middle" id="gaugeCalidadValue">
				</div>
			</div>
		</div>
	</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptFooter" runat="server">
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/jqx-all.js"></script>
	<script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/globalization/globalize.js"></script>

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
				//height: '400px',
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
				//height: '400px',
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
				//height: '400px',
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
				//height: '400px',
				max: 100,
				labels: { position: 'outside', interval: 10 },
				pointer: { style: { fill: '#2e79bb' }, width: 5 },
				animationDuration: 1500
			});
			$('#gaugeCalidad').jqxGauge('value', 90);
			$('#gaugeCalidad').on('valueChanging', function (e) {
				$('#gaugeCalidadValue').text(Math.round(e.args.value) + ' %');
			});
		});
	</script>

</asp:Content>
