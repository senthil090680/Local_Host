<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<script>
$(document).ready(function(){
 var counter = 2;
 $(".addButton").live("click", function () {
 if(counter>5){
            alert("Only 5 textboxes allow");
            return false;
 }   

 var newTextBoxDiv = $(document.createElement('div'))
      .attr("id", 'TextBoxDiv' + counter);

 newTextBoxDiv.html('<TABLE><TR><TD>' +
'<input type="text" name="textbox' + counter + 
'" id="textbox' + counter + '" value="" ></TD><TD><input type="text" name="textbox' + counter + 
'" id="textbox' + counter + '" value="" ></TD>&nbsp;<TD><a href="#" value="addButton" class="addButton">Add</a>&nbsp;<a href="#" value="removeButton" class="removeButton">Remove</a></TD></TR></TABLE>');

 newTextBoxDiv.appendTo("#TextBoxesGroup");
 counter++;
     });

     $(".removeButton").live("click", function () {
 if(counter==1){
          alert("No more textbox to remove");
          return false;
       }   

 counter--;

        $("#TextBoxDiv" + counter).remove();

     });

     $("#getButtonValue").click(function () {

 var msg = '';
 for(i=1; i<counter; i++){
      msg += "\n Textbox #" + i + " : " + $('#textbox' + i).val();
 }
       alert(msg);
     });
  });
  </script>
</head>

<body>

<div id='TextBoxesGroup'>
 <div id="TextBoxDiv1">
 <table>
 <tr>
  <td><input type='textbox' id='textbox1' value="type" ></td>
  <td><input type="text" name="textbox' + counter + '" id="textbox' + counter + '" value="" ></TD>&nbsp;
  <td><a href="#" value="addButton" class="addButton">Add</a>&nbsp;<a href="#" value="removeButton" class="removeButton">Remove</a></td>
 </tr>
 </div>
</div>
</body>
</html>
