<?php
//session_unset();
session_start();

include("db_connect.php");
include("db_functions.php");

$action = filter_input(INPUT_POST, "action");
//$usern = filter_input(INPUT_POST, 'username');
//echo $usern;
//echo $action;

if ($action == 'auth_login1'){
    $user = filter_input(INPUT_POST, 'username');
    $pass = filter_input(INPUT_POST, 'password');
    echo $user;
    echo $pass;
    auth_user($user,$pass);
    header("Refresh:0; url=questlist.php");

}
if ($action == 'auth_login'){
   $users = get_users();
   //print_r($users);
   $_SESSION['username'] = filter_input(INPUT_POST, 'username');
   $_SESSION['password'] = filter_input(INPUT_POST, 'password');
   foreach ($users as $user){
      if ($user['username'] == $_SESSION['username'] && $user['password'] == $_SESSION['password']){
		$_SESSION['userid'] = $user['userid'];	
		//$quests = get_quests();	
		//include('questlist.php');}
		header("Refresh:0; url=questlist.php");}
		//header("Location: ?action=questlist");}   
   }

}
if ($action == 'questlist') {
    $quests = get_quests();
    //$completed_tasks = get_completed_tasks($_SESSION['email']);
    //$_SESSION['fname'] = get_fname($_SESSION['email']);
	 // $_SESSION['lname'] = get_lname($_SESSION['email']);
    include('questlist.php');
} 

if($action== 'take_quest'){
	$quest_id = filter_input(INPUT_POST, 'id');
	take_quest($quest_id);
	header("Refresh:0; url=questlist.php");
}
if($action== 'complete_quest'){
	$quest_id = filter_input(INPUT_POST, 'id');
	//echo $quest_id;
	complete_quest($quest_id);
	header("Refresh:0; url=questlist.php");
}
if($action== 'generate_quest'){
	//eader("Refresh:0; url=questlist.php");
	$q_giver = get_qgiver();
	$q_location = get_qlocation();
	$q_typedesc = get_qdesc();
	$q_type = $q_typedesc['type'];
	$q_desc = $q_typedesc['q_desc'];
	$q_rewards = get_qrewards();
	$q_item = $q_rewards['type'];
	$q_amt = $q_rewards['amount'];
	$q_reward = "$q_amt $q_item";
	//echo $q_reward;
	//echo "<br>".$q_giver; echo "<br>".$q_location;echo "<br>".$q_type; echo "<br>".$q_desc;
	//echo "<br>"."quest generated";
	add_quest($q_giver,$q_location,$q_type,$q_desc,$q_reward);
	header("Refresh:0; url=questlist.php");
}

    //header("Refresh:0; url=questlist.php");
    
?>
