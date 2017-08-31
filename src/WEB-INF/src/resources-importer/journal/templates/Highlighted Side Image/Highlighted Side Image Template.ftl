<#assign image_position = ImagePosition.getData() />

<div class="highlighted-content-sideimage-template"> 
    <div class="container-fluid"> 
        <div class="row"> 
            <#if image_position == 'left'>
                <div class="col-sm-6 col-xs-12">
                
                    <#if Image.getData()?? && Image.getData() != "">
                    	<img alt="${Image.Alt.getData()}" src="${Image.getData()}" />
                    </#if>                
    
                </div> 
                
                <div class="col-sm-6 col-xs-12 text-center"> 
                    <div class="row"> 
                        <div class="col-lg-9 col-lg-offset-1 col-sm-10 col-sm-offset-1 col-xs-12"> 
                            ${Content.getData()}
                            <#if ShowButton.getData() == 'true'>
                                <a class="btn btn-border-primary" href="${ShowButton.Button.getFriendlyUrl()}" title="${ShowButton.Title.getData()}">${ShowButton.ButtonText.getData()}</a>
                            </#if>
                            
                            
                        </div> 
                    </div> 
                </div>                 
            
            <#else>

                <div class="col-sm-6 col-xs-12 text-center"> 
                    <div class="row"> 
                        <div class="col-lg-9 col-lg-offset-1 col-sm-10 col-sm-offset-1 col-xs-12"> 
                            ${Content.getData()}
                            <#if ShowButton.getData() == 'true'>
                                <a class="btn btn-border-primary" href="${ShowButton.Button.getFriendlyUrl()}" title="${ShowButton.Title.getData()}">${ShowButton.ButtonText.getData()}</a>
                            </#if>
                            
                            
                        </div> 
                    </div> 
                </div>     
                <div class="col-sm-6 col-xs-12">
                
                    <#if Image.getData()?? && Image.getData() != "">
                    	<img alt="${Image.Alt.getData()}" src="${Image.getData()}" />
                    </#if>                
    
                </div>                 
            </#if>
        </div>
    </div>
</div>