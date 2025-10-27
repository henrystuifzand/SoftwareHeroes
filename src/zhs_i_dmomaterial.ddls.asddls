@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface for Material'
define view entity ZHS_I_DmoMaterial
  as select from zhs_dmo_material
{
  key material       as MaterialNumber,
      name           as MaterialName,
      description    as MaterialDescription,
      @Semantics.quantity.unitOfMeasure: 'STOCKUNIT' 
      stock          as Stock,
      stock_unit     as StockUnit,
      @Semantics.amount.currencyCode : 'Currency'
      price_per_unit as PricePerUnit,
      currency       as Currency
}
