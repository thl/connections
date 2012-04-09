/*

*/
function addAjaxMultiAssoc(type){
	var $=jQuery;
	// remove links from view
	$('a').each(function(){
	  var t=$(this).html();
	  $(this).parent().append(t);
	  $(this).remove();
	});
	// find the form button
	$('.button-to input[type=submit]').click(function(){
	  // shortcut
	  var el=$(this);
	  // grab the button's containing form
	  var f=el.parent().parent();
	  // options for ajaxSubmit - creates callback handler
	  var opts={
	    success : function(response) {
	      // container for newly added member ids
	      var object_ids=[]
	      // loop thru all checked checkboxes
	      $('input[type=checkbox]:checked', f).each(function(){
	        // grab the object id from the name of the checkbox (ex: entity[15])
	        var object_id=$(this).attr('name').match(/\d+/)[0];
	        // push the id into the array if it exists
	        if(object_id){
	          object_ids.push(object_id);
	        }
	      });
	      // close thickbox
	      self.parent.tb_remove();
	      // call the parent window complete callback and pass in the object_ids
	      self.parent.successfullyAddedAssociation(type, object_ids);
	    }
	  }
	  // submit the form
	  $(f).ajaxSubmit(opts);
	  return false;
	})
}