@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface for Discount'
define view entity ZHS_I_DmoDiscount as select from  zhs_dmo_discount
{
  key partner  as PartnerNumber,
  key material as MaterialNumber,
      discount as DiscountValue
}
