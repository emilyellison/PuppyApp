$(document).ready( function() {
	
	$("#puppy_playtime").change(function() {
		 $("#label_puppy_playtime").toggleClass("btn-primary", this.checked)
	}).change();

});