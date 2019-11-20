/**
 * 
 */
function workingClock() {
		var days = [ "일", "월", "화", "수", "목", "금", "토" ];
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth() + 1;
		if (month < 10)
			month = "0" + month;
		var date = today.getDate();
		if (date < 10)
			date = "0" + date;
		var index = today.getDay();
		var day = days[index];
		var hour = today.getHours();
		var min = today.getMinutes();
		if (min < 10)
			min = "0" + min;
		var sec = today.getSeconds();
		if (sec < 10)
			sec = "0" + sec;
		var str = year + "-" + month + "-" + date + " " + day + " " + hour
				+ ":" + min + ":" + sec;
		document.getElementById("clock").innerHTML = str;
	}
	function startClock() {
		setInterval(workingClock, 500);
	}