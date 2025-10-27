@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface for Partner'
define view entity ZHS_I_DmoPartner
  as select from zhs_dmo_partner
{
  key partner          as PartnerNumber,
      name             as PartnerName,
      street           as Street,
      city             as City,
      country          as Country,
      payment_currency as PaymentCurrency
}
