@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for Student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZC_RAP_STUD_001
  as projection on ZI_RAP_STUD_001
{
      @EndUserText.label: 'Student ID'
  key Id,
      @EndUserText.label: 'Firstname'
      Firstname,
      @EndUserText.label: 'Lastname'
      Lastname,
      @EndUserText.label: 'Student Age'
      Age,
      @EndUserText.label: 'Course'
      Course,
      @EndUserText.label: 'Course Duration'
      Courseduration,
      @EndUserText.label: 'Status'
      Status,
      @EndUserText.label: 'Gender'
      Gender,
      @EndUserText.label: 'Date of Birth'
      Dob,
      @EndUserText.label: 'Last Changed At'
      LastChangedAt,
      @EndUserText.label: 'Local Last Changed At'
      LocalLastChangedAt
}
