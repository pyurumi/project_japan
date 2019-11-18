/**
 * 
 */

$(document).ready(function(){

	formCheck(fm);
	idCheck();
});

function formCheck(fm) {
	if (fm.idchecked.value == '') {
		alert("ID중복 검사를 해주세요.");
		return false;
	}
	if (fm.user_name.value == '') {
		alert("이름을 입력하세요.");
		fm.user_name.focus();
		return false;
	}
	if (fm.user_id.value == '') {
		alert("계정을 입력하세요.");
		fm.user_id.focus();
		return false;
	}
	if (fm.password.value == '') {
		alert("암호를 입력하세요.");
		fm.password.focus();
		return false;
	}
	if (fm.password.value != fm.CONFIRM.value) {
		alert("암호가 일치하지 않습니다.");
		fm.password.focus();
		return false;
	}

	if (fm.email.value == '') {
		alert("이메일을 입력하세요.");
		fm.email.focus();
		return false;
	}

	if (confirm("입력한 내용이 맞습니까?")) {
		return true;
	} else {
		return false;
	}
}
function idCheck() {
	if (document.frm.user_id.value == '') {
		alert("아이디를 입력하세요.");
		document.frm.user_id.focus();
		return;
	}
	var url = "../idcheck/idcheck.html?ID=" + document.frm.user_id.value;
	window.open(url, "_blank", "width=450,height=200");
}