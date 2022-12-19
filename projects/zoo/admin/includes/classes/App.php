<?php
class App{

    private $con;

    public function __construct($con){
		$this->con = $con;
	}

    public function count_adult_visitors(){
        $query=mysqli_query($this->con,"select sum(NoAdult) as totaladult from citizen where date(PostingDate)=CURDATE()");
        $result=mysqli_fetch_array($query);
        $count_today_visitors=$result['totaladult'];

        return $count_today_visitors;
    }

    public function count_total_visitors(){
        $query = mysqli_query($this->con, "SELECT sum(NoAdult) AS totaladult FROM citizen");
        $result = mysqli_fetch_array($query);
        $count_total_visitors = $result['totaladult'];

        return $count_total_visitors;
    }

    public function count_total_cvisitors(){
        $query=mysqli_query($this->con,"select sum(NoChildren) as totalchild from citizen ");
        $result=mysqli_fetch_array($query);
        $count_total_cvisitors=$result['totalchild'];
        return $count_total_cvisitors;
    }
}

?>