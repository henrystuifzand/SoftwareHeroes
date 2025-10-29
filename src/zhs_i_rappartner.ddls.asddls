@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP Interface for Partner'
@Metadata.allowExtensions: true

define root view entity ZHS_I_RAPPartner
  as select from zhs_dmo_partner
{
  key partner          as PartnerNumber,
      name             as PartnerName,
      street           as Street,
      city             as City,
      country          as Country,
      payment_currency as PaymentCurrency
}
