
var currentDate = "";
var currentYear = new Date().getFullYear();


var selectedDate = [], totalSelected = 0, onscreenCalendar = [];


var onScreenMonth = [], onScreenYear = [];

var toggleValueTF = 0;

function sendToday(){
	if(new Date().getDate()>9 && (Number(new Date().getMonth())+1)>9){
		document.getElementById("inputDate").value = new Date().getDate() + "/" +(Number(new Date().getMonth())+1) + "/" + new Date().getFullYear();

		setTdayColor();
	}

	else if(new Date().getDate()<10 && (Number(new Date().getMonth())+1)>9){
		document.getElementById("inputDate").value = "0" + new Date().getDate() + "/" +(Number(new Date().getMonth())+1) + "/" + new Date().getFullYear();

		setTdayColor();
	}
	else if(new Date().getDate()>9 && (Number(new Date().getMonth())+1)<10){
		document.getElementById("inputDate").value = new Date().getDate() + "/" + "0" +(Number(new Date().getMonth())+1) + "/" + new Date().getFullYear();

		setTdayColor();
	}

	else if(new Date().getDate()<10 && (Number(new Date().getMonth())+1)<10){
		document.getElementById("inputDate").value = "0" +  new Date().getDate() + "/" + "0" + (Number(new Date().getMonth())+1) + "/" + new Date().getFullYear();

		setTdayColor(); 
	}
}

function setTdayColor(){
	var tday = '0'+(currentDate-1);

	if(tday[0] == '0'){
		var day = document.getElementsByClassName("day0");
	}
	if (selectedDate[0]!=undefined) {

	day[selectedDate[0]].style.backgroundColor = "transparent";
	day[selectedDate[0]].style.color = "lightgray";

	if(selectedDate[3]== new Date().getDate() && selectedDate[1] == new Date().getMonth()+1 && selectedDate[2] == new Date().getFullYear())
		activeDay();	
	}
	

	var todayIndex = "";

	if (tday.length > 2){
		todayIndex = tday[1] + tday[2];
	}
	else {
		todayIndex = tday[1];
	}
	todayIndex = Number(todayIndex);

	if(totalSelected==0){
		selectedDate[0] = todayIndex;
		selectedDate[3] = day[todayIndex].innerText;

		selectedDate[1] = onScreenMonth[0];
		selectedDate[2] = onScreenYear[0];

		onscreenCalendar[0] = day;
	}
	
	day[todayIndex].style.backgroundColor = "#30de15";
	day[todayIndex].style.color = "white";
}
function toggleTF(className, index){
	pushCalendar(new Date().getMonth()+1, new Date().getFullYear(), index);
	
	setTdayColor();

	if(toggleValueTF == 0){
		document.getElementsByClassName(className)[index].style.display = "block";
		toggleValueTF = 1;
	}
	else{
		document.getElementsByClassName(className)[index].style.display = "none";
		toggleValueTF = 0;
	}
}


function pushCalendar(month, year, calenderIndex){
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

	
	if (((year % 4 == 0) && (year % 100!= 0)) || (year%400 == 0)){
		months[1].day = 29;
	}

	onScreenMonth[0] = month;
	onScreenYear[0] = year;


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
			if(weekDay[i][j] != undefined){
				if(new Date().getDate() == weekDay[i][j] && new Date().getFullYear() == year && month-1 == new Date().getMonth()){
					week = week + "<td class=\"today day0\"><button onclick=\"active('0" + setParameter++ + "', " + calenderIndex + ")\">" + weekDay[i][j] + "</button></td>";

					currentDate = setParameter;
				}
				else{
					week = week + "<td class=\"day0\"><button onclick=\"active('0" + setParameter++ + "', " + calenderIndex + ")\">" + weekDay[i][j] + "</button></td>";
				}
			}

			else{
				setParameter++; 
				if(calenderIndex==0)
					week = week + "<td class=\"day0\"></td>";
			}
		}
		week = week + "</tr>";
	}

	document.getElementsByClassName("s-calendar-header")[calenderIndex].innerHTML = "<button onclick=\"monthChanger(\'-\', "+ calenderIndex +")\"><span class=\"fa fa-angle-left\"></span></button>" + months[month-1].name + " " + year + 
		"<button onclick=\"monthChanger(\'+\', "+ calenderIndex  + ")\"><span class=\"fa fa-angle-right\"></span></button>"
	
	document.getElementsByClassName("date-Of-Month")[calenderIndex].innerHTML = week;
}

function activeDay(){
	document.getElementsByClassName("day0")[currentDate-1].style.backgroundColor = "#8c8c8c";
}

function startEndDateShower(index){
	var startDate = "";

	if (String(selectedDate[3]).length==1){
		startDate = 0 + selectedDate[3] + "/";
	}
	else {
		startDate = selectedDate[3] + "/";
	}

	if (String(selectedDate[1]).length==1){
		startDate += "0" + selectedDate[1]  + "/";
	}
	else{
		startDate += selectedDate[1] + "/";
	}
	startDate += selectedDate[2];

	document.getElementsByClassName("inputDate")[index].value = startDate;
}


//123
function active(index, inputIndex){
	if(index[0] == '0'){
		var day = document.getElementsByClassName("day0");
	}
	if (selectedDate[0]!=undefined) {

	day[selectedDate[0]].style.backgroundColor = "transparent";
	day[selectedDate[0]].style.color = "lightgray";

	if(selectedDate[3]== new Date().getDate() && selectedDate[1] == new Date().getMonth()+1 && selectedDate[2] == new Date().getFullYear())
		activeDay();	
	}
	

	var todayIndex = "";

	if (index.length > 2){
		todayIndex = index[1] + index[2];
	}
	else {
		todayIndex = index[1];
	}
	todayIndex = Number(todayIndex);

	if(totalSelected==0){
		selectedDate[0] = todayIndex;
		selectedDate[3] = day[todayIndex].innerText;

		selectedDate[1] = onScreenMonth[0];
		selectedDate[2] = onScreenYear[0];

		onscreenCalendar[0] = day;
	}
	
	day[todayIndex].style.backgroundColor = "#30de15";
	day[todayIndex].style.color = "white";

	if (totalSelected == 1){
		if (index[0] == 0){
			selectedDate[1] = onScreenMonth[0];
			selectedDate[2] = onScreenYear[0];
			selectedDate[3] = day[todayIndex];
		}
		else{
			selectedDate[1] = onScreenMonth[1];
			selectedDate[2] = onScreenYear[1];
			selectedDate[3] = day[todayIndex];	
		}
	}

	startEndDateShower(inputIndex);
}

function monthChanger(sign, calenderIndex){
	if(sign=="-"){
		onScreenMonth[0] -= 1;
		if (onScreenMonth[0]==0){
			onScreenMonth[0] = 12;
			onScreenYear[0] -= 1;
		}
		pushCalendar(onScreenMonth[0], onScreenYear[0], calenderIndex);
		
		if(selectedDate[3]== new Date().getDate() && selectedDate[1] == new Date().getMonth()+1 && selectedDate[2] == new Date().getFullYear()){
			
			setTdayColor();
		}

		if(selectedDate[3]!= new Date().getDate() && onScreenMonth[0] == new Date().getMonth()+1 && selectedDate[2] == new Date().getFullYear()){
			activeDay();
		}
	}
	else if (sign=="+"){
		onScreenMonth[0] += 1;
		if (onScreenMonth[0]==13){
			onScreenMonth[0] = 1;
			onScreenYear[0] += 1;
		}
		pushCalendar(onScreenMonth[0], onScreenYear[0], calenderIndex);
		if(selectedDate[3]== new Date().getDate() && selectedDate[1] == new Date().getMonth()+1 && selectedDate[2] == new Date().getFullYear()){
			setTdayColor();
		}

		if(selectedDate[3]!= new Date().getDate() && onScreenMonth[0] == new Date().getMonth()+1 && selectedDate[2] == new Date().getFullYear()){
			activeDay();
		}
	}

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
		if (tag.id == "inputDate"){
			pushCalendar(month, year, 0);
			var a = document.getElementsByClassName("day0");
			for (i=0; i<a.length; i++){
				if (a[i].innerText == day){
					a[i].style.backgroundColor = "#30de15";
					a[i].style.color = "white";

					if (totalSelected == 2){
						totalSelected = 0;
					}
					totalSelected++;
					
					selectedDate[0] = i;

					if(month[0] != 0)
						selectedDate[1] = month;
					else
						selectedDate[1] = month[1];

					selectedDate[2] = year;

					if(day[0] != 0)
						selectedDate[3] = day;
					else
						selectedDate[3] = day[1];
				}
			}
		}
		
	}
}

