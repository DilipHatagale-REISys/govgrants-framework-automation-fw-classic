package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StepProgressBar {
		private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
		private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

		/**
		 * Set pay load for step progress bar
		 * 
		 * @param fieldLabel
		 * @param value
		 * @param filterClause
		 * @return
		 */
		public String setStepProgressBarConfig(String fieldLabel, String value, String filterClause) {
			String finalPayload = null;
			Pattern p = Pattern.compile("([0-9])");
			Matcher m = p.matcher(value);
			switch (fieldLabel.toUpperCase()) {
			case "RENDER FOR APPLICATION":
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__RenderforApp__c), value);
				break;
			}
			System.out.println(finalPayload);
			return finalPayload;
		}

}
