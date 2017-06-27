<#assign brand_color = theme_display.getThemeSetting('Brand-Color') />
<#assign brand_color_text = theme_display.getThemeSetting('Brand-Color-Text') />
<#assign gray_base = theme_display.getThemeSetting('Gray-Base') />
<#assign navbar_bg = theme_display.getThemeSetting('Navbar-Bg') />
<#assign navbar_color = theme_display.getThemeSetting('Navbar-Color') />

<style>

    /** BASE **/
	h1,h2,a,label.primary{
		color:${brand_color};
	}

	body,p,h3,h4,h5,h6,label{
		color:${gray_base};
	}

	input,input[type="text"],input[type="email"],input[type="password"],input[type="number"],input[type="checkbox"]:before, input[type="radio"]:before{
        border-color: ${gray_base};
        color: ${gray_base};    
	}

    input[type="checkbox"]+label.default:before, input[type="radio"]+label.default:before{
        border-color: ${gray_base};
    }

    input[type="checkbox"]+label:before, input[type="radio"]+label:before,
    input[type="checkbox"]+label.primary:before, input[type="radio"]+label.primary:before{
        border-color: ${brand_color};
    }

    label.primary,input.primary{
        border-color: ${brand_color};
        color: ${brand_color};      
    }

    label.default,input.default{
        border-color: ${gray_base};
        color: ${gray_base};        
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

    input[type="checkbox"]:checked+label:before, input[type="radio"]:checked+label:before,input[type="radio"]:checked+label:before{
        background:${brand_color};
        color:${brand_color_text};
        border-color:${brand_color};
    } 

    input[type="checkbox"]:checked+label.default:before, input[type="radio"]:checked+label.default:before{
        background:${gray_base};
        border-color:${gray_base};
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

    .btn.btn-link{
        color: ${brand_color};
    }         

    .btn.btn-primary{ 
        background-color: ${brand_color};
        border-color: ${brand_color};
        color: ${brand_color_text};
    }	

	.btn.btn-border{
		border:1px solid ${brand_color_text};	
		color:1px solid ${brand_color_text};
	}	
	
	.btn.btn-border-primary{
		border:1px solid ${brand_color};	
		color:${brand_color};	
	}		

    /** MENU **/
    .type1 .header-nav{
        background: ${navbar_bg};
    }
    
    .type1 .header-nav .show-menu .icon-bar{ 
    	background: ${navbar_color};
    }
	
	.type1 nav ul li a{
		color: ${navbar_color};
	}
    
    .type2 .header-nav .show-menu .icon-bar{ 
        background: ${navbar_bg};
    }    

    .type2 .aside-bar {
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
    .portlet-topper-toolbar>a, .portlet-topper-toolbar>span>a, .portlet-topper-toolbar .lfr-icon-menu>a{
        color:${brand_color};
    }


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

    .form-group .input-group .form-control{
        border-color: ${gray_base};  
        color: ${gray_base};
    }

    .form-group .input-group .input-group-addon{
        background-color: ${gray_base};
        border-color:${gray_base};
    }

    .form-group .input-group.input-group-primary .form-control{
        border-color: ${brand_color};  
        color: ${brand_color};
    }

    .form-group .input-group.input-group-primary .input-group-addon{
        background-color: ${brand_color};
        border-color: ${brand_color};
        color: ${brand_color_text};       
    }

    .modal-header .close, .modal-header .modal-primary-action-button{
        color: ${brand_color};
    }
	
	/** TEMPLATES **/
	.highlighted-banner-template{
		background: ${brand_color};
	}
	.highlighted-banner-template *{
		color: ${brand_color_text};
	}
	
	/** OTHERS **/
	
	.lfr-spa-loading-bar{
		background: ${brand_color};
	}

    @media (max-width: 1200px){
        .type1 .aside-bar{
            background:${gray_base};
        }
</style>