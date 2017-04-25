<#assign Facebook_Link = theme_display.getThemeSetting('Facebook-Link') />
<#assign Show_Facebook_Link = theme_display.getThemeSetting('Show-Facebook-Link') />

<#assign Twitter_Link = theme_display.getThemeSetting('Twitter-Link') />
<#assign Show_Twitter_Link = theme_display.getThemeSetting('Show-Twitter-Link') />

<#assign Instagram_Link = theme_display.getThemeSetting('Instagram-Link') />
<#assign Show_Instagram_Link = theme_display.getThemeSetting('Show-Instagram-Link') />

<#assign Linkedin_Link = theme_display.getThemeSetting('Linkedin-Link') />
<#assign Show_Linkedin_Link = theme_display.getThemeSetting('Show-Linkedin-Link') />

<#assign Youtube_Link = theme_display.getThemeSetting('Youtube-Link') />
<#assign Show_Youtube_Link = theme_display.getThemeSetting('Show-Youtube-Link') />

<#assign Google_Plus_Link = theme_display.getThemeSetting('Google-Plus-Link') />
<#assign Show_Google_Plus_Link = theme_display.getThemeSetting('Show-Google-Plus-Link') />


	<ul>
		<#if Show_Facebook_Link == 'true'>
			<li>
				<a href="${Facebook_Link}" target="_blank" title="Facebook">
					<i class="icon-facebook" aria-hidden="true"></i>
				</a>
			</li>
		</#if>

		<#if Show_Twitter_Link == 'true'>		
			<li>
				<a href="${Twitter_Link}" target="_blank" title="Twitter">
					<i class="icon-twitter" aria-hidden="true"></i>
				</a>
			</li>
		</#if>

		<#if Show_Instagram_Link == 'true'>
			<li>
				<a href="${Instagram_Link}" target="_blank" title="Instagram">
					<i class="icon-instagram" aria-hidden="true"></i>
				</a>
			</li>
		</#if>

		<#if Show_Linkedin_Link == 'true'>
			<li>
				<a href="${Linkedin_Link}" target="_blank" title="Linkedin">
					<i class="icon-linkedin" aria-hidden="true"></i>
				</a>
			</li>
		</#if>

		<#if Show_Youtube_Link == 'true'>
			<li>
				<a href="${Youtube_Link}" target="_blank" title="Youtube">
					<i class="icon-youtube" aria-hidden="true"></i>
				</a>
			</li>	
		</#if>

		<#if Show_Google_Plus_Link == 'true'>
			<li>
				<a href="${Google_Plus_Link}" target="_blank" title="Google Plus">
					<i class="icon-google-plus" aria-hidden="true"></i>
				</a>
			</li>
		</#if>

	</ul>
