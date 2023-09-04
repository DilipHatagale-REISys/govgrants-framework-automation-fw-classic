@LWC_Notes-Component @regression-LWC @NotesLWC
Business Need: Loading icon for all the operations Component Scenarios
  Test all LWC_Notes component based scenarios
  As a configuration manager i make different configurational changes in LWC_Notes component and will validate them.

  @208789 @208790 @208791 @208834 @208835 @208845
    @208810 @208813 @LWC-NotesSuit @dilip
  Scenario Outline:To verify, when the user clicks on page block shrink action button then the component gets shrunk (Admin / PM / SPI )
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "<programID>"
    When I click on "View" icon for "<programID>" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    #208789
    Then I see "up" arrow is displayed on "Notes" table expanded & not shrinked
    And I pause execution for "5" seconds
    And I click on "up" arrow in "Notes" table
    Then I do not see "Notes" table
    #208790
    And I pause execution for "5" seconds
    And I click on "down" arrow in "Notes" table
    Then I see "Notes" table gets Expand with column "Description"
    #208791
    And I click on top right button "Add" in tableName "Notes"
    Then I see "Add Notes" is in LWC modal window
    And I click on "Save" on LWC modal
    #208810 #208813
    Then I see error massage "Complete this field."in LWC
    Then I see error massage "Please enter value in Description field"in LWC
    #208834 #208835
    Then I enter value "test" inside "Title" in LWC modal
    Then I see error massage "Please enter value in Description field"in LWC
    #208845
    And hover mouse x button and see "Close" text
    And I close LWC modal by clicking the top right x button
    Then I see title
    Then I see "Program View" webpage is loaded
    Examples:
      | User  | programID                                             |
      | ADMIN | {LWC_StaticRecords:AutomationProgramLWCNotesForAdmin} |
      | PM    | {LWC_StaticRecords:AutomationProgramLWCNotesForPM}    |

  @208815 @208844 @208851 @LWC-NotesSuit @dilip
  Scenario: To verify user is not able to save notes if mandatory field 'Title' is not filled and getting error message as 'Complete this field.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Files" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    #208789
    Then I see "up" arrow is displayed on "Notes" table expanded & not shrinked
    And I pause execution for "5" seconds
    And I click on "up" arrow in "Notes" table
    Then I do not see "Notes" table
    #208790
    And I pause execution for "5" seconds
    And I click on "down" arrow in "Notes" table
    Then I see "Notes" table gets Expand with column "Description"
    #208791
    And I click on top right button "Add" in tableName "Notes"
    And I see "Add Notes" is in LWC modal window
    And I click on "Save" on LWC modal
    Then I see error massage "Complete this field."in LWC
    Then I see error massage "Please enter value in Description field"in LWC
    #208844
    Then I enter value "test" inside "Title" in LWC modal
    Then I see error massage "Please enter value in Description field"in LWC
    #208851
    And hover mouse x button and see "Close" text
    And I close LWC modal by clicking the top right x button


  @208852 @LWC-NotesSuit @dilip
  Scenario Outline: To verify 'Title' field is accepting alphanumeric and special characters as an input.(Admin/PM)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "<programID>"
    When I click on "View" icon for "<programID>" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    #208852
    And I click on top right button "Add" in tableName "Notes"
    Then I enter value "QWERTY!@#$%12345" inside "Title" in LWC modal
    Then I enter value "QWERTY!@#$%12345AK47" inside "Description" in LWC modal
    And I click on "Save" on LWC modal
    Then I see "Program View" webpage is loaded
    Then I see "Title" column contains the value "QWERTY!@#$%12345"
    Then I see "Description" column contains the value "QWERTY!@#$%12345AK47"
    Examples:
      | User  | programID                                             |
      | ADMIN | {LWC_StaticRecords:AutomationProgramLWCNotesForAdmin} |
      | PM    | {LWC_StaticRecords:AutomationProgramLWCNotesForPM}    |

  @208853 @LWC-NotesSuit @dilip
  Scenario:To verify 'Title' field is accepting alphanumeric and special characters as an input.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Notes"
    Then I enter value "QWERTY!@#$%12345" inside "Title" in LWC modal
    Then I enter value "QWERTY!@#$%12345AK47" inside "Description" in LWC modal
    And I click on "Save" on LWC modal
    Then I see "Application View" webpage is loaded
    And I pause execution for "7" seconds
    Then I see "Title" column contains the value "QWERTY!@#$%12345"
    Then I see "Description" column contains the value "QWERTY!@#$%12345AK47"

  @208860 @208867 @208869 @208871 @208873 @208856 @LWC-NotesSuit @dilip
  Scenario Outline:To verify user applies font format 'Arial' on the text in description box then respective format should get apply.(Admin / PM )
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "<programID>"
    When I click on "View" icon for "<programID>" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    #208852
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    Then I enter value "Courier Test" inside "Title" in LWC modal
    Then I enter value "Courier Input action performed successfully" inside "Description" in LWC modal
    And I change font "Courier" inside Description on modal
    And I click on "Save" on LWC modal
    Then I see the "Description" contains "Courier Input action performed successfully" have font style is "courier" in Notes modul
    #208860
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "Tahoma Test" inside "Title" in LWC modal
    Then I enter value "Tahoma Input action performed successfully" inside "Description" in LWC modal
    And I change font "Tahoma" inside Description on modal
    And I click on "Save" on LWC modal
    Then I see the "Description" contains "Tahoma Input action performed successfully" have font style is "tahoma" in Notes modul
    #208869
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "Verdana Test" inside "Title" in LWC modal
    Then I enter value "Verdana Input action performed successfully" inside "Description" in LWC modal
    And I change font "Verdana" inside Description on modal
    And I click on "Save" on LWC modal
    Then I see the "Description" contains "Verdana Input action performed successfully" have font style is "verdana" in Notes modul
      #208871
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "GaramondText Test" inside "Title" in LWC modal
    Then I enter value "GaramondText Input action performed successfully" inside "Description" in LWC modal
    And I change font "Garamond" inside Description on modal
    And I click on "Save" on LWC modal
    Then I see the "Description" contains "GaramondText Input action performed successfully" have font style is "garamond" in Notes modul
      #208873
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "TimesNewRoman Test" inside "Title" in LWC modal
    Then I enter value "TimesNewRoman Input action performed successfully" inside "Description" in LWC modal
    And I change font "Times New Roman" inside Description on modal
    And I click on "Save" on LWC modal
    Then I see the "Description" contains "TimesNewRoman Input action performed successfully" have font style is "TimesNewRoman" in Notes modul
      #208858
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "Arial Test" inside "Title" in LWC modal
    Then I enter value "Arial Input action performed successfully" inside "Description" in LWC modal
    And I change font "Arial" inside Description on modal
    And I click on "Save" on LWC modal
    Then I see the "Description" contains "Arial Input action performed successfully" have font style is "Arial" in Notes modul
        #208856
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "Salesforce Sans test Test" inside "Title" in LWC modal
    Then I enter value "Salesforce Sans test Input action performed successfully" inside "Description" in LWC modal
    And I change font "Salesforce Sans" inside Description on modal
    And I click on "Save" on LWC modal
    Then I see the "Description" contains "Salesforce Sans test Input action performed successfully" have font style is "Salesforce Sans" in Notes modul
    Examples:
      | User  | programID                                             |
      | ADMIN | {LWC_StaticRecords:AutomationProgramLWCNotesForAdmin} |
      | PM    | {LWC_StaticRecords:AutomationProgramLWCNotesForPM}    |

  @208861 @208868 @208870 @208872 @208874 @208857 @LWC-NotesSuit @dilip
  Scenario: To verify user applies font format 'Arial' on the text in description box then respective format should get apply.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "10" seconds
    #208861
    And I refresh the page
    Then I see the "Description" contains "Courier" have font style is "courier" in Notes modul
    #208870
    Then I see the "Description" contains "Tahoma" have font style is "tahoma" in Notes modul
    #208868
    Then I see the "Description" contains "Verdana" have font style is "verdana" in Notes modul
    #208874
    Then I see the "Description" contains "GaramondText" have font style is "garamond" in Notes modul
    #208859
    Then I see the "Description" contains "Apply_Arial_formatting" have font style is "Arial" in Notes modul
    #208857
    Then I see the "Description" contains "Salesforce Sans test" have font style is "Salesforce Sans" in Notes modul

  @208875 @208877 @208879 @208881 @208883 @208885 @208887 @208889 @208891
    @208893 @208895 @208897 @208899 @208901 @208903 @275558 @LWC-NotesSuit @dilip
  Scenario Outline: To verify user applies font size 8,9,10,11,14,16,18,20,22,24,28,36,48,72 on the text in description box then respective font size should get apply.(Admin / PM)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "<programID>"
    When I click on "View" icon for "<programID>" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize8Test" inside "Title" in LWC modal
    Then I enter value "fontSize8Test" inside "Description" in LWC modal
    And I change font size "8" inside Description on modal
    And I click on "Save" on LWC modal
    #208875
    Then I see the "Description" contains "fontSize8Test" have font size is "8px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize9Test" inside "Title" in LWC modal
    Then I enter value "fontSize9Test" inside "Description" in LWC modal
    And I change font size "9" inside Description on modal
    And I click on "Save" on LWC modal
    #208877
    Then I see the "Description" contains "fontSize9Test" have font size is "9px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize10Test" inside "Title" in LWC modal
    Then I enter value "fontSize10Test" inside "Description" in LWC modal
    And I change font size "10" inside Description on modal
    And I click on "Save" on LWC modal
    #208879
    Then I see the "Description" contains "fontSize10Test" have font size is "10px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize11Test" inside "Title" in LWC modal
    Then I enter value "fontSize11Test" inside "Description" in LWC modal
    And I change font size "11" inside Description on modal
    And I click on "Save" on LWC modal
    #208881
    Then I see the "Description" contains "fontSize11Test" have font size is "11px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize14Test" inside "Title" in LWC modal
    Then I enter value "fontSize14Test" inside "Description" in LWC modal
    And I change font size "14" inside Description on modal
    And I click on "Save" on LWC modal
    #208883
    Then I see the "Description" contains "fontSize14Test" have font size is "14px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize16Test" inside "Title" in LWC modal
    Then I enter value "fontSize16Test" inside "Description" in LWC modal
    And I change font size "16" inside Description on modal
    And I click on "Save" on LWC modal
    #208885
    Then I see the "Description" contains "fontSize16Test" have font size is "16px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize18Test" inside "Title" in LWC modal
    Then I enter value "fontSize18Test" inside "Description" in LWC modal
    And I change font size "18" inside Description on modal
    And I click on "Save" on LWC modal
    #208887
    Then I see the "Description" contains "fontSize18Test" have font size is "18px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize20Test" inside "Title" in LWC modal
    Then I enter value "fontSize20Test" inside "Description" in LWC modal
    And I change font size "20" inside Description on modal
    And I click on "Save" on LWC modal
    #208889
    Then I see the "Description" contains "fontSize20Test" have font size is "20px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize22Test" inside "Title" in LWC modal
    Then I enter value "fontSize22Test" inside "Description" in LWC modal
    And I change font size "22" inside Description on modal
    And I click on "Save" on LWC modal
    #208891
    Then I see the "Description" contains "fontSize22Test" have font size is "22px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize24Test" inside "Title" in LWC modal
    Then I enter value "fontSize24Test" inside "Description" in LWC modal
    And I change font size "24" inside Description on modal
    And I click on "Save" on LWC modal
    #208893
    Then I see the "Description" contains "fontSize24Test" have font size is "24px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize26Test" inside "Title" in LWC modal
    Then I enter value "fontSize26Test" inside "Description" in LWC modal
    And I change font size "26" inside Description on modal
    And I click on "Save" on LWC modal
    #208895
    Then I see the "Description" contains "fontSize26Test" have font size is "26px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize28Test" inside "Title" in LWC modal
    Then I enter value "fontSize28Test" inside "Description" in LWC modal
    And I change font size "28" inside Description on modal
    And I click on "Save" on LWC modal
    #208897
    Then I see the "Description" contains "fontSize28Test" have font size is "28px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize36Test" inside "Title" in LWC modal
    Then I enter value "fontSize36Test" inside "Description" in LWC modal
    And I change font size "36" inside Description on modal
    And I click on "Save" on LWC modal
    #208899
    Then I see the "Description" contains "fontSize36Test" have font size is "36px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize48Test" inside "Title" in LWC modal
    Then I enter value "fontSize48Test" inside "Description" in LWC modal
    And I change font size "48" inside Description on modal
    And I click on "Save" on LWC modal
    #208901
    Then I see the "Description" contains "fontSize48Test" have font size is "48px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize72Test" inside "Title" in LWC modal
    Then I enter value "fontSize72Test" inside "Description" in LWC modal
    And I change font size "72" inside Description on modal
    And I click on "Save" on LWC modal
    #208903
    Then I see the "Description" contains "fontSize72Test" have font size is "72px" in Notes modul
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    Then I enter value "fontSize12Test" inside "Title" in LWC modal
    Then I enter value "fontSize12Test" inside "Description" in LWC modal
    And I change font size "12" inside Description on modal
    And I click on "Save" on LWC modal
    #275558
    Then I see the "Description" contains "fontSize12Test" have font size is "12px" in Notes modul
    Examples:
      | User  | programID                                             |
      | ADMIN | {LWC_StaticRecords:AutomationProgramLWCNotesForAdmin} |
      | PM    | {LWC_StaticRecords:AutomationProgramLWCNotesForPM}    |

  @208876 @208878 @208880 @208882 @208884 @208886 @208888 @208890 @208892
  @208894 @208896 @208898 @208900 @208902 @275559 @LWC-NotesSuit @dilip
  Scenario: To verify user applies font size 8,9,10,11,14,16,18,20,22,24,28,36,48,72 on the text in description box then respective font size should get apply.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
   # When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Files" sub tab
    #208876
    Then I see the "Description" contains "fontSize8Test" have font size is "8px" in Notes modul
    #208878
    Then I see the "Description" contains "fontSize9Test" have font size is "9px" in Notes modul
    #208880
    Then I see the "Description" contains "fontSize10Test" have font size is "10px" in Notes modul
    #208882
    Then I see the "Description" contains "fontSize11Test" have font size is "11px" in Notes modul
    #208884
    Then I see the "Description" contains "fontSize14Test" have font size is "14px" in Notes modul
    #208886
    Then I see the "Description" contains "fontSize16Test" have font size is "16px" in Notes modul
    #208888
    Then I see the "Description" contains "fontSize18Test" have font size is "18px" in Notes modul
    #208890
    Then I see the "Description" contains "fontSize20Test" have font size is "20px" in Notes modul
    #208892
    Then I see the "Description" contains "fontSize22Test" have font size is "22px" in Notes modul
    #208894
    Then I see the "Description" contains "fontSize24Test" have font size is "24px" in Notes modul
    #208896
    Then I see the "Description" contains "fontSize26Test" have font size is "26px" in Notes modul
    #208898
    Then I see the "Description" contains "fontSize28Test" have font size is "28px" in Notes modul
    #208900
    Then I see the "Description" contains "fontSize36Test" have font size is "36px" in Notes modul
    #208902
    Then I see the "Description" contains "fontSize48Test" have font size is "48px" in Notes modul
    #208903
    Then I see the "Description" contains "fontSize72Test" have font size is "72px" in Notes modul
    #275559
    Then I see the "Description" contains "fontSize12Test" have font size is "12px" in Notes modul

  @208905 @208907 @208909 @208911 @208912 @208915 @LWC-NotesSuit @dilip
  Scenario Outline:To verify user applies formatting Bold,Italic,Underline,bulletlist,Indent,Outdent on the text in description box then respective formatting should get apply.(Admin/PM)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "<programID>"
    When I click on "View" icon for "<programID>" inside table
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "applyBoldFormating" inside "Title" in LWC modal
    And I enter value "applyBoldFormating" inside "Description" in LWC modal
    And I click on "Bold" button inside LWC modal
    And I pause execution for "5" seconds
    And I click on "Save" button in LWC
    And I refresh the page
    #208905
    Then I see Description contains "applyBoldFormating" inside Notes table with "strong" html tag
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "applyItalicFormating" inside "Title" in LWC modal
    And I enter value "applyItalicFormating" inside "Description" in LWC modal
    And I click on "Italic" button inside LWC modal
    And I pause execution for "5" seconds
    And I click on "Save" button in LWC
    And I refresh the page
    #208907
    Then I see Description contains "applyItalicFormating" inside Notes table with "em" html tag
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "applyUnderlineFormating" inside "Title" in LWC modal
    And I enter value "applyUnderlineFormating" inside "Description" in LWC modal
    And I click on "Underline" button inside LWC modal
    And I pause execution for "5" seconds
    And I click on "Save" button in LWC
    And I refresh the page
    #208909
    Then I see Description contains "applyUnderlineFormating" inside Notes table with "u" html tag
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "applyBulletListFormating" inside "Title" in LWC modal
    And I enter value "applyBulletListFormating" inside "Description" in LWC modal
    And I click on "Bulleted list" button inside LWC modal
    And I pause execution for "5" seconds
    And I click on "Save" button in LWC
    And I refresh the page
    #208911
    Then I see Description contains "applyBulletListFormating" inside Notes table with "li" html tag
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "apply_Indent_Formating" inside "Title" in LWC modal
    And I enter value "apply_Indent_Formating" inside "Description" in LWC modal
    And I click on "Indent" button inside LWC modal
    And I pause execution for "5" seconds
    And I click on "Save" button in LWC
    And I refresh the page
    #208912
    Then I see Description contains "apply_Indent_Formating" inside Notes table with "p" html tag
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "apply_Outdent_Formating_test" inside "Title" in LWC modal
    And I enter value "apply_Outdent_Formating_test" inside "Description" in LWC modal
    And I click on "Outdent" button inside LWC modal
    And I pause execution for "5" seconds
    And I click on "Save" button in LWC
    And I refresh the page
    #208915
    Then I see Description contains "apply_Outdent_Formating_test" inside Notes table with "p" html tag

    Examples:
      | User  | programID                                             |
      | ADMIN | {LWC_StaticRecords:AutomationProgramLWCNotesForAdmin} |
      | PM    | {LWC_StaticRecords:AutomationProgramLWCNotesForPM}    |

  @208906 @208908 @208910 @208913 @208914 @LWC-NotesSuit @dilip
  Scenario:To verify user applies formatting Bold,Italic,Underline,bulletlist,Indent,Outdent on the text in description box then respective formatting should get apply.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
   # When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Files" sub tab
    #need to add step for select text and dropdown
#    And I click on top right button "Add" in tableName "Notes"
#    And I pause execution for "5" seconds
#    And I enter value "applyBoldFormating" inside "Title" in LWC modal
#    And I enter value "applyBoldFormating" inside "Description" in LWC modal
#    And I click on "Bold" button inside LWC modal
#    And I pause execution for "20" seconds
#    And I click on "Save" button in LWC
    #208906
    Then I see "Description" contains "applyBoldFormating" font format "Bold" get apply
    #208908
    Then I see "Description" contains "applyItalicFormating" font format "Italic" get apply
    #208910
    Then I see "Description" contains "applyUnderlineFormating" font format "Underline" get apply
    #208914
    Then I see "Description" contains "applyBulletListFormating" font format "bulletlist" get apply
    #208913
    Then I see "Description" contains "apply_Indent_Formating" font format "Indent" get apply
    #208916
    Then I see "Description" contains "apply_Outdent_Formating_test" font format "Outdent" get apply

  @208917 @208919 @208921 @208932 @208934 @208938 @208939 @LWC-NotesSuit @dilip
  Scenario Outline: To verify user applies formatting Left align text,Center align text,Right align text Test on the text in description box then respective formatting should get apply.(Admin/PM)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "<programID>"
    When I click on "View" icon for "<programID>" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "Center align text test" inside "Title" in LWC modal
    And I enter value "Center align text test" inside "Description" in LWC modal
    And I click on "Center align text" button inside LWC modal
    And I pause execution for "5" seconds
    And I click on "Save" button in LWC
    And I refresh the page
    #208919
    Then I see text inside table "Center align text test" are text align "center"
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "Right align text test" inside "Title" in LWC modal
    And I enter value "Right align text test" inside "Description" in LWC modal
    And I click on "Right align text" button inside LWC modal
    And I pause execution for "5" seconds
    And I click on "Save" button in LWC
    And I refresh the page
    #208921
    Then I see text inside table "Right align text Test" are text align "right"
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "Left align text test" inside "Title" in LWC modal
    And I enter value "Left align text test" inside "Description" in LWC modal
    And I click on "Left align text" button inside LWC modal
    And I pause execution for "5" seconds
    And I click on "Save" button in LWC
    And I refresh the page
    #208917
    Then I see text inside table "Left align text test" are text align "left"
    #208932
    Then I see title "Left align text test" and click on "Edit" icon
    Then I enter value "test" inside "Title" in LWC modal
    When I close LWC modal by clicking the top right x button
    #208934
    Then I see title "Left align text test" and click on "Delete" icon
    Then I see massage "Once it is deleted it cannot be restored. Do you want to delete?" displayed in delete modal
    When I close LWC modal by clicking the top right x button
    #208938
    Then I see title "Left align text test" and click on "View" icon
    Then I navigate to "Program View" modal
    When I close LWC modal by clicking the top right x button
    #208939
    Then I see title "Left align text test" and click on "View" icon
    When I close LWC modal by clicking the top right x button
    Then I see title "Left align text test" and click on "Edit" icon
    When I close LWC modal by clicking the top right x button
    Then I see title "Left align text test" and click on "Delete" icon

    Examples:
      | User  | programID                                             |
      | ADMIN | {LWC_StaticRecords:AutomationProgramLWCNotesForAdmin} |
      | PM    | {LWC_StaticRecords:AutomationProgramLWCNotesForPM}    |

  @208918 @208920 @208922 @208935 @208940 @207397 @208931 @LWC-NotesSuit @dilip
  Scenario:To verify user applies formatting Left align text,Center align text,Right align text Test  on the text in description box then respective formatting should get apply.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
   # When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "10" seconds
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "Center align text test" inside "Title" in LWC modal
    And I enter value "Center align text test" inside "Description" in LWC modal
    And I click on "Center align text" button inside LWC modal
    And I click on "Save" button in LWC
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "Right align text Test" inside "Title" in LWC modal
    And I enter value "Right align text Test" inside "Description" in LWC modal
    And I click on "Right align text" button inside LWC modal
    And I click on "Save" button in LWC
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "Left align text test" inside "Title" in LWC modal
    And I enter value "Left align text test" inside "Description" in LWC modal
    When I click on "Left align text" button inside LWC modal
    And I click on "Save" button in LWC
    #208920
    Then I see "Description" column contains "Center align text test" font format "center" align text get apply
    #208922
    Then I see "Description" column contains "Right align text Test" font format "right" align text get apply
    #208918
    Then I see "Description" column contains "Left align text test" font format "left" align text get apply
    #208933
    Then I see title "Left align text test" and click on "Edit" icon
    Then I enter value "test" inside "Title" in LWC modal
    When I close LWC modal by clicking the top right x button
    #208935
    Then I see title "Left align text test" and click on "Delete" icon
    Then I see massage "Once it is deleted it cannot be restored. Do you want to delete?" displayed in delete modal
    #208940
    Then I see title "Left align text test" and click on "View" icon
    Then I see title "Left align text test" and click on "Edit" icon
    Then I see title "Left align text test" and click on "Delete" icon
    #207397
    Then I see "Title" column contains "Title text"
    Then I see "Description" column contains "Description test"
    Then I see "CreatedDate" column contains "2023"
    Then I see "CreatedBy" column contains "Automation SPI"
        #208931
    Then I see title "Left align text test" and click on "View" icon
    Then I navigate to "Application View" modal
    When I close LWC modal by clicking the top right x button


  @208941 @LWC-NotesSuit @dilip
  Scenario Outline:To verify only row level action view is visible for the user who is not record owner(Admin/PM)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "<programID>"
    When I click on "View" icon for "<programID>" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "7" seconds
    Then I see title "applyItalicFormating" and click on "View" icon
    Examples:
      | User  | programID                                             |
      | ADMIN | {LWC_StaticRecords:AutomationProgramLWCNotesForAdmin} |
      | PM    | {LWC_StaticRecords:AutomationProgramLWCNotesForPM}    |

  @207396 @LWC-NotesSuit @dilip
  Scenario Outline:To verify when note is created then Title,Description,Created Date,Created By these details are showing correct.(Admin/PM)
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "10" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I enter text inside Description box "Description for second description box"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    #207396
    Then I see "Title" column contains "Title text"
    Then I see "Description" column contains "Description test"
    Then I see "CreatedDate" column contains "01/19/2023 4:18 AM"
    Then I see "CreatedBy" column contains "Automation PM"
    Examples:
      | User  | programID                                             |
      | PM    | {LWC_StaticRecords:AutomationProgramLWCNotesForPM}    |

  @207396 @LWC-NotesSuit @dilip
  Scenario Outline:To verify when note is created then Title,Description,Created Date,Created By these details are showing correct.(Admin/PM)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "<programID>"
    When I click on "View" icon for "<programID>" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    #207396
    Then I see "Title" column contains "Title text"
    Then I see "Description" column contains "Description test"
    Then I see "CreatedDate" column contains "01/19/2023 4:14 AM"
    Then I see "CreatedBy" column contains "Automation Admin"
    Examples:
      | User  | programID                                             |
      | ADMIN | {LWC_StaticRecords:AutomationProgramLWCNotesForAdmin} |

  @208936  @208927 @LWC-NotesSuit @dilip
  Scenario Outline: To verify user selects 'Image' then image is getting added.(Admin/PM)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "<programID>"
    When I click on "View" icon for "<programID>" inside table
    When I navigate to "Files" sub tab
    #208936
    And I click on top right button "Add" in tableName "Notes"
    And I pause execution for "5" seconds
    And I enter value "Title for delete program" inside "Title" in LWC modal
    And I enter value "Description for delete program" inside "Description" in LWC modal
    And I click on "Save" button in LWC
    And I pause execution for "10" seconds
    Then I see title "Title for delete program" and click on "Delete" icon
    And I click on "Yes" button on confirmation table
    Then I can not see "Title for delete program" inside "Title" in Notes lwc modal
      #208927
    And I click on top right button "Add" in tableName "Notes"
    And I enter value "Test add image" inside "Title" in LWC modal
    And I enter value "Description for image program" inside "Description" in LWC modal
    When I upload image "SharingAtCollabTest.png" in send email LWC modal
    And I click on "Save" button in LWC
    Then I see Title "Test add image" and "Description" contains Image
    Examples:
      | User  | programID                                             |
      | ADMIN | {LWC_StaticRecords:AutomationProgramLWCNotesForAdmin} |
      | PM    | {LWC_StaticRecords:AutomationProgramLWCNotesForPM}    |

  @208928 @208937 @LWC-NotesSuit @dilip
  Scenario:To verify user selects 'Image' then image is getting added.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
   # When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Files" sub tab
    #208937
    And I click on top right button "Add" in tableName "Notes"
    And I enter value "Title for delete program" inside "Title" in LWC modal
    And I enter value "Description for delete program" inside "Description" in LWC modal
    And I click on "Save" button in LWC
    And I pause execution for "10" seconds
    Then I see title "Title for delete program" and click on "Delete" icon
    And I click on "Yes" button on confirmation table
    And I pause execution for "10" seconds
    Then I can not see "Title for delete program" inside "Title" in Notes lwc modal
    #208928
    And I click on top right button "Add" in tableName "Notes"
    And I enter value "Test add image" inside "Title" in LWC modal
    And I enter value "Description for image program" inside "Description" in LWC modal
    When I upload image "SharingAtCollabTest.png" in send email LWC modal
    And I click on "Save" button in LWC
    Then I see Title "Test add image" and "Description" contains Image