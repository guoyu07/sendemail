<p>
    <a href="{NEW_BLOCK_URI}" class="btn btn-success"><i class="fa fa-file-text"></i> Create a New Block</a>
</p>


<table class="table table-striped table-hover" width="100%"  id="myTable">
    <tbody>
        <tr>
			<th><input type="checkbox"  onClick="toggle(this)" value="CHECKBOX" name="ch"/><label for="CHECKBOX"></label></th>
            <th>{TITLE_SORT}</th>
            <th>{CONTENT}</th>
            <th>{ACTION}</th>
        </tr>
        <!-- BEGIN listrows -->
        <tr>
			<td><input type="checkbox" onchange="displayResult(this)" value="<? echo $rows['id']; ?>" name="chb[]"/><label for="CHECKBOX"></label></td>
            <td>{TITLE}</td>
            <td>{CONTENT}</td>
            <td class="admin-icons">{ACTION}</td>
        </tr>
        <!-- END listrows -->
    </tbody>
</table>


	<p id="demo"></p>
	<p id="demo2"></p>

<!-- 	<script type="text/javascript">
	var table = document.getElementById("myTable");
for (var i = 0, row; row = table.rows[i]; i++) {
   for (var j = 0, col; col = row.cells[j]; j++) {
	   document.getElementById("demo").innerHTML = 
			 j+" j";
   }  
}
</script> -->


	<script type="text/javascript">
		function Showindex(source) {

			checkboxes = document.getElementsByName('chb[]');
			for ( var i = 0, n = checkboxes.length; i < n; i++) {
				if (checkboxes[i].checked == true)
					document.getElementById("demo").innerHTML = 
							 " showindex";
		}
			
	</script>

	<script type="text/javascript">
		var element1;
		var arrchb=[];
		function displayResult(source) {

			checkboxes = document.getElementsByName('chb[]');
			for ( var i = 0, n = checkboxes.length; i < n; i++) {
				arrchb[i]=0;
				if (checkboxes[i].checked == true){
					arrchb[i]=1;
					
				}
				
			}
			var table = document.getElementById("myTable");
			var rowCount = table.rows.length;
			// document.getElementById("demo").innerHTML="Found " +rowCount + " yey";
		/*	var counter=0;
			for ( var i = 0, n = arrchb.length; i < n; i++)
				if(arrchb[i]==1)
					counter++;
			 document.getElementById("demo").innerHTML="Found " +counter + " yey";
			 
		*/
		
		
			
		for (var i = 0, row; row = table.rows[i]; i++) {			
		if(arrchb[i-1]==1){
		  
			   document.getElementById("demo").innerHTML = 
				   row.cells[1].innerHTML+" i";
			  var elem = document.getElementById("email");
              elem.value = row.cells[1].innerHTML;
		  
		}
		  
		}
		
		}
	</script>


	<script>
		function toggle(source) {
			checkboxes = document.getElementsByName('chb[]');
			for ( var i = 0, n = checkboxes.length; i < n; i++) {
				checkboxes[i].checked = source.checked;
			}
		}

		function SendEmail() {
					document.getElementById("demo").innerHTML = 
							 " showindex";
		}

		function myFunction() {

			var x = document.getElementById("myTable").rows.length;
			document.getElementById("demo").innerHTML = "Found " + x
					+ " tr elements in the table.";

			/* $('#save').click(function () {
			 $('#myTable').find('tr').each(function () {
			 var row = $(this);
			 if (row.find('input[type="checkbox"]').is(':checked') ) {
			 alert('You must fill the text area!');
			 document.getElementById("demo").innerHTML="Found " + " tr elements in the table.";
			 }
			 });
			 });

			
			 $('.do').on('click',function(){
			 document.getElementById("demo").innerHTML="Found " + $('input[type="checkbox"]:checked').length + " checkbox elements in the table.";
			 alert($('input[type="checkbox"]:checked').length);
			 }); */

		}
	</script>




<form action="http://localhost:7970/index.php?module=block&tab=list&authkey=2ffe20b33c15cbb522bb14814a49037b" method="post">
E-mail : <input type="text" name="email" id="email" ><br>
Subject: <input type="text" name="subject"><br>
<textarea  name="body" rows="4" cols="50">
</textarea>
<input type="submit" name="Send">
</form>


{EMPTY_MESSAGE}
<div class="align-center">{TOTAL_ROWS}<br />
    {PAGE_LABEL} {PAGES}<br />
    {LIMIT_LABEL} {LIMITS}</div>
<div class="align-right">{SEARCH}</div>
