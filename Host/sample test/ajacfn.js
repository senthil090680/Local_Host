// JavaScript Document
$(function(){
$('tbody').on('click','td',function(){
   displayform($(this));							
							
   });
})

function displayform(cell){
	
	var column = cell.attr('class'),
	id = cell.closest('tr').attr('id'),
	cellwidth= cell.css('width'),
    prevContent = cell.text(),
	
	form = '<form action="javascript:this.preventDefault"><input type="text" name="newValue" size="4" value="'+prevContent+'"/><input type="hidden" name="id" value="'+id+'"/>'+'<input type="hidden" name="column" value="'+column+'"></form>';
	cell.html(form).find('input[type=text]')
	   .focus()
	   .css('width',cellwidth);
	   
	   cell.on('click', function(){return false();});
	   
	   cell.on('keydown',function(e){
		  if(e.keycode == 13){
			  changefield(cell,prevContent);
			  
			  }						  
		 	else if(e.keycode == 27){	
			  cell.text(prevContent);
			  cell.off('click');
			 
			}				  
								  
});
					  
}
function changefield(cell,prevContent){
	cell.off('keydown');
	var url ='ajax.php';
	input =cell.find('form').serialize();
	
	$.getJSON(url+input,function(data){
		if(data.success){
		 cell.html(data.value);	
		}
	else{
		alert("Prb");
		cell.html(prevContent);
	}
	cell.off('click');						
});
	
}