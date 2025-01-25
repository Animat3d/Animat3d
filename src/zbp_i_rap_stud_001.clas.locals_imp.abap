CLASS lhc_Student DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Student RESULT result.
    METHODS setadmit FOR MODIFY
      IMPORTING keys FOR ACTION student~setadmit RESULT result.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR student RESULT result.

ENDCLASS.

CLASS lhc_Student IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD setAdmit.

    MODIFY ENTITIES OF zi_rap_stud_001 IN LOCAL MODE
    ENTITY student
    UPDATE
    FIELDS ( status )
    WITH VALUE #( FOR key IN keys ( %tky = key-%tky Status = abap_true ) )
    FAILED failed
    REPORTED reported.

  ENDMETHOD.

  METHOD get_instance_features.

    READ ENTITIES OF zi_rap_stud_001  IN LOCAL MODE
    ENTITY student
    FIELDS ( status ) WITH CORRESPONDING #( keys )
    RESULT DATA(studentadmitted)
    FAILED failed.

    result = VALUE #( FOR stud IN studentadmitted LET statusval = COND #( WHEN stud-status = abap_true
                                                                          THEN if_abap_behv=>fc-o-disabled
                                                                          ELSE if_abap_behv=>fc-o-enabled ) IN ( %tky = stud-%tky
                                                                                                                 %action-setAdmit = statusval ) ).

  ENDMETHOD.

ENDCLASS.
