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

  @256681 @256697 @256728 @256752 @256756 @256767 @us-255931 @dilip
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

  @256666 @256723 @256773 @256732 @256682 @256722 @256770 @256776 @us-255931 @dilip
  Scenario Outline: Verify Reply LWC modal for Internal user(PM) and ADMIN user scenario's
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
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
    @256837 @256845 @256856 @256860 @256884 @us-255931 @dilip
  Scenario Outline: Verify Reply LWC modal for Internal user(PM) and ADMIN user scenario's after click on Send Button
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
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject line added" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "60" seconds
    #256782 #256831 #256856
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    #256830 #256783 #256837
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    #256832 #256845
    Then I can see attach the "TestFileSharing.docx" file format in the attachment section
    #256833 #256860
    Then I can see attach the "TestAutomationFile.pptx" file format in the attachment section
    #256834
    Then I can see attach the "SendEmailMP4File.mp4" file format in the attachment section
    #256788 #256789
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    #256826 #256809
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @256784 @256790 @256811 @256849 @256854 @256857 @156858 @us-255931 @dilip
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
    And I pause execution for "60" seconds
    #256784
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    #256790
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    #256811
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
    And I click on "Reply LWC" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    And I click on "Reply LWC" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
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
    And I pause execution for "60" seconds
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

  @256791 @256814 @256886 @256814 @us-255931 @dilip
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