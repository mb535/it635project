<?php
function auth_user($user,$pass) {
    	global $db;
    	$query = "SELECT * FROM users where username='$user' and password='$pass'";
    //$statement = $db->prepare($query);
    	$statement = mysqli_query($db, $query);
    //$statement->execute();
    //$users = $statement->fetchAll();
    	$userid = mysqli_fetch_assoc($statement);
    	$_SESSION['userid'] = $userid['userid'];
	//echo $_SESSION['userid'];
	
    //return true;    
}

function get_users() {
    global $db;
    $query = 'SELECT * FROM users';
    $statement = $db->prepare($query);
    $statement->execute();
    $users = $statement->fetchAll();
    
    return $users;    
}
function get_quests(){
    global $db;
    $query ='SELECT * FROM allquests Where istaken=0';
    $statement = $db->prepare($query);
    $statement->execute();
    $quests = $statement->fetchAll();
    return $quests; 
}

function take_quest($quest_id) {
  	global $db;
	$ownerid =$_SESSION['userid'];
  	$query = "UPDATE allquests
  			      SET istaken = 1, q_ownerid= :userid
              WHERE id = :id";
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $quest_id);
    $statement->bindValue(':userid', $ownerid);
    $statement->execute();
    $statement->closeCursor();
}
function complete_quest($quest_id) {
  	global $db;
  	$query = "delete from allquests where id = :id";
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $quest_id);
    $statement->execute();
    $statement->closeCursor();
}
function get_takenquests(){
    global $db;
    $ownerid =$_SESSION['userid'];
    $query ="SELECT * FROM allquests Where istaken=1 and q_ownerid= :userid";
    $statement = $db->prepare($query);
    $statement->bindValue(':userid', $ownerid);
    $statement->execute();
    $quests = $statement->fetchAll();
    return $quests; 
}
function get_qgiver(){
    global $db;
    $query ='SELECT * FROM questgiver order by rand() limit 1';
    $statement = $db->prepare($query);
    $statement->execute();
    $questgiver = $statement->fetch();
    $statement->closeCursor();

    $giver = $questgiver['name'];
    return $giver;
}
function get_qdesc(){
    global $db;
    $query ='SELECT * FROM questdesc order by rand() limit 1';
    $statement = $db->prepare($query);
    $statement->execute();
    $q_typedesc = $statement->fetch();
    $statement->closeCursor();
    return $q_typedesc; 
}
function get_qlocation(){
    global $db;
    $query ='SELECT * FROM questlocation order by rand() limit 1';
    $statement = $db->prepare($query);
    $statement->execute();
    $questlocation = $statement->fetch();
    $statement->closeCursor();

    $location = $questlocation['location'];
    return $location;
}
function get_qrewards(){
    global $db;
    $query ='SELECT * FROM questrewards order by rand() limit 1';
    $statement = $db->prepare($query);
    $statement->execute();
    $q_rewards = $statement->fetch();
    $statement->closeCursor();
    return $q_rewards; 
}
function add_quest($q_giver,$q_location,$q_type,$q_desc,$q_reward){
    global $db;
    $query ='insert into allquests(giver,location,type,q_desc,reward,istaken) values(:giver, :location, :type, :desc, :reward, 0)';
    	$statement = $db->prepare($query);
    	$statement->bindValue(":giver", $q_giver);
    	$statement->bindValue(":location", $q_location);
    	$statement->bindValue(":type", $q_type);
	$statement->bindValue(":desc", $q_desc);
	$statement->bindValue(":reward", $q_reward);
	$statement->execute();
	$statement->closeCursor();
}





?>
