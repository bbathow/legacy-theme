<div class="aside-bar">
	<div id="heading">
		
		<div class="heading-user">
			<div class="heading-user-img">
				<img width="50" height="50" src="/image/user_male_portrait?img_id=${theme_display.getUser().userId}&amp;" alt=""/>
			</div>
			<div class="heading-user-name">${theme_display.getUser().firstName} ${theme_display.getUser().lastName}</div>
			<div class="heading-user-menu-icon"><svg class="lexicon-icon"><use xlink:href="${images_folder}/lexicon/icons.svg#ellipsis-v" /></svg></div>
		</div>	
	</div>

	<#if !is_signed_in>
		<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
	</#if>


	<nav class="${nav_css_class}" id="navigation" role="navigation">
		<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>

		<ul aria-label="<@liferay.language key="site-pages" />" role="menubar">
			<#list nav_items as nav_item>
				<#assign nav_item_attr_has_popup = "" />
				<#assign nav_item_attr_selected = "" />
				<#assign nav_item_css_class = "" />
				<#assign nav_item_layout = nav_item.getLayout() />

				<#if nav_item.isSelected()>
					<#assign nav_item_attr_has_popup = "aria-haspopup='true'" />
					<#assign nav_item_attr_selected = "aria-selected='true'" />
					<#assign nav_item_css_class = "selected" />
				</#if>

				<li ${nav_item_attr_selected} class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
					<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>

					<#if nav_item.hasChildren()>
						<ul class="child-menu" role="menu">
							<#list nav_item.getChildren() as nav_child>
								<#assign nav_child_attr_selected = "" />
								<#assign nav_child_css_class = "" />

								<#if nav_item.isSelected()>
									<#assign nav_child_attr_selected = "aria-selected='true'" />
									<#assign nav_child_css_class = "selected" />
								</#if>

								<li ${nav_child_attr_selected} class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
									<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
								</li>
							</#list>
						</ul>
					</#if>
				</li>
			</#list>
		</ul>
	</nav>
</div>	