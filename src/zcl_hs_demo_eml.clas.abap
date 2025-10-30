CLASS zcl_hs_demo_eml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hs_demo_eml IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_selection TYPE TABLE FOR READ IMPORT ZHS_I_RAPPartner.

    lt_selection = VALUE #( ( PartnerNumber = '1000000001' ) ( PartnerNumber = '1000000003' ) ).

    READ ENTITIES OF ZHS_I_RAPPartner ENTITY Partner
    ALL FIELDS WITH lt_selection
    RESULT DATA(lt_partner_long)
    FAILED  DATA(Ls_failed)
    REPORTED DATA(ls_reported).

    out->write( lt_partner_long ).


    READ ENTITIES OF ZHS_I_RAPPartner ENTITY Partner
      FIELDS ( PartnerName Street City ) WITH VALUE #(
        ( PartnerNumber = '1000000001' )
        ( PartnerNumber = '1000000003' )
      )
      RESULT DATA(lt_partner_short)
      FAILED ls_failed
      REPORTED ls_reported.

    out->write( lt_partner_short ).

  ENDMETHOD.
ENDCLASS.
