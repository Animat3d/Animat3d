@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Interface View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_RAP_STUD_001
  as select from ztab_student_001
{
  key id                 as Id,
      firstname          as Firstname,
      lastname           as Lastname,
      age                as Age,
      course             as Course,
      courseduration     as Courseduration,
      status             as Status,
      gender             as Gender,
      dob                as Dob,
      lastchangedat      as LastChangedAt,
      locallastchangedat as LocalLastChangedAt
}
