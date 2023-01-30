@SendEmail-Component @regression-LWC @SendEmailLWC
Business Need: SendEmailLWC Component Scenarios
  Test all SendEmailLWC component based scenarios
  As a configuration manager i make different configurational changes in SendEmailLWC component and will validate them.

  @256667 @256691 @256726 @256753 @256763 @256774 @256779 @256679 @256751 @256755
    @256765 @256775 @256727 @us-255931 @dilip
  Scenario Outline: Verify send email modal for Internal user(PM) and ADMIN user scenario's
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
      #256667 #256753 #256679 #256751 #256755
    Then I see the "Upload Files" displayed in modal
    Then I see the "Or drop files" displayed in modal
      #256691 #256694
    Then I able to click on "Upload Files" button on send email modal
      #256726 #256763 #256765 #256727
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
      #256774 #256779 #256775
    Then I can see the Progress bar file Size "0.42 MB" displayed in modal
    And I can See the "×" Action Button on Email Modal
    Then I can click on "×" Action Button in front of "SendEmailAttachment.pdf" file
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @256778 @us-255931 @dilip
  Scenario: To verify,EXternal User see a Progress Bar (Size) where the size of the attached files can be tracked on send email reply  modal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    Then I see the "Upload Files" displayed in modal
    Then I see the "Or drop files" displayed in modal
    Then I able to click on "Upload Files" button on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see the Progress bar file Size "0.42 MB" displayed in modal
    And I can See the "×" Action Button on Email Modal
    Then I can click on "×" Action Button in front of "SendEmailAttachment.pdf" file

  @256681 @256697 @256728 @256752 @256756 @256767 @256743 @us-255931 @dilip
  Scenario:Verify send email modal for SUBPORTAL (SPI) User
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    #256697 #256728
    Then I see the "Upload Files" displayed in modal
    Then I able to click on "Upload Files" button on send email modal
    #256752
    Then I see the "Or drop files" displayed in modal
    #256756 #256767
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    #256681
    And I pause execution for "5" seconds
    Then I see Attachment section is displayed under send email modal
    #256743
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    And I can See the "×" Action Button on Email Modal
    Then I can click on "×" Action Button in front of "SendEmailAttachment.pdf" file
    Then I can not see "SendEmailAttachment.pdf" file Send Email modal

  @256666 @256723 @256773 @256732 @256682 @256722 @256770 @256776 @us-255931 @dilip
  Scenario Outline: Verify Reply LWC modal for Internal user(PM) and ADMIN user scenario's
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    And I refresh the page
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I fill the details in field To "reisystem@yopmail.com" CC "abc@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "7" seconds
    #256666 #256682
    Then I see Attachment section is displayed under send email modal
    #256723 #256722
    Then I see the "Upload Files" displayed in modal
    Then I able to click on "Upload Files" button on send email modal
    #256773 #256776
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    Then I can see the Progress bar file Size "0.42 MB" displayed in modal
    #256732 #256770
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @256686 @256724 @256734 @256771 @us-255931 @dilip
  Scenario:Verify Reply email modal for SUBPORTAL (SPI) User
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
   #256686
    Then I see Attachment section is displayed under send email modal
  #256724 #256734
    Then I see the "Upload Files" displayed in modal
    Then I able to click on "Upload Files" button on send email modal
  #256771
    Then I see the "Upload Files" displayed in modal
    Then I able to click on "Upload Files" button on send email modal

  @256782 @256826 @256830 @256788 @256833 @256831 @256832 @256834 @256783 @256789 @256809
    @256837 @256845 @256856 @256860 @256884 @256795 @us-255931 @256858 @dilip
  Scenario Outline: Verify Send Email LWC for Internal user(PM) and ADMIN user scenario's after click on Send Button
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    #256884
    Then I see Attachment section is displayed under send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    When I upload attachment "TestFileSharing.docx" in send email LWC modal
    When I upload attachment "TestAutomationFile.pptx" in send email LWC modal
    When I upload attachment "SendEmailMP4File.mp4" in send email LWC modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "60" seconds
    #256782 #256831 #256856
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    #256830 #256783 #256837
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    #256832 #256845
    Then I can see attach the "TestFileSharing.docx" file format in the attachment section
    #256833 #256860 #256858
    Then I can see attach the "TestAutomationFile.pptx" file format in the attachment section
    #256834
    Then I can see attach the "SendEmailMP4File.mp4" file format in the attachment section
    #256788 #256789 #256795
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    #256826 #256809
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @256784 @256790 @256811 @256849 @256854 @256857 @156858 @256815 @us-255931 @dilip
  Scenario:Verify send email modal for SUBPORTAL (SPI) User after click on Send Button
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    When I upload attachment "TestFileSharing.docx" in send email LWC modal
    When I upload attachment "TestAutomationFile.pptx" in send email LWC modal
    When I upload attachment "SendEmailMP4File.mp4" in send email LWC modal
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    #256857
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    #156858
    Then I can see attach the "TestAutomationFile.pptx" file format in the attachment section
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "10" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "25" seconds
    #256784
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    #256790
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    #256811 #256815
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    #256840
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    #256849
    Then I can see attach the "TestFileSharing.docx" file format in the attachment section
    #256854
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section

  @256787 @256794 @256800 @256828 @256881 @256768 @256786 @256792 @us-255931 @dilip
  Scenario Outline: Verify Reply LWC modal for Internal user(PM) and ADMIN user scenario's after click on Send Button
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    #256768
    Then I can see Upload file & drop files actions on send email reply modal are enabled
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    When I upload attachment "TestFileSharing.docx" in send email LWC modal
    When I upload attachment "TestAutomationFile.pptx" in send email LWC modal
    When I upload attachment "SendEmailMP4File.mp4" in send email LWC modal
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
      #256881
    Then I see Attachment section is displayed under send email modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "10" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "30" seconds
    #256787 #256786
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    #256794 #256792
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    #256800
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    #256828
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @256791 @256814 @256886 @us-255931 @dilip
  Scenario:Verify Reply email modal for SUBPORTAL (SPI) User after click on Send Button
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    #256886
    Then I see Attachment section is displayed under send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    # 256888
    Then I see Attachment section is displayed under send email modal
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    When I upload attachment "TestFileSharing.docx" in send email LWC modal
    When I upload attachment "TestAutomationFile.pptx" in send email LWC modal
    When I upload attachment "SendEmailMP4File.mp4" in send email LWC modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "10" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "60" seconds
    #256791
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    #256814
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled

  @223190 @223191 @223192 @223194 @223195 @223196 @LWC_ID-208784 @dilip
  Scenario Outline: Verify Send Email LWC Modal dropDown values Internal, External, Groups, None for ADMIN user
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    #223190
    Then I see "To" field under the Send Email LWC modal
    #223191
    Then I see "Cc" field under the Send Email LWC modal
    #223192
    Then I see and check "To" field dropdown is displayed with "None" value
    Then I see and check "To" field dropdown is displayed with "Internal" value
    Then I see and check "To" field dropdown is displayed with "External" value
    Then I see and check "To" field dropdown is displayed with "Groups" value
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    #223194
    Then I see and check "Cc" field dropdown is displayed with "None" value
    Then I see and check "Cc" field dropdown is displayed with "Internal" value
    Then I see and check "Cc" field dropdown is displayed with "External" value
    Then I see and check "Cc" field dropdown is displayed with "Groups" value
    #223196
    Then I see and check "To" field dropdown is displayed with "Internal" value
    #223195
    Then I see and check "To" field dropdown is displayed with "Internal" value
    Examples:
      | User  |
      | ADMIN |

  @223197 @223205 @223207 @LWC_ID-208784 @dilip
  Scenario Outline: Verify Send Email LWC Modal dropDown values for ADMIN user
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    #223197 #223205
    Then I see and check "To" field dropdown is displayed with "External" value
    #223207
    Then I see and check "Cc" field dropdown is displayed with "External" value
    Examples:
      | User  |
      | ADMIN |

  @223199 @223207 @223211 @LWC_ID-208784 @dilip
  Scenario Outline: Verify Send Email LWC Modal dropDown values for ADMIN user for To and Cc field
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    #223199
    Then I see and check "Cc" field dropdown is displayed with "Internal" value
    #223207
    Then I see and check "Cc" field dropdown is displayed with "External" value
    And I pause execution for "7" seconds
    #223211
    Then I see and check "Cc" field dropdown is displayed with "Groups" value
    Examples:
      | User  |
      | ADMIN |

  @256742 @256745 @us-255931 @dilip
  Scenario Outline: To verify, When user click on  ‘X’ action button on the send email modal then  remove the attached file from the email for admin user and PM user.
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    #256742 #256745
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    And I can See the "×" Action Button on Email Modal
    Then I can click on "×" Action Button in front of "SendEmailAttachment.pdf" file
    Then I can not see "SendEmailAttachment.pdf" file Send Email modal
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @257258 @257259 @us-255931 @dilip
  Scenario: To verify, IN front of  Attachment  is displayed in the grey circle when hover over on that  "File attachment" is displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
  #257259
    Then I see The "*Collective max size of attached files should be 25MB. Single file size attachment limit is upto 1.5MB. Do not attach more than 10 Files." field in "Red" color
  #257258
    Then I hover mouse on on "Attachment symbol" section
    Then I see "File Attachment" is displayed

  @257600 @257602 @us-255931 @dilip
  Scenario Outline: To verify, Admin User try to attach the file more than 10 then  errror message is getting dispalyed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    When I upload attachment "TestFileSharing.docx" in send email LWC modal
    When I upload attachment "TestAutomationFile.pptx" in send email LWC modal
    When I upload attachment "SendEmailMP4File.mp4" in send email LWC modal
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    When I upload attachment "actionsAtEgrid.png" in send email LWC modal
    When I upload attachment "actionsAtAttachment.png" in send email LWC modal
    When I upload attachment "actionsAtEnhancedDataTable.png" in send email LWC modal
    When I upload attachment "actionsAtMeGridTable.png" in send email LWC modal
    #257600 #257602
    When I upload attachment "captureModalFields.png" in send email LWC modal
    Then I see "Do not attach more than 10 Files, Attachment limit is Exceeded." error massage in attachment section
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @257603 @us-255931 @dilip
  Scenario:To verify,External User try to attach the file more than 10 then  errror message is getting dispalyed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    When I upload attachment "TestFileSharing.docx" in send email LWC modal
    When I upload attachment "TestAutomationFile.pptx" in send email LWC modal
    When I upload attachment "SendEmailMP4File.mp4" in send email LWC modal
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    When I upload attachment "actionsAtEgrid.png" in send email LWC modal
    When I upload attachment "actionsAtAttachment.png" in send email LWC modal
    When I upload attachment "actionsAtEnhancedDataTable.png" in send email LWC modal
    When I upload attachment "actionsAtMeGridTable.png" in send email LWC modal
      #257603
    When I upload attachment "captureModalFields.png" in send email LWC modal
    Then I see "Do not attach more than 10 Files, Attachment limit is Exceeded." error massage in attachment section

  @256757 @256759 @us-255931 @dilip
  Scenario Outline: To verify, Admin User can not add the duplicate file if user can try then "File with this name already exist.' error message is displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    #256757 #256759
    Then I see "File with this name already exist." error massage in attachment section
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @256761 @us-255931 @dilip
  Scenario:To verify, External User can not add the duplicate file if user can try then "File with this name already exist.' error message is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    #256757 #256759
    Then I see "File with this name already exist." error massage in attachment section

  @256746 @us-255931 @dilip
  Scenario Outline: To verify, When user click on  X action button on the send email reply modal then remove the attached file from the reply email for admin user
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I upload attachment "DuplicateFile.txt" in send email LWC modal
    #256746
    Then I see "File with this name already exist." error massage in attachment section
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @256816 @256817 @us-255931 @dilip
  Scenario Outline: To verify, Internal user can Download file by clicking on download action button in the Attachments table in front of the attached file on send email Reply  modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "25" seconds
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    #256817 #256816
    And I click on "View LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com,automationfo@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "25" seconds
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @256891 @256892 @us-255931 @dilip
  Scenario:To verify, Admin User should not be able to see Attachment symbol when select file is not getting attached  to  send email modal
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    #256891
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    #256892
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully

  @256893 @256895 @256897 @256749 @us-255931 @dilip
  Scenario: To verify, Internal  User should not be able to see Attachment button when select file is not getting attached  to  send email reply modal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    #256895 #256897
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
        #256749
    And I click on "Reply" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    Then I can click on "× button on Reply modal" Action Button in front of "SendEmailAttachment.pdf" file
    Then I can not see "SendEmailAttachment.pdf" file Send Email modal

  @256894 @us-255931 @dilip
  Scenario: To verify, Internal  User should not be able to see Attachment button when select file is not getting attached  to  send email  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    #256894
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully

  @256883 @256885 @us-255931 @dilip
  Scenario: To verify, Internal User should be able to see Attachment button when select file is attached  to  reply email modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    #256883 #256885
    Then I see Attachment section is displayed under "Reply" modal
    When I click on "× " icon at "Reply" modal after Email Sent Successfully

  @257617 @257619 @us-255931 @dilip
  Scenario Outline: To verify, If Admin and PM try to download attach file then It will open in the new tab
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    #257617 #257619
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "20" seconds
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @257621 @us-255931 @dilip
  Scenario:  To verify, If External  User try to download attach file then It will open in the new tab
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "20" seconds
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled


  @223210 @223212 @223213 @223220 @223222 @223223 @223227 @223860 @223861 @223862 @223863 @223864
  @223865 @223866 @223866 @223868 @223869 @223870 @223867 @LWC_ID-208784 @dilip
  Scenario: Verify Send Email LWC Modal for ADMIN user and verify Body Content buttons
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    #223210
    Then I see User should be able to checked the "Internal" & "External" picklist from "Cc"  field
    #223213
    Then I see checkbox is enabled for "Internal" and "External" picklist from "Cc" field
    #223212
    And I pause execution for "10" seconds
    Then I see User should be able to checked the "Internal" & "External" picklist from "To"  field
    #223220
    Then I see the "Subject" field on the send email modal
    #223222
    Then I see the "Body Content" field on the send email modal
    #223859
    Then I see "Strikethrough" is displayed under "Body Content" and enabled
    #223860
    Then I see "Italic" is displayed under "Body Content" and enabled
    #223861
    Then I see "Bold" is displayed under "Body Content" and enabled
    #223862
    Then I see "Underline" is displayed under "Body Content" and enabled
    #223863
    Then I see "Numbered list" is displayed under "Body Content" and enabled
    #223864
    Then I see "Bulleted list" is displayed under "Body Content" and enabled
    #223865 #223866 #223867
    Then I see "Indent" is displayed under "Body Content" and enabled
    #223868
    Then I see "Center align text" is displayed under "Body Content" and enabled
    #223869
    Then I see "Left align text" is displayed under "Body Content" and enabled
    #223870
    Then I see "Right align text" is displayed under "Body Content" and enabled
    #223223
    Then I see the "Select Files" field on the send email modal
    #223227
    And I click on "Select Files" button in Email LWC Modal
    Then I see modal contain "FilesLink" is displayed

  @223228 @223231 @223844 @223845 @223858 @LWC_ID-208784 @dilip
  Scenario: Verify Send Email LWC Modal for ADMIN checkbox selected
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
      #223844 #223858
    Then I see the "Send Copy (Cc) to Me" field on the send email modal
    #223845
    Then I see the "Reset" field on the send email modal
    #223228
    And I click on "Select Files" button in Email LWC Modal
    Then I see modal contain "FilesLink" is displayed
    Then I see the "checkbox" and is enabled
    #223231
    And I see the "checkbox" and is enabled and I click on "1" checkbox
    And I see the "checkbox" and is enabled and I click on "2" checkbox
    And I see the "checkbox" and is enabled and I click on "3" checkbox
    And I pause execution for "3" seconds
    Then I see the "checkbox" is selected as per row no "1" checkbox
    Then I see the "checkbox" is selected as per row no "1" checkbox
    Then I see the "checkbox" is selected as per row no "1" checkbox

  @223848 @223849  @223850 @223851 @223852 @223853 @223847 @LWC_ID-208784 @dilip
  Scenario: send email-User send email with multiple Email addresses are separated by Comma (,) TO Field, Cc field,User Click on Reply LWC action then Reply LWC modal is displayed, User Click on View  LWC action then View LWC modal is displayed,
  User send email with Internal email ID's in TO &CC field, User send email with multiple Email addresses are separated by Comma (,) TO Field, User send email with multiple Email addresses are separated by Comma (,) CC Field, To verify , User send the email with multiple email address in TO field
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email LWC modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    And I refresh the page
      #223848
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Reply LWC" modal is displayed
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    And I pause execution for "5" seconds
    #223849
    And I click on "View LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "View LWC" modal is displayed
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    And I pause execution for "5" seconds
    #223850
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    #223851
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com,automationfo@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    #223852
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com,automationfo@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    #223853
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com,automationpm@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully
    #223847
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com,automationpm@yopmail.com" CC "" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    When I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully

  @223214 @223215 @223217 @223218 @LWC_ID-208784 @dilip
  Scenario Outline: check the checkbox for the internal from dropdown then Group field is getting hidden from TO field
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see and check "To" field dropdown is displayed with "Internal" value
    Then I pause execution for "2" seconds
    #223214 #223215
    Then I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "To" field dropdown is displayed with "Groups" value
    #223217
    When I see and check "Cc" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "Cc" field dropdown is displayed with "Groups" value
    #223218
    Then I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "Cc" field dropdown is displayed with "Groups" value
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @223216 @LWC_ID-208784 @dilip
  Scenario:When User check the checkbox for  the internal from dropdown then Group field is getting hidden from TO field
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    Then I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "To" field dropdown is displayed with "Groups" value

  @223219 @223207 @LWC_ID-208784 @dilip
  Scenario: When User check the checkbox for  the group  from dropdown then internal &External  field is getting hidden from CC field
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see and check "To" field dropdown is displayed with "Internal" value
    Then I pause execution for "2" seconds
    #223219
    Then I see and check "Cc" field dropdown is displayed with "Internal" value
    #223207
    Then I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "Cc" field dropdown is displayed with "Groups" value

  @223846 @LWC_ID-208784 @dilip
  Scenario: User send email without filling subject field then error message should displayed on the modal
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see and check "To" field dropdown is displayed with "Internal" value
    Then I pause execution for "2" seconds
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "" in send email LWC
    And I click on "Send" button in Email LWC Modal
    Then I see "Please add subject" error massage in attachment section
