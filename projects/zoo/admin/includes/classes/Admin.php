<?php
class Admin{

    private $admin;
    private $con;
    public $fname;
    public $lname;
    public $email;
    public $full_name;
    public $staff_id;
    public $user_name;
    public $phone_number;
    public $photo;
    public $id;

	public function __construct($con, $admin_id){
		$this->con = $con;
		$admin_details_query = mysqli_query($con, "SELECT * FROM admin WHERE ID ='$admin_id'");
		$this->admin = mysqli_fetch_array($admin_details_query);
        $this->fname = $this->admin['FirstName'];
        $this->user_name = $this->admin['UserName'];
        $this->lname = $this->admin['LastName'];
        $this->staff_id = $this->admin['Staffid'];
        $this->photo = $this->admin['Photo'];
        $this->phone_number = $this->admin['MobileNumber'];
        $this->email = $this->admin['Email'];
        $this->full_name = $this->admin['FirstName']." ".$this->admin['LastName'];
        $this->id = $this->admin['ID'];
	}
}

?>