<section class="header-nav panel row">			
	<button class="show-menu">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>

	<#if header_type == 'type1'>
		<a class="${logo_css_class} navbar-brand" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
			<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
		</a>

		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>	
	</#if>

	<#if header_type == 'type2'>
		<div class="search-component">	
			<#include "${full_templates_path}/search.ftl" />
		</div>
	</#if>
</section>
