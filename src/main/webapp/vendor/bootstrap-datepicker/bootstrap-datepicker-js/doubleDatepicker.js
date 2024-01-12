	var activeToday = "";
	var activeYear = new Date().getFullYear();

	/* this container is to indicate selected date and change */
	var firstSelectedDate = [], secondSelectedDate = [], totalSelected = 0, activeCalendarIndex = [];

	/* keep track of already opened month and year*/
	var openedMonth = [], openedYear = [];

	var toggleValue = 0;

	function toggle(id){
		calendar(new Date().getMonth()+1, new Date().getFullYear(), 0);
		calendar(new Date().getMonth()+2, new Date().getFullYear(), 1);
		
		document.getElementById("end-date").value = "";
		
		var tday = '0'+(activeToday-1);
		active(tday);
		
		if(toggleValue == 0){
			document.getElementById(id).style.display = "block";
			toggleValue = 1;
		}
		else{
			document.getElementById(id).style.display = "none";
			toggleValue = 0;
		}
	}

	/* function for calendar */
	function calendar(month, year, calenderIndex){
		var months =[
			{name: "January", day: "31", code: "1"},
			{name: "February", day: "28", code: "2"},
			{name: "March", day: "31", code: "3"},
			{name: "April", day: "30", code: "4"},
			{name: "May", day: "31", code: "5"},
			{name: "June", day: "30", code: "6"},
			{name: "July", day: "31", code: "7"},
			{name: "August", day: "31", code: "8"},
			{name: "September", day: "30", code: "9"},
			{name: "October", day: "31", code: "10"},
			{name: "November", day: "30", code: "11"},
			{name: "December", day: "31", code: "12"}
		];

		/*if the year is leapyear then set february to 29*/
		if (((year % 4 == 0) && (year % 100!= 0)) || (year%400 == 0)){
			months[1].day = 29;
		}

		/* set data to keep track as now active month and year in calendar */
		if (calenderIndex==0){
			openedMonth[0] = month;
			openedYear[0] = year;
		}
		else{
			openedMonth[1] = month;
			openedYear[1] = year;
		}

		var dayName = [
			{name: "Friday", avvr: "Fr", code: "0"},
			{name: "Saturday", avvr: "Sa", code: "1"},
			{name: "Sunday", avvr: "Su", code: "2"},
			{name: "Monday", avvr: "Mo", code: "3"},
			{name: "Tuesday", avvr: "Tu", code: "4"},
			{name: "Wednesday", avvr: "We", code: "5"},
			{name: "Thursday", avvr: "Th", code: "6"}
		];


		var dateSummationMod = 0, yearMod = 0 , leapYearTotal = 0;
		var date = new Date();

		for (i=0; i<month; i++){
			dateSummationMod += Number(months[i].day);
		}

		dateSummationMod -= months[month-1].day;
		dateSummationMod += 1;


		//date.getFullYear()-2000
		var StringYear = String (year);

		yearMod = year-1900;

		leapYearTotal = Math.ceil(yearMod/4);

		yearMod %= 7;
		dateSummationMod %= 7;

		var today = (dateSummationMod+yearMod+leapYearTotal)%7;

		if (StringYear[0]==1){
			today = today - (Number(StringYear[0])-2);
			if (today>=7){
				today %= 7;
			}
		}
		else if (StringYear>"1900"){
			today = today - (Number(StringYear[0])-3);
		}
		else if (StringYear>"2099"){
			today = today - (Number(StringYear[0])-3);
		}

		var weekDay = [[]];

		var date = 1; 
		if (today>1){
			for (i=today-2; i<=6; i++){
				weekDay[0][i] = date++;
			}
		}
		else if (today==0){
			weekDay[0][5] = date++;
			weekDay[0][6] = date++;
		}
		else if (today==1) {
			weekDay[0][6] = date++;
		}

		for (i=1; i<6; i++){
			weekDay[i] = [];
			for (j=0; j<7; j++){
				if(date<=months[month-1].day){
					weekDay[i][j] = date++;
				}
				else {
					break;
				}
			}
			if(date>months[month-1].day){
				break;
			}
		}

		var n = i;

		var week = "";

		var setParameter = 0;
		for (i=0; i<n+1; i++){
			week = week+"<tr>";
			for (j=0; j<7; j++){
				if(weekDay[i][j] != undefined && calenderIndex==0){
					if(new Date().getDate() == weekDay[i][j] && new Date().getFullYear() == year && month-1 == new Date().getMonth()){
						week = week + "<td class=\"today day0\"><button onclick=\"active('0" + setParameter++ + "')\">" + weekDay[i][j] + "</button></td>";

						activeToday = setParameter;
					}
					else{
						week = week + "<td class=\"day0\"><button onclick=\"active('0" + setParameter++ + "')\">" + weekDay[i][j] + "</button></td>";
					}
				}
				else if(weekDay[i][j] != undefined && calenderIndex==1){
					week = week + "<td class=\"day1\"><button onclick=\"active('1" + setParameter++ + "')\">" + weekDay[i][j] + "</button></td>";
				}
				else{
					setParameter++; 
					if(calenderIndex==0)
						week = week + "<td class=\"day0\"></td>";
					else
						week = week + "<td class=\"day1\"></td>"; 
				}
			}
			week = week + "</tr>";
		}

		if(calenderIndex==0)
			document.getElementsByClassName("calendar-header")[calenderIndex].innerHTML = "<button onclick=\"monthChanger(\'-\')\"><span class=\"fa fa-angle-left\"></span></button>" + months[month-1].name + " " + year;
		else
			document.getElementsByClassName("calendar-header")[calenderIndex].innerHTML = months[month-1].name + " " + year + "<button onclick=\"monthChanger(\'+\')\"><span class=\"fa fa-angle-right\"></span></button>";

		document.getElementsByClassName("date-Of-Month")[calenderIndex].innerHTML = week;
	}

	function activeDay(){
		document.getElementsByClassName("day0")[activeToday-1].style.backgroundColor = "#8c8c8c";
	}

	function startEndDateShower(){
		var startDate = "", endDate = "";

		if (String(firstSelectedDate[3]).length==1){
			startDate = 0 + firstSelectedDate[3] + "/";
		}
		else {
			startDate = firstSelectedDate[3] + "/";
		}

		if (String(firstSelectedDate[1]).length==1){
			startDate += "0" + firstSelectedDate[1]  + "/";
		}
		else{
			startDate += firstSelectedDate[1] + "/";
		}
		startDate += firstSelectedDate[2];

		if (String(secondSelectedDate[3]).length == 1){
			endDate = "0" + secondSelectedDate[3] + "/";
		}
		else {
			endDate = secondSelectedDate[3] + "/";
		}
		if (String(secondSelectedDate[1]).length == 1){
			endDate += "0" + secondSelectedDate[1]  + "/";
		}
		else{
			endDate += secondSelectedDate[1] + "/";
		}
		endDate += secondSelectedDate[2];

		document.getElementById("start-date").value = startDate;
		
		if (totalSelected == 2){
			if (firstSelectedDate[2] == secondSelectedDate[2]){
				if (firstSelectedDate[1] == secondSelectedDate[1]){
					if (firstSelectedDate[0] < secondSelectedDate[0]){
						document.getElementById("start-date").value = startDate;
						document.getElementById("end-date").value = endDate;
					}
					else {
						document.getElementById("start-date").value = endDate;
						document.getElementById("end-date").value = startDate;	
					}
				
				}
				else if (firstSelectedDate[1] > secondSelectedDate[1]){
					document.getElementById("start-date").value = endDate;
					document.getElementById("end-date").value = startDate;
				}
				else{
					document.getElementById("start-date").value = startDate;
					document.getElementById("end-date").value = endDate;
				}
			}
			else{
				document.getElementById("start-date").value = endDate;
				document.getElementById("end-date").value = startDate;
			}
		}
	}

	function active(index){
		if(index[0] == '0'){
			var day = document.getElementsByClassName("day0");
		}
		else{
			var day = document.getElementsByClassName("day1");
		}

		var finalIndex = "";

		if (index.length > 2){
			finalIndex = index[1] + index[2];
		}
		else {
			finalIndex = index[1];
		}
		finalIndex = Number(finalIndex);

		if(totalSelected==0){
			firstSelectedDate[0] = finalIndex;
			firstSelectedDate[3] = day[finalIndex].innerText;

			activeCalendarIndex[0] = day;
			totalSelected++;
		}
		else if (totalSelected==1) {
			if (firstSelectedDate[0] != finalIndex){
				secondSelectedDate[0] = finalIndex;
				secondSelectedDate[3] =day[finalIndex].innerText;

				totalSelected++;
				activeCalendarIndex[1] = day;
			}
		}
		else{
			if(secondSelectedDate[0] != finalIndex){
				activeCalendarIndex[0][firstSelectedDate[0]].style.backgroundColor = "transparent";
				activeCalendarIndex[0][firstSelectedDate[0]].style.color = "lightgray";
				activeCalendarIndex[1][secondSelectedDate[0]].style.backgroundColor = "transparent";
				activeCalendarIndex[1][secondSelectedDate[0]].style.color = "lightgray";

				var year = document.getElementsByClassName("calendar-header")[0].innerText;
				var length = year.length;
				activeYear = year[length-4]+year[length-3]+year[length-2]+year[length-1];

				if(activeYear == new Date().getFullYear() && document.getElementsByClassName("day0")[activeToday-1].innerText == new Date().getDate())
					activeDay();

				firstSelectedDate[0] = finalIndex;
				firstSelectedDate[3] = day[finalIndex].innerText;

				activeCalendarIndex[0] = day;

				totalSelected = 1;
			}
		}


		day[finalIndex].style.backgroundColor = "#30de15";
		day[finalIndex].style.color = "white";

		if (totalSelected == 1){
			if (index[0] == 0){
				firstSelectedDate[1] = openedMonth[0];
				firstSelectedDate[2] = openedYear[0]
			}
			else{
				firstSelectedDate[1] = openedMonth[1];
				firstSelectedDate[2] = openedYear[1]	
			}
		}
		else{
			if (index[0] == 0){
				secondSelectedDate[1] = openedMonth[0];
				secondSelectedDate[2] = openedYear[0]
			}
			else{
				secondSelectedDate[1] = openedMonth[1];
				secondSelectedDate[2] = openedYear[1]	
			}
		}

		if(totalSelected == 2){
			document.getElementById("apply-calendar").removeAttribute("disabled");
		}
		else{
			document.getElementById("apply-calendar").setAttribute("disabled", true);
		}

		startEndDateShower();
	}

	function monthChanger(sign){
		if(sign=="-"){
			openedMonth[0] -= 1;
			calenderIndex = 0;
			if (openedMonth[0]==0){
				openedMonth[0] = 12;
				openedYear[0] -= 1;
			}
			calendar(openedMonth[0], openedYear[0], calenderIndex);
		}
		else if (sign=="+"){
			openedMonth[1] += 1;
			calenderIndex = 1;
			if (openedMonth[1]==13){
				openedMonth[1] = 1;
				openedYear[1] += 1;
			}
			calendar(openedMonth[1], openedYear[1], calenderIndex);
		}
	}

	function calendarCancel(id){
		if (toggleValue == 1 && id == "calendar"){
			document.getElementById("calendar").style.display = "none";
			toggleValue = 0;
		}


		calendar(new Date().getMonth()+1, new Date().getFullYear(), 0);
		calendar(new Date().getMonth()+2, new Date().getFullYear(), 1);

		var tday = '0'+(activeToday-1);
		active(tday);
	}

	function dateSetter(tag){
		var date = document.getElementById(tag.id).value;
		var inputtedDateDivider = 0;

		var month = "", year = "", day="";

		for (i=0; i<date.length; i++){
			if (date[i] == '/'){
				inputtedDateDivider++;
				continue;
			}
			if (inputtedDateDivider == 0){
				day += date[i];
			}
			else if (inputtedDateDivider == 1){
				month += date[i];
			}
			else if (inputtedDateDivider == 2){
				year += date[i];
			}
		}

		if (year.length == 4){
			if (tag.id == "start-date"){
				calendar(month, year, 0);
				var a = document.getElementsByClassName("day0");
				for (i=0; i<a.length; i++){
					if (a[i].innerText == day){
						a[i].style.backgroundColor = "#30de15";
						a[i].style.color = "white";

						if (totalSelected == 2){
							totalSelected = 0;
						}
						totalSelected++;
						
						firstSelectedDate[0] = i;

						if(month[0] != 0)
							firstSelectedDate[1] = month;
						else
							firstSelectedDate[1] = month[1];

						firstSelectedDate[2] = year;

						if(day[0] != 0)
							firstSelectedDate[3] = day;
						else
							firstSelectedDate[3] = day[1];
					}
				}
			}
			else {
				calendar(month, year, 1);
				var a = document.getElementsByClassName("day1");
				for (i=0; i<a.length; i++){
					if (a[i].innerText == day){
						a[i].style.backgroundColor = "#30de15";
						a[i].style.color = "white";

						if (totalSelected == 2){
							totalSelected = 0;
						}

						secondSelectedDate[0] = i;

						if (month[0] != 0)
							secondSelectedDate[1] = month;
						else
							secondSelectedDate[1] = month[1];
						
						secondSelectedDate[2] = year;
						
						if (day[0] != 0)
							secondSelectedDate[3] = day;
						else
							secondSelectedDate[3] = day[1];

						totalSelected++;
					}
				}
			}
		}
	}