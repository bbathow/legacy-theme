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
        <fieldset>
            <legend>Filter by type</legend> 
            <#if showFilterAll == 'true'>
                <label>
                    <input checked="checked" name="type" type="radio" value="all">
                    ${filterAllName}
                </label> 
            </#if>    
            <#list filtersList as filter>
                <label>
                    <input name="type" type="radio" value="${filter.FilterValue.getData()}">
                    ${filter.FilterName.getData()}
                </label> 
            </#list>  
        </fieldset> 
        
        <fieldset class="orderBy">
            <label>Sort by</label> 
            <select name="sort">
                <option value="nameaz">Name, A to Z</option>
                <option value="nameza">Name, Z to A</option>
                <option value="description">Description</option>
            </select>
        </fieldset> 
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