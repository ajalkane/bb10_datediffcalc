/**********************************************************************
 * Copyright 2013 Arto Jalkanen
 *
 * This file is part of Date Difference Calculator
 *
 * Date Difference Calculator is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Date Difference Calculator is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Date Difference Calculator.  If not, see <http://www.gnu.org/licenses/>
**/
import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "Date Difference Calculator"
    }
    
    ScrollView {
	    Container {
	        topPadding: 30
	        leftPadding: 30
	        rightPadding: 30
	        
	        DateTimePicker {
	            id: startDatePicker
	            mode: DateTimePickerMode.Date
	            title: "Start date"
	            
	            onValueChanged: {
	                backend.setStartDate(value)
	            }
	            
	            onCreationCompleted: {
	                // Initialize date
	                backend.setStartDate(value)
	            }                         
	        }
	
	        Label {
	            topMargin: 50
	            bottomMargin: 50
	            
	            text: "Calculate difference to"
	            textStyle.base: SystemDefaults.TextStyles.TitleText
	            verticalAlignment: VerticalAlignment.Center
	            horizontalAlignment: HorizontalAlignment.Center
	            opacity: 1.0
	        }
	
	        DateTimePicker {
	            id: endDatePicker
	            mode: DateTimePickerMode.Date
	            title: "End date"            
	            onValueChanged: {
	                backend.setEndDate(value)
	            }
	            onCreationCompleted: {
	                // Initialize date
	                backend.setEndDate(value)
	            }
                minuteInterval: 5
                opacity: 1.0
            }
	        
	        Container {
	            topMargin: 50
	            visible: backend.diffInDays != ""
	            horizontalAlignment: HorizontalAlignment.Fill
	            
		        Label {
		            text: "The difference is:"
		            textStyle.base: SystemDefaults.TextStyles.TitleText
		            verticalAlignment: VerticalAlignment.Center
		            horizontalAlignment: HorizontalAlignment.Center
		            opacity: 1.0
		        }
		        Label {
		            text: backend.diffInDays
		            textStyle.base: SystemDefaults.TextStyles.BigText
		            textStyle.color: Color.Blue
		            verticalAlignment: VerticalAlignment.Center
		            horizontalAlignment: HorizontalAlignment.Center
		            
		            opacity: 1.0
		        }
		        Label {
		            text: backend.diffInMonths
		            textStyle.base: SystemDefaults.TextStyles.TitleText
		            textStyle.color: Color.Blue
		            verticalAlignment: VerticalAlignment.Center
		            horizontalAlignment: HorizontalAlignment.Center
		            
		            opacity: 1.0
                }
		        Label {
		            text: backend.diffInYears
		            textStyle.base: SystemDefaults.TextStyles.PrimaryText
		            textStyle.color: Color.Blue
		            verticalAlignment: VerticalAlignment.Center
		            horizontalAlignment: HorizontalAlignment.Center
		            
		            opacity: 1.0
                }
		    }
	    }
	}
}

