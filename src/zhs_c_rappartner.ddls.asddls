@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP consumption for partner'
@Metadata.allowExtensions: true
define root view entity ZHS_C_RAPPartner 
  provider contract transactional_query 
  as projection on ZHS_I_RAPPartner
{
    key PartnerNumber,
    PartnerName,
    Street,
    City,
    Country,
    PaymentCurrency
}
