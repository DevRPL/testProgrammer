<?php

function printA($x, $y) {
	for ($i=$x; $i <=$y; $i++) { 
		for ($j=$x; $j<= $i; $j++) { 
			echo "&nbsp;*";
		}
		echo "</br>";
	}
}

function printB($x, $y) {
	for ($i=$x; $i <=$y; $i++) { 
		for ($j=$y; $j>=$i; $j--) { 
			echo "&nbsp;" . $j;
		}
		echo "</br>";
	}
}

function printC($x, $y) {
	for ($i=$x; $i<= $y; $i++) { 
		for ($j=$x; $j<= $i * 2; $j += 2) { 
			echo "&nbsp;" . $j;
		}
		echo "</br>";
	}
}

function printD($x, $y) {
	for ($i=$x; $i<= $y; $i++) {
	    for ($j=$y; $j>= $i; $j--) {
		echo "&nbsp;" . $j;
	}
		echo "</br>";
	}
	for ($i=$x + 1; $i>= $x; $i--) {
		for ($j=$y; $j>= $i; $j--) {
		echo "&nbsp;" . $j;
	}
		echo "</br>";
	}
}

function printE($start, $end) {
	for ($i=$start; $i<=$end; $i++){
	    $num = 0;
	    for ($j = 1; $j<= $i; $j++){
	        if ($i % $j == 0){
	            $num += 1;
	        }
	    }
	    if ($num == 2){
	        echo "&nbsp;" . $i;
	    }             
	}    
}


echo "A) </br></br>" ;
echo "</br></br>" . printA(1, 5);

echo "B) </br></br>" ;
echo "</br></br>" . printB(1, 5);

echo "C) </br></br>" ;
echo "</br></br>" . printC(1, 5);

echo "D) </br></br>" ;
echo "</br></br>" . printD(1, 3);

echo "E) </br></br>" ;
echo "</br></br>" . printE(2, 11);



/* Output

A)

 *
 * *
 * * *
 * * * *
 * * * * *


B)

 5 4 3 2 1
 5 4 3 2
 5 4 3
 5 4
 5


C)

 1
 1 3
 1 3 5
 1 3 5 7
 1 3 5 7 9


D)

 3 2 1
 3 2
 3
 3 2
 3 2 1


E)

 2 3 5 7 11

*/