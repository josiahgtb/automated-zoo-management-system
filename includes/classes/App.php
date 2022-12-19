<?php
class App{

    private $con;

    public function __construct($con){
		$this->con = $con;
	}

    public function show_animals(){
        $string = "";
        $sql = "SELECT * FROM animal WHERE Status = 'Live' ORDER BY RAND() LIMIT 4";
        $query = mysqli_query($this->con, $sql);
        while($row = mysqli_fetch_array($query)){
            $id = $row['ID'];
            $image = $row['AnimalImage'];
            $name = $row['AnimalName'];
            $breed = $row['Breed'];
            $description = substr($row['Description'],0,100);
            
            $string .= "
            <div class='col-md-3 col-sm-6 welcome-grid' style='margin-bottom: 30px;'>
                <div class='box-content'>
                    <a href='details.php?anid={$id}'>
                        <img src='admin/images/{$image}' width='220' height='200' class='image-responsive'>   
                        <h3>{$name} <span class='price pull-right'></span></h3>
                        <strong>Breed: {$breed}</strong>  
                    </a>				
                </div>
            </div>
            ";
        }
        return $string;
    }

    public function show_animals_index(){
        $string = "";
        $sql = "SELECT * FROM animal WHERE Status = 'Live' ORDER BY RAND() LIMIT 4";
        $query = mysqli_query($this->con, $sql);
        while($row = mysqli_fetch_array($query)){
            $id = $row['ID'];
            $image = $row['AnimalImage'];
            $name = $row['AnimalName'];
            $breed = $row['Breed'];
            $description = substr($row['Description'],0,100);
            
            $string .= "
            <div class='col-md-3 col-sm-6 welcome-grid' style='margin-bottom: 30px;'>
                <div class='box-content'>
                    <a href='details.php?anid={$id}'>
                        <img src='admin/images/{$image}' width='220' height='200' class='image-responsive'>   
                        <h3>&nbsp;&nbsp;{$name} <span class='price pull-right'></span></h3>
                        <strong>&nbsp;&nbsp;Breed: {$breed}</strong>  
                        <p>{$description}....</p>  
                    </a>				
                </div>
            </div>
            ";
        }
        return $string;
    }

    public function show_animals_details(){
        $string = "";
        $sql = "SELECT * FROM animal WHERE ID = 'anid'";
        $query = mysqli_query($this->con, $sql);
        while($row = mysqli_fetch_array($query)){
            $id = $row['ID'];
            $image = $row['AnimalImage'];
            $name = $row['AnimalName'];
            $breed = $row['Breed'];
            $description = substr($row['Description']);
            
            $string .= "
            <div class='col-md-3' style='margin-bottom: 30px;'>
                <div class='box-content'>
                    <a href='details.php?anid={$id}'>
                        <img src='admin/images/{$image}' width='220' height='200'>   
                        <h3>{$name} <span class='price pull-right'></span></h3>
                        <strong>Breed {$breed}</strong>  
                        <p>{$description}</p>  
                    </a>                
                </div>
            </div>
            ";
        }
        return $string;
    }

    public function print_ticket_slip_citizen($ticket_id){
        $sql = "SELECT * FROM billing AS t INNER JOIN citizen AS f ON t.TicketID = f.TicketID WHERE t.TicketID = $ticket_id";
        $query = mysqli_query($this->con, $sql);
        $row = mysqli_fetch_array($query);
        $amount = ($row['AdultUnitprice'] * $row['NoAdult']) + ($row['ChildUnitprice'] * $row['NoChildren']);
        $string = "
        <tr>
        <td>Ticket Id</td>
        <td>{$ticket_id}</td>
        </tr>
        <tr>
        <td>FirstName</td>
        <td>{$row['FirstName']}</td>
        </tr>
        <tr>
            <td>LastName</td>
            <td>{$row['LastName']}</td>
        </tr>
        <tr>
            <td>Phone</td>
            <td>{$row['Phone']}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>{$row['Email']}</td>
        </tr>
        <tr>
            <td>State</td>
            <td>{$row['State']}</td>
        </tr>
        <tr>
            <td>City</td>
            <td>{$row['City']}</td>
        </tr>
        <tr>
            <td>Number of Child</td>
            <td>{$row['NoChildren']}</td>
        </tr>
        <tr>
            <td>Number of Adult</td>
            <td>{$row['NoAdult']}</td>
        </tr>
        <tr>
            <td>Amount</td>
            <td>{$amount}</td>
        </tr>
        ";

        return $string;
    }

    public function print_ticket_slip_foreign($ticket_id){
        $sql = "SELECT * FROM billing AS t INNER JOIN foreigner AS f ON t.TicketID = f.TicketID WHERE t.TicketID = $ticket_id";
        $query = mysqli_query($this->con, $sql);
        $row = mysqli_fetch_array($query);
        $amount = ($row['AdultUnitprice'] * $row['NoAdult']) + ($row['ChildUnitprice'] * $row['NoChildren']);
        $string = "
        <tr>
        <td>Ticket Id</td>
        <td>{$ticket_id}</td>
        </tr>
        <tr>
        <td>FirstName</td>
        <td>{$row['FirstName']}</td>
        </tr>
        <tr>
            <td>LastName</td>
            <td>{$row['LastName']}</td>
        </tr>
        <tr>
            <td>Phone</td>
            <td>{$row['Phone']}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>{$row['Email']}</td>
        </tr>
        <tr>
            <td>State</td>
            <td>{$row['State']}</td>
        </tr>
        <tr>
            <td>City</td>
            <td>{$row['City']}</td>
        </tr>
        <tr>
            <td>Number of Child</td>
            <td>{$row['NoChildren']}</td>
        </tr>
        <tr>
            <td>Number of Adult</td>
            <td>{$row['NoAdult']}</td>
        </tr>
        <tr>
            <td>Amount</td>
            <td>{$amount}</td>
        </tr>
        ";

        return $string;
    }
}
?>