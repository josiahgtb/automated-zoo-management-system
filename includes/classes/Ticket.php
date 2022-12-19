<?php

class Ticket{

    private $con;
    public $foreign_child;
    public $foreign_adult;
    public $normal_child;
    public $normal_adult;

    public function __construct($con){
		$this->con = $con;
	}

    public function set_tickettype(){
        $price_array = array();
        $sql = "SELECT * FROM ticket_type";
        $query = mysqli_query($this->con, $sql);
        while($row = mysqli_fetch_array($query))
        {
            array_push($price_array, $row['Price']);
        }
        $this->citizen_adult = $price_array[0];
        $this->citizen_child = $price_array[1];
        $this->foreign_adult = $price_array[2];
        $this->foreign_child = $price_array[3];
    }

    public function calc_citizen_amount($ticket_id){
        $sql = "SELECT * FROM citizen WHERE TicketID = $ticket_id";
        $query = mysqli_query($this->con, $sql);
        $row = mysqli_fetch_array($query);
        $num_adult = $row['NoAdult'];
        $adult_unit = $row['AdultUnitprice'];
        $ta = $num_adult * $adult_unit;
        $num_child = $row['NoChildren'];
        $child_unit = $row['ChildUnitprice'];
        $tc = $num_child * $child_unit;
        $total = $tc + $ta;
        $string = "
            <tr>
                <th >Number of Adult </th>
                <td style='padding-left: 10px'>{$num_adult}</td>
                <td style='padding-left: 10px'>&#8358;{$adult_unit}</td>
                <td style='padding-left: 10px'>&#8358;{$ta}</td>
            </tr>
            <tr>
                <th>Number of Chlidren </th>
                <td style='padding-left: 10px'>{$num_child}</td>
                <td style='padding-left: 10px'>&#8358;{$child_unit}</td>
                <td style='padding-left: 10px'>&#8358;{$tc}</td>
            </tr>
            <tr>
                <th style='text-align: center;color: red;font-size: 20px' colspan='3'>Total Ticket Price</th>
                <td style='padding-left: 10px;'><b>&#8358;{$total}</b></td>
            </tr>
        ";
        return $string;
    }

    public function calc_foreign_amount($ticket_id){
        $sql = "SELECT * FROM foreigner WHERE TicketID = $ticket_id";
        $query = mysqli_query($this->con, $sql);
        $row = mysqli_fetch_array($query);
        $num_adult = $row['NoAdult'];
        $adult_unit = $row['AdultUnitprice'];
        $ta = $num_adult * $adult_unit;
        $num_child = $row['NoChildren'];
        $child_unit = $row['ChildUnitprice'];
        $tc = $num_child * $child_unit;
        $total = $tc + $ta;
        $string = "
            <tr>
                <th >Number of Adult </th>
                <td style='padding-left: 10px'>{$num_adult}</td>
                <td style='padding-left: 10px'>&#8358;{$adult_unit}</td>
                <td style='padding-left: 10px'>&#8358;{$ta}</td>
            </tr>
            <tr>
                <th>Number of Chlidren </th>
                <td style='padding-left: 10px'>{$num_child}</td>
                <td style='padding-left: 10px'>&#8358;{$child_unit}</td>
                <td style='padding-left: 10px'>&#8358;{$tc}</td>
            </tr>
            <tr>
                <th style='text-align: center;color: red;font-size: 20px' colspan='3'>Total Ticket Price</th>
                <td style='padding-left: 10px;'><b>&#8358;{$total}</b></td>
            </tr>
        ";
        return $string;
    }
}

?>