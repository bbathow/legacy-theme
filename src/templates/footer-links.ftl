<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "nopadding")>
<@liferay_portlet["runtime"]
defaultPreferences="${freeMarkerPortletPreferences}"
portletProviderAction=portletProviderAction.VIEW
instanceId= '5487'
portletName="com_liferay_site_navigation_site_map_web_portlet_SiteNavigationSiteMapPortlet" />
${freeMarkerPortletPreferences.reset()}
