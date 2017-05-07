<#assign layoutService = serviceLocator.findService("com.liferay.portal.kernel.service.LayoutLocalService") />
<#assign VOID = freeMarkerPortletPreferences.setValue("groupId", '${group_id}') />	
<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
<#assign VOID = freeMarkerPortletPreferences.setValue("displayDepth", "2") />
<#assign Footer_Links = theme_display.getThemeSetting('Footer-Links') />



<@liferay_portlet["runtime"]
	defaultPreferences="${freeMarkerPortletPreferences}"
	portletProviderAction=portletProviderAction.VIEW
	instanceId="footer458678"
	portletName="com_liferay_site_navigation_site_map_web_portlet_SiteNavigationSiteMapPortlet" />
	
${freeMarkerPortletPreferences.reset()}		