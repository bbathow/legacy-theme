<#assign columns_lg = ColumnsNumberLG.getData() />
<#assign columns_md = ColumnsNumberMD.getData() />
<#assign columns_sm = ColumnsNumberSM.getData() />
<#assign columns_xs = ColumnsNumberXS.getData() />

<#assign filtersList = FiltersList.FilterItem.getSiblings() />
<#assign showFilterAll= FiltersList.FilterAll.ShowFilterAll.getData() />
<#assign filterAllName= FiltersList.FilterAll.FilterAllName.getData() />
<#assign cardList = CardList.Card.getSiblings() />

<#assign cont = 1 />

<div class="filtered-card-list-template">

    <form id="filter">
        <div class="row">
            <fieldset class="col-md-8 col-xs-12">
                <legend class="sr-only">Filter by type</legend> 
                <div class="row">
                    <#if showFilterAll == 'true'>
                        <div class="col-md-2">
                            <label class="btn btn-primary">
                                <input checked="checked" name="type" type="radio" value="all">
                                ${filterAllName}
                            </label> 
                        </div>    
                    </#if>    
                    <#list filtersList as filter>
                        <div class="col-md-2">
                            <label class="btn btn-default">
                                <input name="type" type="radio" value="${filter.FilterValue.getData()}">
                                ${filter.FilterName.getData()}
                            </label> 
                        </div>    
                    </#list>  
                </div>    
            </fieldset> 
        
            <fieldset class="orderBy col-md-4 col-xs-12">
                <div class="row">
                    <div class="col-md-3">
                        <label class="btn">Sort by</label>
                    </div>
                    <div class="col-md-9">
                        <select name="sort" class="form-control">
                            <option value="nameaz">Name, A to Z</option>
                            <option value="nameza">Name, Z to A</option>
                            <option value="description">Description</option>
                        </select>
                    </div>    
                </div>
            </fieldset> 
        </div>
    </form>
    <div class="cards-list">
        <div class="row">
            <#list cardList as item>
                <div data-id="id-${cont}" data-type="${item.Filter.getData()}" class="filter-item col-lg-${columns_lg} col-md-${columns_md} col-sm-${columns_sm} col-xs-${columns_xs}">
                    <div class="card">
                    
                        <img src="${item.Image.getData()}" alt="${item.Image.Alt.getData()}"/>
                        <div class="card-row card-row-padded card-row-valign-top">
                            <div class="card-col-content">    
                                <h3>${item.Header.getData()}</h3>
                                <p>${item.Description.getData()}</p>
                                <a href="${item.Link.getData()}" title="${item.Link.Title.getData()}">${item.Link.Text.getData()}</a>
                                
                            </div>        
                        </div>
                    </div>
                </div>  
                <#assign cont++ />
            </#list>
        </div> 
    </div>
</div>