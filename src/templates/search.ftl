<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
<@liferay_portlet["runtime"]
defaultPreferences="${freeMarkerPortletPreferences}"
portletProviderAction=portletProviderAction.VIEW
portletName="com_liferay_portal_search_web_portlet_SearchPortlet" />
${freeMarkerPortletPreferences.reset()}
