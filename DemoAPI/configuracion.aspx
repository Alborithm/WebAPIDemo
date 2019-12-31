<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="configuracion.aspx.cs" Inherits="DemoAPI.configuracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	<!-- ================== BEGIN PAGE CSS STYLE ================== -->
	<link href="../assets/plugins/switchery/switchery.min.css" rel="stylesheet" />
	<!-- ================== END PAGE CSS STYLE ================== -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item active">Configuración</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Configuración <small></small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="widget widget-rounded m-b-30" data-id="widget">
		<div class="vertical-box with-grid with-border-top">
			<div class="vertical-box-column p-15" style="width: 30%;">
				<div class="widget-chart-info">
					<div class="widget-list widget-list-rounded">
						<a href="#conf-general" class="widget-list-item click-conf">
							<div class="widget-list-media icon">
								<i class="fa fa-cog bg-yellow text-inverse"></i>
							</div>
							<div class="widget-list-content">
								<h4 class="widget-list-title">General</h4>
							</div>
							<div class="widget-list-action text-nowrap text-grey-darker text-right">
								<i class="fa fa-angle-right text-muted t-plus-1 fa-lg m-l-5"></i>
								<!--<i class="fa fa-ellipsis-h f-s-14"></i>-->
							</div>
						</a>
						<a href="#conf-correo" class="widget-list-item click-conf">
							<div class="widget-list-media icon">
								<i class="fa fa-envelope bg-yellow text-inverse"></i>
							</div>
							<div class="widget-list-content">
								<h4 class="widget-list-title">Correo</h4>
							</div>
							<div class="widget-list-action text-nowrap text-grey-darker text-right">
								<i class="fa fa-angle-right text-muted t-plus-1 fa-lg m-l-5"></i>
								<!--<i class="fa fa-ellipsis-h f-s-14"></i>-->
							</div>
						</a>
						<a href="#conf-notificaciones" class="widget-list-item click-conf">
							<div class="widget-list-media icon">
								<i class="fa fa-bell bg-yellow text-inverse"></i>
							</div>
							<div class="widget-list-content">
								<h4 class="widget-list-title">Notificaciones</h4>
							</div>
							<div class="widget-list-action text-nowrap text-grey-darker text-right">
								<i class="fa fa-angle-right text-muted t-plus-1 fa-lg m-l-5"></i>
								<!--<i class="fa fa-ellipsis-h f-s-14"></i>-->
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="vertical-box-column widget-chart-content">
				<div id="conf-general" class="widget-card widget-card-rounded cont-config">
					<div class="widget-card-content">
						<b>General</b>
					</div>
					<div class="widget-card-content bottom">
						<div class="table-responsive">
							<table class="table table-profile">
								<tbody>
									<tr class="divider">
										<td colspan="2"></td>
									</tr>
									<tr class="highlight">
										<td class="field">Razón social</td>
										<td>
											<input type="text" class="form-control m-b-5 w-50" value="TRASCENTI CONSULTING SA DE CV" placeholder="Razón Social" /></td>
									</tr>
									<tr>
										<td class="field">Nombre corto</td>
										<td>
											<input type="text" class="form-control m-b-5 w-50" value="trascenti" placeholder="Nombre corto" /></td>
									</tr>
									<tr>
										<td class="field">RFC</td>
										<td>
											<input type="text" class="form-control m-b-5 w-50" value="TCO150525EL3" placeholder="RFC" /></td>
									</tr>
									<tr class="divider">
										<td colspan="2"></td>
									</tr>
									<tr>
										<td class="field">Sitio Web</td>
										<td>
											<input type="url" class="form-control m-b-5 w-50" value="http://trascenti.com/" placeholder="Link" /></td>
									</tr>
									<tr class="divider">
										<td colspan="2"></td>
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
				</div>

				<div id="conf-correo" class="widget-card widget-card-rounded cont-config hide">
					<div class="widget-card-content">
						<b>Correo</b>
					</div>
					<div class="widget-card-content bottom">
						<div class="table-responsive">
							<table class="table table-profile">
								<tbody>
									<tr class="divider">
										<td colspan="2"></td>
									</tr>
									<tr class="highlight">
										<td class="field">Servidor</td>
										<td>
											<input type="text" class="form-control m-b-5 w-50" value="smtp.google.com" placeholder="Host" /></td>
									</tr>
									<tr>
										<td class="field">Correo Electrónico</td>
										<td>
											<input type="email" class="form-control m-b-5 w-50" value="notificaciones@trascenti.com" placeholder="e-mail" /></td>
									</tr>
									<tr>
										<td class="field">Contraseña</td>
										<td>
											<input type="password" class="form-control m-b-5 w-50" value="pwcorreo" placeholder="contraseña" /></td>
									</tr>
									<tr>
										<td class="field">Puerto</td>
										<td>
											<input type="number" class="form-control m-b-5 w-50" value="465" placeholder="Puerto salida" /></td>
									</tr>
									<tr>
										<td class="field">SSL</td>
										<td>
											<select class="form-control input-inline input-xs">
												<option value="true">SI</option>
												<option value="false">NO</option>
											</select>
										</td>
									</tr>
									<tr class="divider">
										<td colspan="2"></td>
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
				</div>

				<div id="conf-notificaciones" class="widget-card widget-card-rounded cont-config hide">
					<div class="widget-card-content">
						<b>Notificaciones</b>
					</div>
					<div class="widget-card-content bottom">
						<div class="table-responsive">
							<table class="table table-bordered table-condensed table-td-valign-middle">
								<thead>
									<tr>
										<th style="width: 5%"></th>
										<th style="width: 95%">Descripción</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input type="checkbox" data-render="switchery" data-theme="default" checked /></td>
										<td>OEE Diario</td>
									</tr>
									<tr>
										<td>
											<input type="checkbox" data-render="switchery" data-theme="default" checked /></td>
										<td>Paros</td>
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
				</div>

			</div>

		</div>
	</div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptFooter" runat="server">

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="../assets/plugins/switchery/switchery.min.js"></script>

	<!-- ================== END PAGE LEVEL JS ================== -->

	<script type="text/javascript">
		$(document).ready(function () {
			renderSwitcher()
		});
		var renderSwitcher = function () {
			if ($('[data-render=switchery]').length !== 0) {
				$('[data-render=switchery]').each(function () {
					var themeColor = COLOR_GREEN;
					if ($(this).attr('data-theme')) {
						switch ($(this).attr('data-theme')) {
							case 'red':
								themeColor = COLOR_RED;
								break;
							case 'blue':
								themeColor = COLOR_BLUE;
								break;
							case 'purple':
								themeColor = COLOR_PURPLE;
								break;
							case 'orange':
								themeColor = COLOR_ORANGE;
								break;
							case 'black':
								themeColor = COLOR_BLACK;
								break;
						}
					}
					var option = {};
					option.color = themeColor;
					option.secondaryColor = ($(this).attr('data-secondary-color')) ? $(this).attr('data-secondary-color') : '#dfdfdf';
					option.className = ($(this).attr('data-classname')) ? $(this).attr('data-classname') : 'switchery';
					option.disabled = ($(this).attr('data-disabled')) ? true : false;
					option.disabledOpacity = ($(this).attr('data-disabled-opacity')) ? parseFloat($(this).attr('data-disabled-opacity')) : 0.5;
					option.speed = ($(this).attr('data-speed')) ? $(this).attr('data-speed') : '0.5s';
					var switchery = new Switchery(this, option);
				});
			}
		};

		$(".click-conf").click(function (e) {
			e.preventDefault();
			var idCont = ($(this)[0].hash).replace(/#/, "");
			$(".cont-config").hide();
			$("#" + idCont).show().removeClass("hide");

		});
	</script>
</asp:Content>
