@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface for Invoice'
define view entity ZHS_I_DmoInvoice
  as select from zhs_dmo_invoice
{
  key document as DocumentNumber,
      doc_date as DocumentDate,
      doc_time as DocumentTime,
      partner  as PartnerNumber
}
