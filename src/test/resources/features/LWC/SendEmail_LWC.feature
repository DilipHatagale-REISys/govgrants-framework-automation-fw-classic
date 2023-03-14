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
    Then I click on "×" Action Button in front of "SendEmailAttachment.pdf" file
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
    Then I click on "×" Action Button in front of "SendEmailAttachment.pdf" file

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
    Then I click on "×" Action Button in front of "SendEmailAttachment.pdf" file
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
    And I close LWC modal window
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
    Then I click on "×" Action Button in front of "SendEmailAttachment.pdf" file
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
    And I close LWC modal window
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
    And I close LWC modal window
    #256892
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    And I close LWC modal window

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
    And I close LWC modal window
    #256895 #256897
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    And I close LWC modal window
        #256749
    And I click on "Reply" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    Then I click on "× button on Reply modal" Action Button in front of "SendEmailAttachment.pdf" file
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
    And I close LWC modal window

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
    And I close LWC modal window
    And I refresh the page
      #223848
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Reply LWC" modal is displayed
    And I close LWC modal window
    And I pause execution for "5" seconds
    #223849
    And I click on "View LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "View LWC" modal is displayed
    And I close LWC modal window
    And I pause execution for "5" seconds
    #223850
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    #223851
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com,automationfo@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    #223852
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com,automationfo@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    #223853
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com,automationpm@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    #223847
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com,automationpm@yopmail.com" CC "" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "7" seconds
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window

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

    #########################UI UX and Negative scenario newly added#############################

  @296099 @lwcsmoke @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When  user sends an Email with an file  from TO (Internal) field then attached file is displayed on the View & Send  modal
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "TC Collab.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "TC Collab.png" file format in the attachment section


  @296101 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When  user sends an Email with an file  from TO (External) field then attached file is displayed on the View & Send  modal
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file for external user" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "TC Collab.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "TC Collab.png" file format in the attachment section

  @296102 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When  user sends an Email with an file  from TO (Internal/External) field then attached file is displayed on the View & Send  modal
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "To" field dropdown and select "Internal" and "External" value from dropdown
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file for Internal external user" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "TC Collab.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "TC Collab.png" file format in the attachment section

  @296103 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When  user sends an Email with an file  from TO (Group) field then attached file is displayed on the View & Send  modal
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "TC Collab.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "TC Collab.png" file format in the attachment section

  @296108 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When Internal user sends an Email with an file  from TO (Internal) field then attached file is displayed on the View & Send  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section

  @296109 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When Internal  user sends an Email with an file  from TO (Internal/External) field then attached file is displayed on the View & Send  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "To" field dropdown and select "Internal" and "External" value from dropdown
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section

  @296110 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When Internal   user sends an Email with an file  from TO (External) field then attached file is displayed on the View & Send  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section

  @296118 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When Internal user sends an Email with an file  from TO (Group) field then attached file is displayed on the View & Send  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section

  @296124 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , WhenEXternal user sends an Email with an file  from TO field then attached file is displayed on the View & Send  modal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section

  @296125 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario:To verify , When Internal user sends an Email with an Multiple file from TO (Internal) field then attached file is displayed on the View & Send  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296126 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When  user sends an Email with an Multiple file from TO (Internal) field then attached file is displayed on the View & Send  modal
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296127 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When Internal  user sends an Email with an Multiple file  from TO (Internal/External) field then attached file is displayed on the View & Send  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "To" field dropdown and select "Internal" and "External" value from dropdown
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296128 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When   user sends an Email with an Multiple file  from TO (Internal/External) field then attached file is displayed on the View & Send  modal
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "To" field dropdown and select "Internal" and "External" value from dropdown
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296129 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When Internal   user sends an Email with an  multiple file  from TO (External) field then attached file is displayed on the View & Send  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296130 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When  user sends an Email with an  multiple file  from TO (External) field then attached file is displayed on the View & Send  modal
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296131 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify, When Internal user sends an Email with an Multiple  file  from TO (Group) field then attached file is displayed on the View & Send  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296132 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , WhenEXternal user sends an Email with an multiple file  from TO field then attached file is displayed on the View & Send modal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296133 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When  user sends an Email with an Multiple file from TO &  CC(Internal) field then attached file is displayed on the View & Send  modal
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296134 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When Internal  user sends an Email with an Multiple file from TO &  CC(Internal) field then attached file is displayed on the View & Send  modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296135 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When Internal  user sends an Email with an  file from TO &  CC(Internal) field then attached file is displayed on the View & Send modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296136 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When user sends an Email with an file from TO &  CC(Internal) field then attached file is displayed on the View & Send  modal
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296137 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify , When   user sends an Email with an Multiple file  from TO & CC (Internal/External) field then attached file is displayed on the View & Send  modal
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Cc" field dropdown and select "Internal" and "External" value from dropdown
    And I click on "To" field dropdown and select "Internal" and "External" value from dropdown
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @296138 @296141 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario Outline: To verify , When Internal user sends an Email with an Multiple file  from TO & CC (Internal/External) field then attached file is displayed on the View & Send  modal
  To verify , When  user sends an Email with an  multiple file  from TO & CC (External) field then attached file is displayed on the View & Send  modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "25" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Cc" field dropdown and select "Internal" and "External" value from dropdown
    And I click on "To" field dropdown and select "Internal" and "External" value from dropdown
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    Examples:
      | User  |
      | PM    |
      | Admin |

  @296139 @296140 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario Outline:To verify , When Internal user sends an Email with an  file  from TO & CC (Internal/External) field then attached file is displayed on the View & Send modal,
  To verify , When user sends an Email with an  file  from TO & CC (Internal/External) field then attached file is displayed on the View & Send modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "25" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Cc" field dropdown and select "Internal" and "External" value from dropdown
    And I click on "To" field dropdown and select "Internal" and "External" value from dropdown
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Examples:
      | User  |
      | PM    |
      | Admin |

  @296142 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario Outline: To verify , When internal  user sends an Email with an  multiple file  from TO & CC (External) field then attached file is displayed on the View & Send  modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "25" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    Examples:
      | User |
      | PM   |

  @296143 @296144 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario Outline: To verify , When internal  user sends an Email with an  file  from TO & CC (External) field then attached file is displayed on the View & Send  modal,
  To verify , When internal Internal user sends an Email with an  file  from TO & CC (External) field then attached file is displayed on the View & Send  modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "25" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Examples:
      | User  |
      | PM    |
      | Admin |

  @296145 @296146 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario Outline: To verify , When Internal user sends an Email with an Multiple  file  from TO & CC  (Group) field then attached file is displayed on the View & Send  modal,
  To verify , When user sends an Email with an Multiple  file  from TO & CC  (Group) field then attached file is displayed on the View & Send  modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "25" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    And I see and check "Cc" field dropdown is displayed with "Groups" value
    When I fill the details in field To "dilip@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    Examples:
      | User  |
      | PM    |
      | Admin |

  @296147 @296148 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario Outline: To verify , When user sends an Email with an file  from TO & CC  (Group) field then attached file is displayed on the View & Send modal,
  To verify , When Internal user sends an Email with an file  from TO & CC  (Group) field then attached file is displayed on the View & Send  modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "25" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    And I see and check "Cc" field dropdown is displayed with "Groups" value
    When I fill the details in field To "dilip@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Examples:
      | User  |
      | PM    |
      | Admin |

  @296168 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario Outline: To verify , When  user sends an Email with an file  from TO (Internal) field then attached file is displayed on the View & Send modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "25" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "dilip@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    And I close LWC modal window
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Examples:
      | User  |
      | Admin |

  @296224 @296225 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario:To verify, On reply modal user(Admin) are attached the file,To verify, On reply modal user(Admin) are attached the multiple  file
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "On reply modal user are attached the multiple  file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "TC Collab.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "Reply LWC" icon for "On reply modal user are attached the multiple  file" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "TestFileSharing.docx" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    #296225
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "TestFileSharing.docx" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    And I close LWC modal window
    #296224
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "On reply modal user are attached the file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "TC Collab.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "Reply LWC" icon for "On reply modal user are attached the file" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    #296224
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I click on "× " icon at "Send Email LWC" modal after Email Sent Successfully

  @296226 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify, On reply modal Internal user(PM) are attached the multiple  file
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "On reply modal user are attached the multiple  file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "TC Collab.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "Reply LWC" icon for "On reply modal user are attached the multiple  file" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "TestFileSharing.docx" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    #296226
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "TestFileSharing.docx" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    And I close LWC modal window

  @296807 @296809 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify, Internal user are remove the select file  from  reply  email modal,To verify, user are remove the select file from reply email modal
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I click on "Reply LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    #296807
    Then I see "×" Action Button in front of "SendEmailAttachment.pdf" file
    #296809
    Then I click on "×" Action Button in front of "SendEmailAttachment.pdf" file
    And I pause execution for "5" seconds
    Then I can not see "SendEmailAttachment.pdf" file Send Email modal

  @296810 @296815 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario: To verify ,External user are remove the select file from reply email modal, To verify ,External user are remove the select file  from  send  email modal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "External user are remove the select file from reply email modal" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    And I close LWC modal window
    And I click on "Reply LWC" icon for "External user are remove the select file from reply email modal" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    #296810
    Then I see "×" Action Button in front of "SendEmailAttachment.pdf" file
    #296815
    Then I click on "×" Action Button in front of "SendEmailAttachment.pdf" file
    Then I can not see "SendEmailAttachment.pdf" file Send Email modal

  @296816 @296817 @SendEmailSelectFile(Suitid:294113) @dilip
  Scenario Outline:To verify ,Internal user are remove the select file  from  send  email modal,To verify user are remove the select file  from  send  email modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    Then I see "×" Action Button in front of "actionsAtEgrid.png" file
    #296816
    Then I click on "×" Action Button in front of "actionsAtEgrid.png" file
    And I pause execution for "5" seconds
    Then I can not see "actionsAtEgrid.png" file Send Email modal
    Examples:
      | User  |
      | PM    |
      | Admin |
    #############################################################################
  @298559 @298560 @298563 @298564 @SendEmail-UI/UX(SuiteID:298512) @dilip
  Scenario Outline:UI - when Internal user Hover on the TO field help icon and help text is displayed,when user Hover on the TO field help icon and help text is displayed,
  when  user Hover on the  CC field help icon and help text is displayed,when Internal user Hover on the  CC field help icon and help text is displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "To" inside Send Email LWC
    And I pause execution for "5" seconds
    #298559 #298560
    Then I see help text "Please enter To email address - Use semicolon(;) to separate manual email addresses" is displayed releted field inside Send Email LWC modal
    And I close LWC modal window
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Cc" inside Send Email LWC
    And I pause execution for "5" seconds
    #298563 #298564
    Then I see help text "Please enter Cc email address - Use semicolon(;) to separate manual email addresses" is displayed releted field inside Send Email LWC modal
    Examples:
      | User  |
      | PM    |
      | Admin |

  @298562 @298565 @SendEmail-UI/UX(SuiteID:298512) @dilip
  Scenario: UI when External user Hover on the  TO field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    And I hover mouse on text "To" inside Send Email LWC
    #298562
    Then I see help text "Please enter To email address - Use semicolon(;) to separate manual email addresses" is displayed releted field inside Send Email LWC modal
    And I close LWC modal window
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Cc" inside Send Email LWC
    And I pause execution for "5" seconds
    #298565
    Then I see help text "Please enter Cc email address - Use semicolon(;) to separate manual email addresses" is displayed releted field inside Send Email LWC modal

  @298566 @298567 @SendEmail-UI/UX(SuiteID:298512) @dilip
  Scenario Outline: when  user Hover on the Send Copy (Cc) to Me field help icon and help text is displayed,
  when  Internal user Hover on the Send Copy (Cc) to Me field help icon and help text is displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email LWC
    And I pause execution for "5" seconds
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed releted field inside Send Email LWC modal
    Examples:
      | User  |
      | PM    |
      | Admin |

  @298568 @SendEmail-UI/UX(SuiteID:298512) @dilip
  Scenario: UI - when External user Hover on the  Send Copy (Cc) to Me field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email LWC
    And I pause execution for "5" seconds
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed releted field inside Send Email LWC modal

  @298570 @298671 @298574 @298575 @SendEmail-UI/UX(SuiteID:298512) @dilip
  Scenario Outline:UI when Internal user Hover on the Subject field help icon and help text is displayed,
  UI when user Hover on the Subject field help icon and help text is displayed,
  UI - when user Hover on the Body Content  field help icon and help text is displayed,
  UI - when Internal user Hover on the Body Content  field help icon and help text is displayed,
  UI - when Internal user Hover on the Attachments field help icon and help text is displayed,
  UI - when  user Hover on the Attachments field help icon and help text is displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Subject" inside Send Email LWC
    And I pause execution for "5" seconds
    #298570 #298571
    Then I see help text "Please enter subject" is displayed releted field inside Send Email LWC modal
    And I close LWC modal window
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email LWC
    And I pause execution for "5" seconds
    #298574 #298575
    Then I see help text "Enter email content here" is displayed releted field inside Send Email LWC modal
    Examples:
      | User  |
      | PM    |
      | Admin |

  @298573 @298576 @298579 @298582 @298599 @SendEmail-UI/UX(SuiteID:298512) @dilip
  Scenario: UI - when External user Hover on the Subject  field help icon and help text is displayed,
  UI - when External user Hover on the Body Content field help icon and help text is displayed,
  UI - when External user Hover on the Attachments field help icon and help text is displayed,
  UI - when External user Hover on the  Select file  field help icon and help text is displayed,
  UI - Required to save fields  (*)  is displayed for External user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Subject" inside Send Email LWC
    And I pause execution for "5" seconds
    #298573
    Then I see help text "Please enter subject" is displayed releted field inside Send Email LWC modal
    And I close LWC modal window
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email LWC
    And I pause execution for "5" seconds
    #298576
    Then I see help text "Enter email content here" is displayed releted field inside Send Email LWC modal
    And I hover mouse on text "Attachments" inside Send Email LWC
    And I pause execution for "5" seconds
    #298579
    Then I see help text "File Attachment" is displayed releted field inside Send Email LWC modal
    And I pause execution for "5" seconds
    And I hover mouse on text "Insert links to file(s) from the record" inside Send Email LWC
    #298582
    Then I see help text "Select files to be attach as a link" is displayed releted field inside Send Email LWC modal
    #298599
    Then Required to save field "*" is displayed with respect "To" field

  @298677 @298578 @298580 @298581 @298597 @298598 @SendEmail-UI/UX(SuiteID:298512) @dilip
  Scenario Outline:UI - when Internal user Hover on the Attachments field help icon and help text is displayed,
  UI - when  user Hover on the Attachments field help icon and help text is displayed,
  UI - when  user Hover on the Select file field help icon and help text is displayed,
  UI - when Internal  user Hover on the Select file field help icon and help text is displayed,
  UI - Required to save fields  (*)  is displayed for admin user,
  UI - Required to save fields  (*)  is displayed for Internal user
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email LWC
    And I pause execution for "5" seconds
    #298577 #298578
    Then I see help text "File Attachment" is displayed releted field inside Send Email LWC modal
    And I pause execution for "5" seconds
    And I hover mouse on text "Insert links to file(s) from the record" inside Send Email LWC
    #298580 #298581
    Then I see help text "Select files to be attach as a link" is displayed releted field inside Send Email LWC modal
    #298597 #298598
    Then Required to save field "*" is displayed with respect "To" field
    Examples:
      | User  |
      | PM    |
      | Admin |

    ##############Send Email Attachment 52##################

  @294102 @294103 @294104 @294105 @294106 @294107 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario: To verify,Internal User send the email from TO field as 'internal',
  To verify,Internal User send the email from TO field as 'External',
  To verify,Internal User send the email from TO field as 'Group',
  To verify,Internal User send the email from TO & CC field as 'internal',
  To verify,Internal User send the email from TO & CC field as 'External',
  To verify,Internal User send the email from TO & CC field as 'Group'
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    #294102
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I pause execution for "5" seconds
    #294103 #To verify,Internal User send the email from TO field as 'External'
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    #294104 #To verify,Internal User send the email from TO field as 'Group'
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    #294105 #To verify,Internal User send the email from TO & CC field as 'internal'
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "vrishali.raskar@reisystems.in" Subject "To verify Internal User send the email from TO & CC field as internal" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    #294106 #To verify,Internal User send the email from TO & CC field as 'External'
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "vrishali.raskar@reisystems.in" Subject "To verify Internal User send the email from TO & CC field as External" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    #294107 #To verify,Internal User send the email from TO & CC field as 'Group'
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    And I see and check "Cc" field dropdown is displayed with "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "vrishali.raskar@reisystems.in" Subject "To verify Internal User send the email from TO & CC field as Group" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal

  @294828 @294129 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline: To verify , When user sends an Email with an Attachment  from TO (internal) field,
  To verify , When Internal user sends an Email with an Attachment  from TO (internal) field
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "When user sends an Email with an Attachment from TO internal field" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    #294828 #294829
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Examples:
      | User  |
      | PM    |
      | Admin |

  @294134 @294238 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario: To verify , When External user sends an Email with an Attachment  from TO (internal) field,
  To verify , When External user sends an Email with an Attachment  from TO field
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "When user sends an Email with an Attachment from TO internal field" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal

  @294137 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario: To verify , When user sends an Email with an Attachment  from TO (External) field
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "When user sends an Email with an Attachment  from TO External field" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal

  @294139 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline: To verify , When Internal  user sends an Email with an Attachment  from TO (External) field
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject Test" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Examples:
      | User |
      | PM   |

  @294141 @294143 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline: To verify , When Internal  user sends an Email with an Attachment  from TO (Group) field,To verify , When  user sends an Email with an Attachment  from TO (Group) field
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject Attachment" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Examples:
      | User  |
      | PM    |
      | Admin |

  @294147 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario: To verify , When  user sends an Email with an Attachment  from TO (Group) field then attached file is displayed on the View modal
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject Attachment1" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on "View LWC" icon for "Subject Attachment1" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section

  @294150 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline:To verify,When Internal user sends an Email with an Attachment from TO (Group)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject Attachment" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Examples:
      | User  |
      | Admin |

  @294151 @294152 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline:To verify , When  user sends an Email with an Attachment  from TO (Internal) field then attached file is displayed on the View modal,
  To verify , When  Internal user sends an Email with an Attachment  from TO (Internal) field then attached file is displayed on the View modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject Attachment" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on "View LWC" icon for "Subject Attachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    Examples:
      | User  |
      | Admin |
      | PM    |

  @294154 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario: To verify , When External user sends an Email with an Attachment   then attached file is displayed on the View modal
  To verify , When External user sends an Email with an Attachment  from TO field
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject Attachment" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on "View LWC" icon for "Subject Attachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section

  @294159 @294161 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline: To verify , When  user sends an Email with an Attachment  from TO (External) field then attached file is displayed on the View modal,
  To verify , When  Internal user sends an Email with an Attachment  from TO (External) field then attached file is displayed on the View modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject Attachment" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on "View LWC" icon for "Subject Attachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    Examples:
      | User  |
      | Admin |
      | PM    |

  @294163 @294166 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline: To verify , When  user sends an Email with an Attachment  from TO & CC (Internal) field then attached file is displayed on the View modal,
  To verify , When  Internal user sends an Email with an Attachment  from TO & CC (Internal) field then attached file is displayed on the View modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    And I see and check "Cc" field dropdown is displayed with "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilip.hatagale@reisystems.in" Subject "Email with an Attachment from TO & CC Internal" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on "View LWC" icon for "Email with an Attachment from TO & CC Internal" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    Examples:
      | User  |
      | Admin |
      | PM    |

  @294168 @294171 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline: To verify , When  user sends an Email with an Attachment  from TO & CC  (External) field then attached file is displayed on the View modal,
  To verify , When Internal user sends an Email with an Attachment  from TO & CC  (External) field then attached file is displayed on the View modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilip.hatagale@reisystems.in" Subject "Email with an Attachment from TO & CC External" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "SharingAtCollabTest.png" in send email LWC modal
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    And I close LWC modal window
    And I pause execution for "5" seconds
    And I click on "View LWC" icon for "Email with an Attachment from TO & CC External" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    Examples:
      | User  |
      | Admin |
      | PM    |


  @296234 @296235 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline: To verify , When  user sends an Email with an more than 10 Attachment  then Do not attach more than 10 Files, Attachment limit is Exceeded." error message is getting displayed on the send email modal,
  To verify , When Internal  user sends an Email with an more than 10 Attachment  then Do not attach more than 10 Files, Attachment limit is Exceeded." error message is getting displayed on the send email modal
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilip.hatagale@reisystems.in" Subject "Email with an Attachment from TO & CC External" in send email LWC
    And I enter the value "Test Description" inside body content
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
    When I upload attachment "captureModalFields.png" in send email LWC modal
    Then I see "Do not attach more than 10 Files, Attachment limit is Exceeded." error massage in attachment section
    Examples:
      | User  |
      | Admin |
      | PM    |

  @296237 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario:To verify , When External user sends an Email with an more than 10 Attachment  then Do not attach more than 10 Files, Attachment limit is Exceeded." error message is getting displayed on the send email modal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject Attachment" in send email LWC
    And I enter the value "Test Description" inside body content
    And I enter the value "Test Description" inside body content
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
    When I upload attachment "captureModalFields.png" in send email LWC modal
    Then I see "Do not attach more than 10 Files, Attachment limit is Exceeded." error massage in attachment section

  @296244 @296245 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario Outline: To verify , when user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section,
  To verify , when Internal user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    And I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilip.hatagale@reisystems.in" Subject "Single File Size Limit is Exceeded" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "Maketodayfilematter.pdf" in send email LWC modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section
    Examples:
      | User  |
      | Admin |
      | PM    |

  @296250 @SendEmailAttachment(SuiteID:294112) @dilip
  Scenario: To verify , when External user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Single File Size Limit is Exceeded" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "Maketodayfilematter.pdf" in send email LWC modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section

  @296253
  Scenario: To verify , when External user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- reply email attachment section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Single File Size Limit is Exceeded" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "Maketodayfilematter.pdf" in send email LWC modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section

  @296257 @296259
  Scenario Outline: To verify , when Internal user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- reply email attachment section,
  To verify , when user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- reply email attachment section
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    And I close LWC modal window
    And I refresh the page
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Single File Size Limit is Exceeded" in send email LWC
    And I enter the value "Test Description" inside body content
    When I upload attachment "Maketodayfilematter.pdf" in send email LWC modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section
    Examples:
      | User  |
      | Admin |
      | PM    |

  @296773
  Scenario: To verify, user are remove the attachment from  sends email modal
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    And I close LWC modal window

  @296526 @296535
  Scenario Outline:To verify, When user sends an Email with an attachment from then attachment is displayed in the outlook,
  To verify , When  Internal user sends an Email with an attachment  from then attachment is displayed in the outlook
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "24" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Internal" value
    And I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Subject" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    And I close LWC modal window

    Examples:
      | User  |
      | Admin |
      | PM    |