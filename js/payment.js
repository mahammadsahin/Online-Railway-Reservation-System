//< !--Verifying the fields that are left blank in the page.-- >
function validation() {
	if (!((document.form1.optPaymentType[0].checked) || (document.form1.optPaymentType[1].checked) || (document.form1.optPaymentType[2].checked) || (document.form1.optPaymentType[3].checked) || (document.form1.optPaymentType[4].checked))) {
		alert("Please Select the type of Payment you would like to go for.")
		return false;
	}
	if (document.form1.optPaymentType[4].checked) {
		if ((document.form1.optPaymentType[0].checked) || (document.form1.optPaymentType[1].checked) || (document.form1.optPaymentType[2].checked)) {
			if ((document.form1.txtPaymentno.value == "") || (document.form1.txtDrawnon.value == "") || (document.form1.txtDated.value == "") || (document.form1.Payableat.options[0].selected)) {
				alert('Please fill payment details that is, Check for No/DrawnOn/Dated ')
				return false
			}
		}
		if (document.form1.optPaymentType[0].checked) {
			if (document.form1.Payableat.value != "Delhi") {
				document.form1.Payableat.focus()
				alert('Demand Drafts to be payable at DELHI only. Please select that option.')
				return false
			}
		}
		if (document.form1.optPaymentType[3].checked) {
			document.form1.Payableat.disabled = false
			document.form1.Payableat.options[0].selected
			document.form1.Payableat.disabled = true

			if (document.form1.Location.options[0].selected) {
				alert('Please select the name of the city where you would like pay the registration feein cash')
				document.form1.Location.focus()
				return false
			}
		}
		if (document.form1.optPaymentType.value == "") {
			alert('Please select your payment method')
			document.form1.optPaymentType.focus()
			return false
		} else {
			return true
		}
	}
}
//< !--Verifying the pincode field in the customer registration form for alphabets.-- >
function checkno(t) {
	var s = t.value
	if (isNaN(s)) {
		alert('The pin code cannot have alphabets. Please type the numbers only.')
		t.focus()
		t.select()
	}
	return false
}
//< !--Verifying the phone number field in the customer registration form for alphabets.-- >
function checkphoneno(t) {
	var s = t.value
	for (i = 0; i < s.length; i++) {
		if ((s.charCodeAt[i] >= 65 && s.charCodeAt(i) <= 91) || (s.charCodeAt(i) >= 96 && s.charCodeAt(i) <= 123)) {
			alert('The phone number cannot have alphabets.')
			t.focus()
			t.select()
			break
		}
	}
	return false
}
//< !--Verifying the payment mode field in the Payment Method form. -- >
function checkpayment(t) {
	if (document.form1.optPaymentType[4].checked) {
		document.form1.txtPaymentno.value = ""
		document.form1.txtPaymentno.disabled = true
		document.form1.txtDated.value = ""
		document.form1.txtDated.disabled = false
		document.form1.gtl.disabled = false
		document.form1.gtl.value = "Investmentz.com"
		document.form1.gtl.disabled = true
		document.form1.txtDrawnon.value = ""
		document.form1.txtDrawnon.disabled = true
		document.form1.card_name.value = ""
		document.form1.card_name.disabled = true
		document.form1.card_number.value = ""
		document.form1.card_number.disabled = true
		document.form1.card_type[0].disabled = true
		document.form1.card_type[1].disabled = true
		document.form1.card_type[2].disabled = true
		document.form1.card_type[3].disabled = true
		document.form1.sl_month.disabled = true
		document.form1.sl_year.disabled = true
		document.form1.Payableat.disabled = false
		document.form1.Payableat.value = "sel"
		document.form1.Payableat.disabled = true
		document.form1.Location.value = "Loc"
		document.form1.Location.disabled = true
	}
	//< !--Enabling the focus on certain fields, if the payment mode is draft. -- >
	if (t.value == "draft") {
		document.form1.txtPaymentno.disabled = false
		document.form1.txtPaymentno.focus()
		document.form1.txtDated.disabled = false
		document.form1.gtl.disabled = false
		document.form1.gtl.value = "Investmentz.com"
		document.form1.gtl.disabled = true
		document.form1.txtDrawnon.disabled = false
		document.form1.Payableat.disabled = false
		document.form1.Payableat.value = "Delhi"
		document.form1.card_name.value = ""
		document.form1.card_name.disabled = true
		document.form1.card_number.value = ""
		document.form1.card_number.disabled = true
		document.form1.card_type[0].disabled = true
		document.form1.card_type[1].disabled = true
		document.form1.card_type[2].disabled = true
		document.form1.card_type[3].disabled = true
		document.form1.sl_month.disabled = true
		document.form1.sl_year.disabled = true
		document.form1.Location.value = "Loc"
		document.form1.Location.disabled = true
	}
	//< !--Enabling the focus on certain fields, if the payment mode is cheque or payorder. -- >
	if ((t.value == "cheque") || (t.value == "payorder")) {
		document.form1.txtPaymentno.disabled = false
		document.form1.txtPaymentno.focus()
		document.form1.txtDated.disabled = false
		document.form1.gtl.disabled = false
		document.form1.gtl.value = "Investmentz.com"
		document.form1.gtl.disabled = true
		document.form1.txtDrawnon.disabled = false
		document.form1.card_name.value = ""
		document.form1.card_name.disabled = true
		document.form1.card_number.value = ""
		document.form1.card_number.disabled = true
		document.form1.card_type[0].disabled = true
		document.form1.card_type[1].disabled = true
		document.form1.card_type[2].disabled = true
		document.form1.card_type[3].disabled = true
		document.form1.sl_month.disabled = true
		document.form1.sl_year.disabled = true
		document.form1.Payableat.value = "sel"
		document.form1.Payableat.disabled = false
		document.form1.Location.value = "Loc"
		document.form1.Location.disabled = true
	}
	//< !--Enabling the focus on certain fields, if the payment mode is cash. -- >
	if (t.value == "cash") {
		document.form1.Location.disabled = false
		document.form1.Location.value = "Loc"
		document.form1.txtPaymentno.disabled = false
		document.form1.txtPaymentno.value = ""
		document.form1.txtPaymentno.disabled = true
		document.form1.txtDated.disabled = false
		document.form1.txtDated.value = ""
		document.form1.txtDated.disabled = true
		document.form1.gtl.disabled = false
		document.form1.gtl.value = ""
		document.form1.gtl.disabled = true
		document.form1.txtDrawnon.disabled = false
		document.form1.txtDrawnon.value = ""
		document.form1.txtDrawnon.disabled = true
		document.form1.card_name.value = ""
		document.form1.card_name.disabled = true
		document.form1.card_number.value = ""
		document.form1.card_number.disabled = true
		document.form1.card_type[0].disabled = true
		document.form1.card_type[1].disabled = true
		document.form1.card_type[2].disabled = true
		document.form1.card_type[3].disabled = true
		document.form1.sl_month.disabled = true
		document.form1.sl_year.disabled = true
		document.form1.Payableat.disabled = false
		document.form1.Payableat.value = "sel"
		document.form1.Payableat.disabled = true
	}
	//< !--Enabling the focus on certain fields, if the payment mode is credit card. -- >
	if (t.value == "card") {
		document.form1.Location.value = "Loc"
		document.form1.Location.disabled = true
		document.form1.txtPaymentno.disabled = false
		document.form1.txtPaymentno.value = ""
		document.form1.txtPaymentno.disabled = true
		document.form1.txtDated.disabled = false
		document.form1.txtDated.value = ""
		document.form1.txtDated.disabled = true
		document.form1.gtl.disabled = false
		document.form1.gtl.value = ""
		document.form1.gtl.disabled = true
		document.form1.txtDrawnon.disabled = false
		document.form1.txtDrawnon.value = ""
		document.form1.txtDrawnon.disabled = true
		document.form1.card_name.value = ""
		document.form1.card_name.disabled = false
		document.form1.card_number.value = ""
		document.form1.card_number.disabled = false
		document.form1.card_type[0].disabled = false
		document.form1.card_type[1].disabled = false
		document.form1.card_type[2].disabled = false
		document.form1.card_type[3].disabled = false
		document.form1.sl_month.disabled = false
		document.form1.sl_year.disabled = false
		document.form1.Payableat.disabled = false
		document.form1.Payableat.value = "sel"
		document.form1.Payableat.disabled = true
	}
}
//< !--Verfying for the leap year. -- >
function isLeapYear(Year) {
	if (((Year % 4) == 0) && (((Year % 100) != 0) || ((Year % 400) == 0))) {
		return (true);
	}
	else {
		return (false)
	}
}
//< !--Verifying the date format entered for the date at which the cheque will be given clearance. -- >
function checkDate(objName, myValue) {
	var mNames = "JanFebMarAprMayJunJulAugSepOctNovDec"
	var mValues = "312831303130313130313031"
	var alertMsg = ""
	var forFocus = "document.form1." + objName + ".focus()"
	var wrongdate = true
	var args = checkDate.arguments
	var dt = new Date()
	var tm = dt.getTime()
	objName = args[0]
	myValue = args[1]
	if (myValue.length < 10) {
		alert("Please type the date in the format, dd/mm/yyyy!")
		eval(forFocus);
		return false
	}
	if ((myValue.substring(2, 3) != "/") || (myValue.substring(5, 6) != "/")) {
		alert("Please type the date in format dd/mm/yyyy!")
		eval(forFocus);
		return false
	}
	myDD = parseInt(myValue.substring(0, 2), 10)
	myMM = parseInt(myValue.substring(3, 5), 10)
	myYYYY = parseInt(myValue.substring(6, 10), 10)
	if (myYYYY < 2001) {
		alert("Year should be greater than 2001")
		eval(forFocus)
		return false
	}
	if ((isNaN(myDD)) || (isNaN(myMM)) || (isNaN(myYYYY))) {
		alert("Invalid date entered!")
		eval(forFocus)
		return false
	}
	if ((myMM > 12) || (myMM <= 0)) {
		alert("Invalid month entered!")
		eval(forFocus)
		return false
	}
	var lastDate = 0
	if (myMM == 2) {
		if (isLeapYear(myYYYY)) {
			lastDate = 29
		}
		else {
			lastDate = 28
		}
	}
	else {
		lastDate = mValues.substring((myMM - 1) * 2, (myMM - 1) * 2 + 2)
	}
	if (myDD > lastDate || (myDD <= 0)) {
		alert("Invalid Date entered!")
		eval(forFocus)
		return false
	}
	var newValue = ""
	if (myDD < 10) { myDD = "0" + myDD }
	if (myMM < 10) { myMM = "0" + myMM }
	newValue = myDD + "/" + myMM + "/" + myYYYY
	var forValue = "document.form1." + objName + ".value = newValue"
	eval(forValue)
	return true
}




//<!-- Providing the default values for the Payment Method form. -->
document.form1.Payableat.value = "Delhi"
document.form1.Location.disabled = true
document.form1.card_name.value = ""
document.form1.card_name.disabled = true
document.form1.card_number.value = ""
document.form1.card_number.disabled = true
document.form1.card_type[0].disabled = true
document.form1.card_type[1].disabled = true
document.form1.card_type[2].disabled = true
document.form1.card_type[3].disabled = true
document.form1.sl_month.disabled = true
document.form1.sl_year.disabled = true