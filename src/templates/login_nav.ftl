	<div id="heading">
		
		<div class="heading-user">
			<div class="heading-user-img">
				<img width="50" height="50" src="/image/user_male_portrait?img_id=${theme_display.getUser().userId}&amp;" alt=""/>
			</div>
			<div class="heading-user-name">
				<#if !is_signed_in>
					<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">
						${sign_in_text}
					</a>
				<#else>			
					${theme_display.getUser().firstName} ${theme_display.getUser().lastName}
				</#if>
			</div>
			<#if is_signed_in>
				<div class="dropdown">
					<div class="heading-user-menu-icon dropdown-toggle" id="dropdownUserMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<svg class="lexicon-icon">
							<use xlink:href="${images_folder}/lexicon/icons.svg#ellipsis-v" />
						</svg>
					</div>
					<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownUserMenu">
						<li><a href="${my_account_url}">${my_account_text}</a></li>
						<li><a href="${sign_out_url}">${sign_out_text}</a></li>
					</ul>				
				</div>	
			</#if>	
		</div>	
	</div>