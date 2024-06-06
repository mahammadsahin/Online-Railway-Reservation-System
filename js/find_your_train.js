window.onload = function () {
    new JsDatePick({
        useMode: 2,
        target: "inputField",
        dateFormat: "%d-%M-%Y"
        /*selectedDate:{				This is an example of what the full configuration offers.
            day:5,						For full documentation about these settings please see the full version of the code.
            month:9,
            year:2006
        },
        yearsRange:[1978,2020],
        limitToToday:false,
        cellColorScheme:"beige",
        dateFormat:"%m-%d-%Y",
        imgPath:"img/",
        weekStartDay:1*/
    });
};

// function checkDate() {
//     var d1 = document.getElementById("inputField");
//     if (d1.value == "") {

//         alert("please provide date ");
//         return false;
//     }
//     else {
//         var sdate = d1.value.substring(0, 2);
//         var smonth = d1.value.substring(3, 6);
//         var syear = d1.value.substring(7, 11);
//         //alert(sdate+" "+smonth+" "+syear);
//         var m1 = "";
//         if (smonth == "JAN") m1 = 0; else if (smonth == "FEB") m1 = 1; else if (smonth == "MAR") m1 = 2; else if (smonth == "APR") m1 = 3; else if (smonth == "MAY") m1 = 4; else if (smonth == "JUN") m1 = 5; else if (smonth == "JUL") m1 = 6; else if (smonth == "AUG") m1 = 7; else if (smonth == "SEP") m1 = 8; else if (smonth == "OCT") m1 = 9; else if (smonth == "NOV") m1 = 10; else if (smonth == "DEC") m1 = 11;

//         var date1 = new Date();
//         var cdate = date1.getDate()
//         var cmonth = date1.getMonth();
//         var cyear = date1.getFullYear();

//         if (syear < cyear) {
//             alert("Plese select correct year");
//             return false;
//         }
//         else if (syear >= cyear + 2) {
//             alert("you can not select that year");
//             return false;
//         }
//         else if (syear == cyear && m1 < cmonth) {
//             alert("Plese select correct Month");
//             return false;
//         }
//         else if (cmonth < 8 && syear == cyear + 1)           // less than 8 means less than sep because java script treat jan as 0 and dec as 11
//         {
//             alert("You cant select that year");
//             return false;
//         }
//         else if (cmonth == 8 && cdate == 1 && syear == cyear + 1)           // less than 8 means less than sep because java script treat jan as 0 and dec as 11
//         {
//             alert("You cant select that year.");
//             return false;
//         }
//         else if (cmonth >= 8 && cdate >= 1 && syear == cyear + 1) {
//             alert("You cant select that year.");
//             return false;
//         }
//         else if (m1 == cmonth + 4 && sdate > cdate) {
//             alert("Your are only allowed to reserve seat within next 120 days");
//             return false;
//         }
//         else if (m1 > cmonth + 4) {
//             alert("Your are only allowed to reserve seat within next 4 months");
//             return false;
//         }
//         else if (m1 == cmonth && sdate < cdate) {
//             alert("Plese select correct Date ");
//             return false;
//         }
//         //else if()
//     }
//     return true;
// }

