<#assign columns_lg = ColumnsNumberLG.getData() />
<#assign columns_md = ColumnsNumberMD.getData() />
<#assign columns_sm = ColumnsNumberSM.getData() />
<#assign columns_xs = ColumnsNumberXS.getData() />



<div class="card-list-template">
    <div class="row">
        <#list card.getSiblings() as item>
            <div class="col-lg-${columns_lg} col-md-${columns_md} col-sm-${columns_sm} col-xs-${columns_xs}">
                <div class="card">
                
                    <img src="${item.image.getData()}" alt="${item.image.alt.getData()}"/>
                    <div class="card-row card-row-padded card-row-valign-top">
                        <div class="card-col-content">    
                            <h3>${item.header.getData()}</h3>
                            <p>${item.description.getData()}</p>
                            
                            <a href="${item.ShowMore.link.getData()}" title="${item.ShowMore.link.title.getData()}">${item.ShowMore.getData()}</a>
                        </div>        
                  </div>
                </div>
            </div>    
        </#list>
    </div>
</div>