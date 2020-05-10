<?php
session_start();
include("db_connect.php");
include("db_functions.php");
$quests = get_quests();
$taken_quests = get_takenquests();
?>

<html lang="en">

<head>
  <title>Tasklist</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>

    <h1> Welcome <?php echo "userid:".$_SESSION['userid']." " . $_SESSION['username'] ; ?></h1>
    <h2>Quest Board</h2>
              
        
    <table style="width:100%">
      <thead>
        <tr>
          <th>Issued By</th>
          <th>Location</th>
          <th>Type</th>
          <th>Description</th>
          <th>Reward</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($quests as $quest) : ?>
        <tr>
          <td><?php echo $quest['giver']; ?></td>
          <td><?php echo $quest['location']; ?></td>
	  <td><?php echo $quest['type']; ?></td>
	  <td><?php echo $quest['q_desc']; ?></td>
	  <td><?php echo $quest['reward']; ?></td>
          <td><form action="index.php" method="post">
                      <input type="hidden" name="action" value="take_quest">
                      <input type="hidden" name="id" value="<?php echo $quest['id']; ?>">
                      <input type="submit"  value="take">
              </form>
          </td>
  
        </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
    <form action="index.php" method="post">
    <input type="hidden" name="action" value="generate_quest">
    <p><input type="submit"  value="Generate Quest"></p>
    </form>
   

    <h2>Taken Quest</h2>
              
    <div >          
    <table >
      <thead>
        <tr>
          <th>Issued by</th>
          <th>Location</th>
          <th>Type</th>
          <th>Description</th>
          <th>Reward</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($taken_quests as $t_quest) : ?>
        <tr>
          <td><?php echo $t_quest['giver']; ?></td>
          <td><?php echo $t_quest['location']; ?></td>
	  <td><?php echo $t_quest['type']; ?></td>
	  <td><?php echo $t_quest['q_desc']; ?></td>
	  <td><?php echo $t_quest['reward']; ?></td>
          <td><form action="index.php" method="post">
                      <input type="hidden" name="action" value="complete_quest">
                      <input type="hidden" name="id" value="<?php echo $t_quest['id']; ?>">
                      <input type="submit" value="complete">
              </form>
          </td>
  
        </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
    <h3><a href=".">Logout</a></h3>

</body>
</html>
