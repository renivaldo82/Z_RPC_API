CLASS zcl_rpc_carga_api DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rpc_carga_api IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    TYPES: tt_func  TYPE TABLE OF ztrpc_func WITH DEFAULT KEY.

    DATA(lo_uuid) = cl_uuid_factory=>create_system_uuid( ).

    DATA(lt_func) = VALUE tt_func(
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Vitoria' )
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Rafael' )
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Anderson' )
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Eduardo' )
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Nubia' )
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Fernando' )
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Valissa' )
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Edson' )
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Erick' )
         ( id_func = lo_uuid->create_uuid_x16( ) nome = 'Thiago' )
     ).

    DELETE FROM ztrpc_func.

    MODIFY ztrpc_func FROM TABLE @lt_func.

  ENDMETHOD.

ENDCLASS.
