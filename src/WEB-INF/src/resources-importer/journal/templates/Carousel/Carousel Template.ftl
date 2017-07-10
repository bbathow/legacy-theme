<script type="text/javascript">

    $(document).ready(function(){
    
        $('.carousel-template').each(function(){  
        
            if(!$(this).hasClass('owl-carousel')){
  
                $(this).owlCarousel({
                  navigation : true,
                  navigationText:['<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>','<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>'],
                  slideSpeed : 300,
                  paginationSpeed : 400,
                  singleItem : true,
                  pagination: false
                 });
            }
        });
    })

</script>

<div id="carousel-template" class="carousel-template">
    <#list items.getSiblings() as item>
        <div class="item">
          <a href="${item.link.getData()}" title="${item.link.title.getData()}">
            <img src="${item.image.getData()}" alt="${item.image.alt.getData()}"/>
          </a>
        </div>  
    </#list>
</div>