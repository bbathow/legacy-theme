<#assign brand_color = theme_display.getThemeSetting('Brand-Color') />
<#assign brand_color_text = theme_display.getThemeSetting('Brand-Color-Text') />
<#assign gray_base = theme_display.getThemeSetting('Gray-Base') />

<style>

    /** BASE **/
	h1,h2,a,label.primary{
		color:${brand_color};
	}

	body,p,h3,h4,h5,h6,label{
		color:${gray_base};
	}

	label.primary{
        border-color: ${brand_color};
        color: ${brand_color};		
	}

	label.default{
        border-color: ${gray_base};
        color: ${gray_base};		
	}

	input,input[type="checkbox"]:before, input[type="radio"]:before{
		border-color: ${brand_color};
	}

 	input:checked + label:before {
        background: ${brand_color};
        color: ${brand_color_text};
    }

 	input:checked + label.default:before{
        background: ${gray_base};
        color: ${brand_color_text};
        border-color: ${gray_base};
    }

    .text-default{
        color: ${gray_base};
    }

    .text-primary{
        color: ${brand_color};
    }

    /** BUTTONS **/
    .btn.btn-default{
        border-color: ${gray_base};
        color: ${gray_base};
    }   

    .btn.btn-primary{ 
        background-color: ${brand_color};
        border-color: ${brand_color};
        color: ${brand_color_text};
    }	 

    /** MENU **/
    .header-nav .show-menu .icon-bar{ 
    	background: ${brand_color};
    }

    .aside-bar {
		background: ${gray_base};
    }

    .aside-bar #heading {
    	background: ${brand_color};
    }

    /** FOOTER **/ 
    #footer{
        background:${gray_base};
    }

    #footer .section2 .panel{
        background:${brand_color};
        color:${brand_color_text};
    }    

    /** PORTLETS **/
    #breadcrumbs .breadcrumb li + li:before,#breadcrumbs .breadcrumb li a{
        color:${gray_base};
    }

    /** LEXICON **/
    .sticker{
        color:${brand_color};
    }

    .panel-heading .panel-title{
        color:${brand_color};
    }

    .navbar .navbar-nav > li > a,.navbar .navbar-nav > li > a:hover,.navbar .navbar-nav > li > a:focus{
        color:${gray_base};
    }

    .navbar .navbar-nav>.active>a, .navbar .navbar-nav>.active>a:hover, .navbar .navbar-nav>.active>a:focus{
        color:${brand_color};
    }

</style>