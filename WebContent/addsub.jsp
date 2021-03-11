<html>
<head>
<script type="text/javascript">
        var currentValue = 0;
        var add = function(valueToAdd){
            alert("adding: " + valueToAdd);
            currentValue += valueToAdd;
            document.getElementById('number').innerHTML = currentValue;
        };
    </script>

</head>
<center>
	<body>
		<div id="text">
			Medicine id 1:<span id="number">0</span>
			<div>
				<a href="javascript:add price(260)">Plus </a> <a
					href="javascript:add price(-260)">Minus </a>
	</body>
</center>
</html>
