<?php
class DBController {
	private $host = "localhost";
	private $user = "root";
	private $password = "";
	private $database = "lp2flix";
	private $conn;
	
	function __construct() {
		$this->conn = $this->connectDB();
	}
	
	function connectDB() {
		$conn = mysqli_connect($this->host,$this->user,$this->password,$this->database);
		return $conn;
	}
	
	function selectDB($query) {
		$result = mysqli_query($this->conn,$query);
		while($row=mysqli_fetch_assoc($result)) {
			$resultset[] = $row;
		}		
		if(!empty($resultset))
			return $resultset;
	}
	
	function numRows($query) {
		$result  = mysqli_query($this->conn,$query);
		$rowcount = mysqli_num_rows($result);
		return $rowcount;	
	}
	
	function insertDB($query) {
            if (mysqli_query($this->conn, $query)) 
                $flag = true;
            else 
                $flag = false;
            return $flag;
	}
	function updateDB($query) {
		if (mysqli_query($this->conn, $query)) {
        echo "Registro atualizado com sucesso";
        } else {
           echo "Error: " . $query . "<br>" . mysqli_error($this->conn);
     }
	}
        
        /*
         function insertDB($query) {
		if (mysqli_query($this->conn, $query)) {
        echo "Novo registro criado com sucesso";
        } else {
           echo "Error: " . $query . "<br>" . mysqli_error($this->conn);
    }
	}
         */
	
	function closeDB() {
		mysqli_close($this->conn);
	}	
 
	
}

?>