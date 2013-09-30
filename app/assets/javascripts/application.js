function remove_fields (link){
	alert("assadsdasdasdassda");
	$(link).previous("input[type=hidden]").value="1";
	$(link).up(".fields").hide();
	alert("assadsdasdas");
}
function add_fields(link, association, content){
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_" + association, "g");
	$(link).up().insert({
		before: content.replace(regexp, new_id)
	});

}