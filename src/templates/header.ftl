<section class="header-nav panel row">			
	<button class="show-menu">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>

	<#if header_type == 'type1'>
		<div class="block-logo">
			<a class="${logo_css_class} navbar-brand" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
				<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
			</a>
		</div>	
		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>

		<#if !is_signed_in>
			<a class="login-link visible-lg" data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" rel="nofollow">
				<svg class="lexicon-icon">
				    <use xlink:href="${images_folder}/lexicon/icons.svg#user" />
				</svg>
			</a>
		<#else>	
			<a class="login-link visible-lg" data-redirect="${is_login_redirect_required?string}" href="${sign_out_url}" rel="nofollow">
				<svg class="lexicon-icon">
				    <use xlink:href="${images_folder}/lexicon/icons.svg#logout" />
				</svg>
			</a>		
		</#if>

		<button data-toggle="modal" data-target="#modal-search" class="search-responsive">
			<svg class="lexicon-icon">
			    <use xlink:href="${images_folder}/lexicon/icons.svg#search" />
			</svg>
		</button>

		<div aria-labelledby="modal-search" class="fade modal" id="modal-search" role="dialog" tabindex="-1">
			<div class="modal-dialog modal-full-screen">
				<div class="modal-content">

					<div class="modal-body modal-body-no-header modal-body-no-footer">
						<button aria-labelledby="Close" class="btn btn-default close" data-dismiss="modal" role="button" type="button">
							<svg class="lexicon-icon">
							    <use xlink:href="${images_folder}/lexicon/icons.svg#times" />
							</svg>								
						</button>						

						<#include "${full_templates_path}/search.ftl" />			
					</div>

				</div>
			</div>
		</div>		


	</#if>

	<#if header_type == 'type2'>
		<div class="search-component">	
			<#include "${full_templates_path}/search.ftl" />
		</div>
	</#if>
</section>
