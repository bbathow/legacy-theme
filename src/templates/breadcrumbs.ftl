<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
<#assign VOID = freeMarkerPortletPreferences.setValue("groupId", '${group_id}') />

<@liferay_portlet["runtime"]
defaultPreferences="${freeMarkerPortletPreferences}"
portletProviderAction=portletProviderAction.VIEW 
instanceId = 'afasfs'
portletName="com_liferay_site_navigation_breadcrumb_web_portlet_SiteNavigationBreadcrumbPortlet" />
${freeMarkerPortletPreferences.reset()}
