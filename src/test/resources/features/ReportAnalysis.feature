@ReportAnalysis
Feature: Report Analysis

  @copyfile
  Scenario: Copy file
    When We copy data from "C:\Jenkins\FrameworkAutomation" and generate report to "C:\Jenkins\FrameworkAutomationAnalysis"
