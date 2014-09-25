{assign var='freeshipping_price' value=Configuration::get('PS_SHIPPING_FREE_PRICE')}

{if $freeshipping_price}
{assign var='freeshipping_price_converted' value={toolsConvertPrice price=$freeshipping_price}}


{math equation='a-b' a=$total_price b=$total_shipping assign='total_without_shipping'}
{math equation='a-b' a=$freeshipping_price_converted b=$total_without_shipping assign='remaining_to_spend'}

{if $remaining_to_spend > 0}

<a class="btn" >
<i class="icon-info-sign icon-large"> </i>
{l s=' Varer i alt (inkl. moms og uden forsendelse) :'} {convertPrice price=$total_without_shipping}</a>

<br>

<a class="button btn btn-default standard-checkout button-medium" href="http://www.SITEname.dk">
<i class="icon-shopping-cart icon-3x"> </i>
{convertPrice price=$remaining_to_spend} {l s='fra at opnå gratis fragt'} - Fors&aelig;t indk&oslash;b

</a>
{/if}

{/if}
  
<div id="HOOK_SHOPPING_CART">{$HOOK_SHOPPING_CART}</div>
