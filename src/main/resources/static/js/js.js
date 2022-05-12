
	$(document).ready(function() {
	
		single_enable_disable();
		married_enable_disable();
		type_change();
	});
	function type_change() {
		$(".tax_box").hide();
		$("#" + $("#type").val() + "_container").show();
	}
	function single_enable_disable() {
		show_total();
	}
	function married_enable_disable() {
		show_total();
	}
	function show_total() {
		total_a = total_b = 0;
		if ($("#type").val() == "single") {
			total_a = isNaN(parseFloat($("#single_donation_a").val())) ? 0
					: parseFloat($("#single_donation_a").val());
			total_b = isNaN(parseFloat($("#single_donation_b").val())) ? 0
					: parseFloat($("#single_donation_b").val());
			total = parseFloat(total_a + total_b);
			$("#total_single, #total").text(parseFloat(total));
			
		} else if ($("#type").val() == "married") {
			total_a = isNaN(parseFloat($("#married_donation_a").val())) ? 0
					: parseFloat($("#married_donation_a").val());
			total_b = isNaN(parseFloat($("#married_donation_b").val())) ? 0
					: parseFloat($("#married_donation_b").val());

			total = parseFloat(total_a + total_b);
			$("#total_married, #total").text(parseFloat(total));
		}
	}
	
	function onPageLoad(){
		document.querySelector("#already_paid_year").value = "";
		document.querySelector("#already_paid_amount").value = "";
		document.querySelector("#already_paid_name").value = "";
		
	}
	

	function checkTest() {
		onPageLoad();
		if (document.getElementById("already_paid_no").checked) {
			document.getElementById("already_paid_name").disabled = true;
			document.getElementById("already_paid_amount").disabled = true;
			document.getElementById("already_paid_year").disabled = true;
		} else {
			document.getElementById("already_paid_name").disabled = false;
			document.getElementById("already_paid_amount").disabled = false;
			document.getElementById("already_paid_year").disabled = false;
		}
	}