<#assign itemsNumberLG = ItemsNumberLG.getData() />
<#assign sizeLG = SizeLG.getData() />
<#assign itemsNumberMD = ItemsNumberMD.getData() />
<#assign sizeMD = SizeMD.getData() />
<#assign itemsNumberSM = ItemsNumberSM.getData() />
<#assign sizeSM = SizeSM.getData() />
<#assign itemsNumberXS = ItemsNumberXS.getData() />
<#assign nav = navigation.getData() />
<#assign hasNavigationClass = '' />

<script type="text/javascript">

    $(document).ready(function(){
        
        $("#card-list-carousel-template-${randomNamespace}").owlCarousel({
            navigation : ${nav},
            navigationText:['<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>','<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>'],
            slideSpeed : 300,
            paginationSpeed : 400,
            pagination: false,
            items : ${itemsNumberLG},
            itemsDesktop : [${sizeLG},${itemsNumberMD}],
            itemsDesktopSmall : [${sizeMD},${itemsNumberSM}], 
            itemsTablet: [${sizeSM},${itemsNumberXS}],
            itemsMobile :  false
         });
        
    })

</script>

<#if nav == 'true' >
    <#assign hasNavigationClass = 'hasNavigation' />
</#if>

<div id="card-list-carousel-template-${randomNamespace}" class="card-list-carousel-template ${hasNavigationClass}">
    
    <#list card.getSiblings() as item>

        <div class="card">
            <img src="${item.image.getData()}" alt="${item.image.alt.getData()}"/>
            <div class="card-row card-row-padded card-row-valign-top">
                <div class="card-col-content">    
                    <h3>${item.header.getData()}</h3>
                    <p>${item.description.getData()}</p>
                    
                    <a href="${item.ShowMore.link.getData()}" title="">${item.ShowMore.getData()}</a>
                </div>        
            </div>
        </div>    
        
    </#list>

</div>