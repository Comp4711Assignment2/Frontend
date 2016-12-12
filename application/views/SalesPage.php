<!-- Description of purchasable items

@author Naseem
 -->
<div class="row">
    <div class="span12 offset1">
        <h2>Stock</h2>
        {stock}
        <form class="well row">
            <div class="row span10 col-md-10">
                <div class="col-md-2">{code}</div>
                <div class="col-md-3">Selling Price: {sellingPrice}</div>
            </div>
            <div class="row span10 col-md-10">
                <div class="col-md-12">{description}</div>
            </div>
            <button type="submit" class="btn btn-default col-md-2">Buy</button>
        </form>
    {/stock}
    </div>
</div>