<div class="aside-bar">

	<#if header_type == 'type1'>
		<div class="hidden-lg">
			<#include "${full_templates_path}/login_nav.ftl" />
		</div>
	<#else>
		<#include "${full_templates_path}/login_nav.ftl" />
	</#if>

	<#include "${full_templates_path}/navigation.ftl" />
	
</div>	