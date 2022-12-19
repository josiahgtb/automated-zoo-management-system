<?php
class Animal{

    private $animal;
    private $con;
    public $name;
    public $category;
    public $cage_number;
    public $feed_number;
    public $breed;
    public $image;
    public $description;
    public $status;
    public $date_of_birth;
    public $creation_date;
    public $last_update;

	public function __construct($con, $animal_id){
		$this->con = $con;
		$animal_details_query = mysqli_query($con, "SELECT * FROM animal WHERE ID ='$animal_id'");
		$this->animal = mysqli_fetch_array($animal_details_query);
        $this->name = $this->animal['AnimalName'];
        $this->category = $this->animal['AnimalCategory'];
        $this->cage_number = $this->animal['CageNumber'];
        $this->feed_number = $this->animal['FeedNumber'];
        $this->breed = $this->animal['Breed'];
        $this->image = $this->animal['AnimalImage'];
        $this->description = $this->animal['Description'];
        $this->status = $this->animal['Status'];
        $this->date_of_birth = $this->animal['Dateofbirth'];
        $this->creation_date = $this->animal['CreationDate'];
        $this->last_update = $this->animal['LastUpdate'];
	}


}
?>