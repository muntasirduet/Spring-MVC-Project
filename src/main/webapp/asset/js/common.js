/* common javascript version 1.0*/

window.addEventListener('click', function(){
	if (dropdownToggleStatus == 1){ /* if clicked on outside of dropdown-menu for 'inside click'*/
		var dropdownMenu = document.getElementsByClassName('dropdown-menu');

		for (i=0; i<dropdownMenu.length; i++){ // if clicked second time in dropdown-menu for 'inside click'
			dropdownMenu[i].addEventListener('click', function(){
				dropdownClickStatus =1;
			});
		}

		if (bodyClickedStatus==0){ //body clicked status, if click on body
			bodyClickedStatus = 1;
		}

		if (bodyClickedStatus == 1 && dropdownClickStatus==0){ //if user click outside of dropdown-menu for 'inside click'
			dropdownToggle(previousToggledDropdownMenu); //hide all dropdown menu and clear all status
			previousToggledDropdownMenu = "";
			bodyClickedStatus = 0;
			dropdownToggleStatus = 0;
			previousToggledDropdownMenu = "";
		}
		if (dropdownClickStatus == 1){
			dropdownClickStatus = 0;
		}
		if (bodyClickedStatus == 2){
			bodyClickedStatus = 0;
		}

		for (i=0; i<dropdownMenu.length; i++){ //caret changing for dropdown menu for inside click.
			if (dropdownMenu[i].style.display == 'block'){
				document.getElementsByClassName('caret')[i].style.transform = "rotate(180deg)";
			}
			else {
				document.getElementsByClassName('caret')[i].style.transform = "rotate(0deg)";	
			}
		}
	}

	if (caretRotateStatus == 1){ //if user click on outside of dropdown menu data-toggle
		var caret = document.getElementsByClassName('caret');

		caretRotate(previousRotatedCaret);
		previousRotatedCaret = "";

		caretRotateStatus = 0;
	}
});

/* start of dropdown-toggle function */
var dropdownToggleStatus = 0, previousToggledDropdownMenu = "";
var bodyClickedStatus = 0, dropdownClickStatus = 0;

function dropdownToggle(index){
	var menu = document.getElementsByClassName("dropdown-menu");
	if (dropdownToggleStatus==0){ //if clicked first time on dropdown-menu
		menu[index].style.display = "block";
		dropdownToggleStatus = 1;
		previousToggledDropdownMenu = index;

		bodyClickedStatus = 2;
		
	}
	else if (dropdownToggleStatus==1 && index != previousToggledDropdownMenu){ //if clicked annother dropdown menu when a dropdown menu is opened
		menu[previousToggledDropdownMenu].style.display = "none";
		menu[index].style.display = "block";
		dropdownToggleStatus = 1;
		previousToggledDropdownMenu = index;

		bodyClickedStatus = 2;
	}
	else if (dropdownToggleStatus==1 && index == previousToggledDropdownMenu){ //if clicked the same dropddown menu
		menu[index].style.display = "none";
		dropdownToggleStatus = 0;
		previousToggledDropdownMenu = "";
		bodyClickedStatus = 2;
		document.getElementsByClassName("caret")[index].style.transform = "rotate(0deg)";
	}
}
/* end of dropdown-toggle function */

/* start of caret rotate function */
var caretRotateStatus = 0, previousRotatedCaret = "";

function caretRotate(index){
	var caret = document.getElementsByClassName('caret');

	if (caretRotateStatus == 0){  //if user click first time in dropdown
		caret[index].style.transform = "rotate(180deg)";
		caretRotateStatus = 1;
		previousRotatedCaret = index;
	}
	else if (caretRotateStatus==1 && index != previousRotatedCaret){ //if user click in another dropdown menu
		caret[previousRotatedCaret].style.transform = "rotate(0deg)";
		caret[index].style.transform = "rotate(180deg)";
		caretRotateStatus = 1;
		previousRotatedCaret = index;
	}
	else if (caretRotateStatus==1 && index == previousRotatedCaret){ //if user click on same dropdown menu
		caret[index].style.transform = "180deg";
		caretRotateStatus = 0;
		previousRotatedCaret = "";
		caret[index].style.transform = "rotate(0deg)";
	}
}
/* end of caret rotate function */

/*start of dataChange for set dropdown data in button box */
function dataChange(index, className){
	var fieldData = document.getElementsByClassName(className);
	document.getElementsByClassName(className)[0].innerText = fieldData[index].innerText;
}

/* end of data change */