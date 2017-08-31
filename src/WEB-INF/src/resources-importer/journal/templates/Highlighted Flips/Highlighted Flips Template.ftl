<#assign columns_lg = ColumnsNumberLG.getData() />
<#assign columns_md = ColumnsNumberMD.getData() />
<#assign columns_sm = ColumnsNumberSM.getData() />
<#assign columns_xs = ColumnsNumberXS.getData() />

<div class="hightlighted-flips-template">

	<div class="container">

		<div class="row">
            <#list Item.getSiblings() as item>
            	<#assign iconType = item.IconType.getData() />

    			<div class="col-lg-${columns_lg} col-md-${columns_md} col-sm-${columns_sm} col-xs-${columns_xs} text-center">
    
    				<div class="image">
    
    					<div class="icon">
                        
    						<#if iconType=='["material"]'>
    							<i class="${IconSize.getData()} material-icons" style="color:${item.IconColor.getData()};background:${item.IconBackground.getData()};padding:${IconPadding.getData()}">${item.IconCode.getData()}</i>
    						
    						<#elseif iconType=='["fontawesome"]'>	
    							<span aria-hidden="true" class="${IconSize.getData()} ${item.IconCode.getData()}" style="color:${item.IconColor.getData()};background:${item.IconBackground.getData()};padding:${IconPadding.getData()}"></span>
    							
    						<#elseif iconType=='["glyphicon"]'>	
    							<span aria-hidden="true" class="${IconSize.getData()} glyphicon ${item.IconCode.getData()}" style="color:${item.IconColor.getData()};background:${item.IconBackground.getData()};padding:${IconPadding.getData()}"></span>

    						</#if>

    					</div>
    
    				</div>
    
    	 
    
    				<div class="info">
    					<h3>${item.Header.getData()}</h3>
    					<p>${item.Content.getData()}</p>
    				</div>
    
    			</div>
            </#list> 
		</div>

	</div>

</div>