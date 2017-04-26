<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<#include "${full_templates_path}/color_scheme_styles.ftl" />

<#assign show_breadcrumbs = theme_display.getThemeSetting('Show-Breadcrumbs') />
<#assign container_type = theme_display.getThemeSetting('Container-Fluid-or-Not-Fluid') />
<#assign header_type = theme_display.getThemeSetting('Header-Type') />
<#assign header_fluid = theme_display.getThemeSetting('Header-Fluid-or-Not-Fluid') />


<#if container_type == 'Container Fluid'>
	<#assign container_type = 'container-fluid' />
<#else>
	<#assign container_type = 'container' />
</#if>

<#if header_type == 'Full Width Header'>
	<#assign container_type = 'type1' />
<#else>
	<#assign container_type = 'type2' />
</#if>

<#if header_fluid == 'Header Fluid'>
	<#assign header_fluid = 'container-fluid' />
<#else>
	<#assign header_fluid = 'container' />
</#if>

<div class="container-fluid" id="wrapper">
	
	<#if has_navigation && is_setup_complete>
		<#include "${full_templates_path}/navigation.ftl" />
	</#if>

	<div class="wrapper">
		<header id="banner" role="banner" class="${header_fluid} ${header_type}">

			<section class="header-nav panel">
			
				<button class="show-menu">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<a style="display:none;" class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
				</a>
				
				<div class="search-component">	
					<#include "${full_templates_path}/search.ftl" />
				</div>
			</section>
			
		</header>

		<section id="content" class="${container_type}">
			<h1 class="hide-accessible">${the_title}</h1>
			
			<#if show_breadcrumbs == 'true'>
				<nav id="breadcrumbs">
					<#include "${full_templates_path}/breadcrumbs.ftl" />
				</nav>
			</#if>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>

		</section>

		<footer id="footer" role="contentinfo">
			<#include "${full_templates_path}/footer.ftl" />
		</footer>		
		
	</div>	
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<script src="${javascript_folder}/libs/owl.carousel.min.js" type="text/javascript"/></script>
<!-- endinject -->



</body>

</html>