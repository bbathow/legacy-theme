<#assign layoutService = serviceLocator.findService("com.liferay.portal.kernel.service.LayoutLocalService") />

<#assign rluuid = layoutService.getFriendlyURLLayout(group_id,false,'/footer') />

<#assign VOID = freeMarkerPortletPreferences.setValue("groupId", '${group_id}') />	

<#assign VOID = freeMarkerPortletPreferences.setValue("displayDepth", "3") />

<#assign VOID = freeMarkerPortletPreferences.setValue("rootLayoutUuid", rluuid.uuid) />

<@liferay_portlet["runtime"]
	defaultPreferences="${freeMarkerPortletPreferences}"
	portletProviderAction=portletProviderAction.VIEW
	instanceId="footer458678"
	portletName="com_liferay_site_navigation_site_map_web_portlet_SiteNavigationSiteMapPortlet" />
	
${freeMarkerPortletPreferences.reset()}		