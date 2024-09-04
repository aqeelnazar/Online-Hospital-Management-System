<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Supplier</title>
<link rel="stylesheet" href="style2.css">
</head>

<body>
	<h2 id="supText">Essential Partners in Healthcare Supply Chain</h2>
	<div class="container2">
		<div class="box">

			<!--Add suppliers button-->
			<button type="button" class="button1">
		        <img src="Image/img3.png" alt="" class="IconImage">
		        <span class="button__text"><a href="newSupplier" class="btn-success">Add Suppier</a></span>
		    </button>
		
		    <!--Export PDF-->
		    <button type="button" class="button2" onclick="exportPDF()">
		        <img src="Image/img2.png" alt="" class="IconImage">
		        <span class="button__text">Export PDF</span>
		    </button>

			<!-- Include the JavaScript function -->
<script>
    function exportPDF() 
    {
        // Send an AJAX request to the server to generate the PDF
        var xhr = new XMLHttpRequest();
        xhr.open('GET', '<%=request.getContextPath()%>/exportPDF', true);
        xhr.responseType = 'blob'; // Set the response type to 'blob'

        xhr.onload = function() 
        {
            if (xhr.status === 200) 
            {
                // Create a blob URL for the PDF
                var blob = new Blob([xhr.response], 
                {
                    type: 'application/pdf'
                });
                var url = window.URL.createObjectURL(blob);

                // Create a link element to trigger the download
                var a = document.createElement('a');
                a.href = url;
                a.download = 'supplier_list.pdf';
                document.body.appendChild(a);
                a.click();

                // Clean up
                window.URL.revokeObjectURL(url);
            }
            
            else 
            {
                console.error('Failed to generate PDF. Server returned status code: ' + xhr.status);
            }
        };

        xhr.onerror = function() 
        {
            console.error('Failed to send request to generate PDF.');
        };

        xhr.send();
    }
    
</script>

			<!-- Table that contains supplier data -->
			<table id="supplierTable">
				<!-- Table content goes here -->
			</table>
			<table>
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Address</th>
						<th>Email</th>
						<th>Contact</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="supplier" items="${listSupplier}">

						<tr>
							<td><c:out value="${supplier.id}" /></td>
							<td><c:out value="${supplier.name}" /></td>
							<td><c:out value="${supplier.address}" /></td>
							<td><c:out value="${supplier.email}" /></td>
							<td><c:out value="${supplier.phone}" /></td>
							<td><a href="editSupplier?id=<c:out value='${supplier.id}' />"
								class="btn_E">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteSupplier?id=<c:out value='${supplier.id}' />" class="btn_D" onclick="return confirmDelete(${supplier.id})">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
		<script>
	function confirmDelete(id) {
        var result = confirm("Are you sure you want to delete this supplier?");
        if (result) {
            // Proceed with deletion
            window.location.href = "deletesupplier?id=" + id;
            return true; // Allow default behavior (deletion)
        } else {
            // Cancel deletion
            return false; // Prevent default behavior (deletion)
        }
    }
	</script>
</body>
</html>