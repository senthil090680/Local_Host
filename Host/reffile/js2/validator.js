$(document).ready(function() {

//Fadeout for menu page
setTimeout(function(){
  $('.mydiv').remove();
}, 5000);

//Fancy Box
$('a[rel*=facebox]').facebox(); 
$('.ask').jConfirmAction();

   $(function() {
        $( "#closebutton" ).button({
            icons: {
                primary: "../images/close_pop.png"
            },
            text: false
        });

        $( "#closebutton" ).click(function(event)
        {
            $("#errormsg").hide();
			            $("#errorbigmsg").hide();

        });
        
    });
   	
      $(function() {
        $( "#closebutton_blue" ).button({
            icons: {
                primary: "../images/close_button_blue.png"
            },
            text: false
        });

        $( "#closebutton_blue" ).click(function(event)
        {
            $("#errormsg").hide();
			            $("#errorbigmsg").hide();

        });
        
    });

$(function() {
	  if ($.browser.msie && $.browser.version.substr(0,1)<7)
	  {
		$('li').has('ul').mouseover(function(){
			$(this).children('ul').show();
			}).mouseout(function(){
			$(this).children('ul').hide();
			})
	  }
	}); 	



//Sorting MYSQL Result SET
//$("#rounded-corner").tablesorter({sortList: [[0,0], [1,0]]}); 

$("#sort").tablesorter({sortList: [[1,1], [0,0]]}); 

//popup
$(function() {
	$( "#datepicker" ).datepicker();
});	

//popup
$(function() {
	$( ".datepicker" ).datepicker({ dateFormat: 'yy-mm-dd' }).val();;
	
});	
//popup
$(function() {
	$( ".datepickerkdpdt" ).datepicker({ dateFormat: 'yy-mm-dd' }).val();;
	
});	

//product Validation
$("#validation").validate({
    invalidHandler: function(form, validator) {
      var errors = validator.numberOfInvalids();
	  if (errors) {
        var message ='&nbsp;&nbsp;Please Enter ALL Mandatory Fields';
        $("#messageBox").html(message);
        $("#messageBox").show();
      } else {
        $("#messageBox").hide();
      }
    },
    showErrors: function(errorMap, errorList) {
    },
submitHandler: function() {
	 $("#messageBox").hide(); 
	//alert("Submit!") 
	 if ($(form).valid()) 
     form.submit(); 
     return false; // prevent normal form posting
}
});

});


//Clear Field Value For ALL Forms
function valClear()
{
	document.location.href='register.php';
}
function userPwd()
{
	document.location.href='userchangePassword.php';
}

function forgot_clear()
{
	document.location.href='forgotPassword.php';
}

function changePWD_clear()
{
	document.location.href='changePassword.php';
}

function provinceClear()
{
	document.location.href='province.php';
}

function stateClear()
{
	document.location.href='state.php';
}

function cityClear()
{
	document.location.href='city.php';
}

function feedClear()
{
	document.location.href='feedbackType.php';
}

function cat1Clear()
{
	document.location.href='customerCategory1.php';
}

function cat2Clear()
{
	document.location.href='customerCategory2.php';
}

function cat3Clear()
{
	document.location.href='customerCategory3.php';
}

function custype()
{
	document.location.href='CustomerType.php';
}

function kdcat()
{
	document.location.href='kdCategory.php';
}

function lga()
{
	document.location.href='lga.php';
}

function loc()
{
	document.location.href='location.php';
}

function kd()
{
	document.location.href='kd.php';
}

function pro()
{
	document.location.href='productMaster.php';
}

function sch()
{
	document.location.href='scheme.php';
}

function sr()
{
	document.location.href='SalesRep.php';
}


function systemParam()
{
	document.location.href='setupParam.php';
}

function kdpdt()
{
	document.location.href='kdProduct.php';
}
function kdpdt_category()
{
	document.location.href='kdProduct_category.php';
}
function kdpdt_standard()
{
	document.location.href='kdProduct_standard.php';
}
function kdpdt_POSM()
{
	document.location.href='kdProduct_POSM.php';
}

function productScheme()
{
	document.location.href='productscheme.php';
}

function price()
{
	document.location.href='price.php';
}

//Change Password
function changePwd(val)
{
	//alert("dfds");
        $.ajax({
            url: 'get_changePassword.php?val=' + val,
            success: function(data) {
				//alert(data);
				var value=$.trim(data);//To Remove White Space in string
				var value1=data.substring(0,value.length-1);//To return part of the string
				var list= value1.split("|"); 
				var newHTML = [];
				var newHTML1 = [];
				newHTML.push("<option value='' selected='selected'>Select email</option>");
				newHTML1.push("<option value='' selected='selected'>Select password</option>");
				for (var i=0; i<list.length; i++) {
					var arr_i= list[i].split("^");
					$(".email").val(arr_i[1]);
					$(".old_pass").val(arr_i[2]);
					$(".access").val(arr_i[3]);
					$(".user_id").val(arr_i[4]);
					}

			}
        });
}	//End Of Change Password

//Set Up Parameters
function param()
{
var val1=$('#mastercode option:selected').text();
	if(val1=='Product'){
	$(".pdt").show();
	$(".scheme").hide();
	$(".productScheme").hide();
	}
	else if(val1=='Scheme')
	{
	$(".scheme").show();
	$(".pdt").hide();
	$(".productScheme").hide();
	}
	else if(val1=='Product Scheme')
	{
	$(".productScheme").show();
	$(".pdt").hide();
	$(".scheme").hide();
	}
}	//End Of Set Up Parameters

//Download Upload configuration
function DUConfig()
{
var val=$('#uploaddownload option:selected').text();
if(val=='Download'){
$(".folderName").val('Download From Channel Partner');
$(".username").val('Admin');
$(".password").val('Admin');
$(".servername").val('Host.com');
}
else
{
$(".folderName").val('Upload to Channel Partner');
$(".username").val('Admin');
$(".password").val('Admin');
$(".servername").val('Host.com');
}
}	//End Of Download Upload configuration


//Download Upload Status
function DUStatus()
{
var val=$('#uploaddownload option:selected').text();
if(val=='Download'){
$(".status").show();
$(".statusU").hide();
}
else
{
$(".statusU").show();
$(".status").hide();
}
}	//End Of Download Upload Status



function dateRange()
{
	var to_date=$('.todate').val();
	var from_date=$('.fromdate').val();
	if(to_date<=from_date)
	{
alert("To date is greater than From date");
return false;
//alert(to_date);
	}
	else
	{
		return true;

	}
}

function ajaxcategory()
{
	var val=$('.Kd_Category option:selected').text();
	window.location.href="kdProduct_category.php?data="+ val;
}
function ajaxcategory_standard()
{
	var val=$('.Kd_Category option:selected').text();
	window.location.href="kdProduct_standard.php?data="+ val;
}
function ajaxcategory_posm()
{
	var val=$('.Kd_Category option:selected').text();
	window.location.href="kdProduct_POSM.php?data="+ val;
}



//Scheme  Product Code
function productcode()
{
	var val=$('.Product_description1 option:selected').text();
	 $.ajax({
            url: 'get_produccode.php?val=' + val,
            success: function(data) {
				//alert(data);
				var value=$.trim(data);//To Remove White Space in string
				var value1=data.substring(0,value.length-1);//To return part of the string
				var list= value1.split("|"); 
				for (var i=0; i<list.length; i++) {
					var arr_i= list[i].split("^");
					//alert(arr_i[6]);
					$(".Product_code").val(arr_i[0]);
			}

			}
        });
	
}


//Scheme Product Scheme Code
function scheme()
{
	var val=$('.Scheme_Description option:selected').text();
	 $.ajax({
            url: 'get_scheme.php?val=' + val,
            success: function(data) {
				//alert(data);
				var value=$.trim(data);//To Remove White Space in string
				var value1=data.substring(0,value.length-1);//To return part of the string
				var list= value1.split("|"); 
				for (var i=0; i<list.length; i++) {
					var arr_i= list[i].split("^");
					//alert(arr_i[6]);
					$(".Scheme_code").val(arr_i[0]);
					$(".Effective_from").val(arr_i[1]);
					$(".Effective_to").val(arr_i[2]);
				}

			}
        });
	
}

//Add Dynamic Quantity
function addquantity(defcur) {
	if($('#line_Product').val() == ''){
		$('#showerr').show();
		return false;
	}

	var rowcnt=	$('#quancnt').val();
	var rowcntcal;
	if(rowcnt == '') {
		rowcntcal		=	1;
	} else {
		rowcntcal		=	parseInt(rowcnt) + 1;
	}
	$('#quancnt').val(rowcntcal);
	
	var bank_name	=	$('#line_Product option:selected').text();
	
	$('#showerr').hide();
	$('#addquant').show();
	
	if(rowcnt == '') {var appenedItems = "<tr><td align='center'><input type='hidden' value='"+rowcntcal+"' readonly name='sno_"+rowcntcal+"' />"+rowcntcal+"</td><td align='center'><input type='hidden' value='"+bank_name+"' readonly name='Bank_Name_"+rowcntcal+"' />"+bank_name+"</td><td align='center'><input type='text' value='' name='Challan_Number_"+rowcntcal+"' /></td><td align='center'><input type='text' value='' autocomplete='off' class='datepicker' readonly name='Challan_Date_"+rowcntcal+"' /></td>
<td align='center'><input type='text' value='"+defcur+"' readonly name='Currency_"+rowcntcal+"' /></td><td align='center'><input type='text' value='' onblur='addamount(this.value);' id='Amount_Deposited_"+rowcntcal+"' name='Amount_Deposited_"+rowcntcal+"' /></td>
	</tr>";
		$(appenedItems).appendTo('#quantadd');
	} else {
	 $('#quantadd').append("<tr><td align='center'><input type='hidden' value='"+rowcntcal+"' readonly name='sno_"+rowcntcal+"' />"+rowcntcal+"</td>
	 <td align='center'><input type='hidden' value='"+bank_name+"' readonly name='Bank_Name_"+rowcntcal+"' />"+bank_name+"</td>
	 <td align='center'><input type='text' value='' name='Challan_Number_"+rowcntcal+"' /></td>
	 <td align='center'><input type='text' value='' autocomplete='off' class='datepicker' readonly name='Challan_Date_"+rowcntcal+"' /></td>
	 <td align='center'><input type='text' value='"+defcur+"' readonly name='Currency_"+rowcntcal+"' /></td>
	 <td align='center'><input type='text' value='' onblur='addamount(this.value);' name='Amount_Deposited_"+rowcntcal+"' id='Amount_Deposited_"+rowcntcal+"' /></td>
	 </tr>");
	}
	return false;
}




