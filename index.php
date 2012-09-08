<?php
include('functions.php');

if ( $_SERVER['REQUEST_METHOD'] == 'POST' ) {

	echo '<pre>';
	print_r($_POST);
	echo '</pre>';
}

// So here I would like to save each weeks form in a results table

?>
<!doctype html>
<head>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	<title></title>
	<link rel='stylesheet' type='text/css' href='css/style.css' />
	<link rel='stylesheet' type='text/css' href='css/print.css' media="print" />
	<script type='text/javascript' src='js/jquery-1.3.2.min.js'></script>
	<script type='text/javascript' src='js/removeline.js'></script>

</head>
<body>
	<header>
		RESULT FORM
	</header>
	<form action="" method="post" accept-charset="utf-8">
	<div id="page-wrap">
		<div id="gameinfo">
			<table id="items">
				<tr>
					<th>Team Sheet For</th>
					<td colspan="4"><?php echo $mysettings['team']; ?></td>
				</tr>
				<tr>
					<th>Date</th>
					<th>Cup or League</th>
					<th>Division</th>
					<th>Age</th>
				</tr>
				<tr>
					<td><input class="wide" name="date" type="text" value="<?php echo date('d/m/Y'); ?>"></td>
					<td>
						<select name="leaguecup">
							<option name="League" value="league">League</option>
							<option name="Cup" value="cup">Cup</option>
						</select>
					</td>
					<td>
						<input class="wide" name="league" type="text" value="<?php echo $mysettings['league']; ?>">
					</td>
					<td>
						<input class="wide" name="agegroup" type="text" value="<?php echo $mysettings['agegroup']; ?>">
					</td>

				</tr>
			</table>
		</div>
		<div id="matchinfo">
			<table id="items">
				<tr>
					<th width="100">Venue</th>
					<th width="600">Team</th>
					<th width="100">Score</th>
				</tr>
				<tr>
					<th>Home</th>
					<td>
						<select name="hometeam">
							<?php foreach($teams as $age_key => $age_value) :?>
								<option value="<?php echo $age_key ?>"><?php echo $age_value ?></option>";
							<?php endforeach;?>
						</select>
					</td>
					<td>
						<input name="homescore" type="text" value=""></td>
				</tr>
				<tr>
					<th>Away</th>
					<td>
						<select name="awayteam">
							<?php foreach($teams as $age_key => $age_value) :?>
								<option value="<?php echo $age_key ?>"><?php echo $age_value ?></option>";
							<?php endforeach;?>
						</select>
					</td>
					<td>
						<input name="awayscore" type="text" value=""></td>
				</tr>
			</table>
		</div>
		<div id="refinfo">
			<table id="items">
				<tr>
					<th width="200">Referees Name</th>
					<td>
						<input class="wide" name="refsname" type="text" value="<?php echo $mysettings['ref']; ?>"></td>
					<th width="100">Mark <br />
						(out of 100)</th>
					<td width="100">
						<input name="refsscore" type="text" value=""></td>
				</tr>
			</table>
		</div>
		<table id="items">
			<tr>
				<th></th>
				<th>Players Name</th>
				<th>Shirt No.</th>
				<th>Date of Birth</th>
				<th>Reg No.</th>
				<th>Goals Scored</th>
			</tr>
			<?php
				// Heres where I need to loop through my players depending on what manager I am!
			foreach($players as $key => $arr):?>
				<tr class="item-row">
					<td><div class="delete-wpr"><a class="delete" href="javascript:;" title="Remove row">X</a></div></td>
					<?php foreach($arr as $field => $value):?>

						<td class="item-name"><input class="wide" name="<?php echo "player[$key][$field]"; ?>" type="text" value="<?php echo $value; ?>"></td>

					<?php endforeach;?>
				</tr>
			<?php endforeach;?>
		</table>
		<div id="managerinfo">
			<table id="items">
				<tr>
					<th width="33%">Club Official / Manager</th>
					<th width="33%">Club</th>
					<th width="33%">Date</th>
				</tr>
				<tr>
					<td><input class="wide" name="manager" type="text" value="<?php echo $mysettings['manager']; ?>"></td>
					<td><input class="wide" name="team" type="text" value="<?php echo $mysettings['team']; ?>"></td>
					<td><input class="wide" name="sdate" type="text" value="<?php echo date('d/m/Y'); ?>"></td>
				</tr>
			</table>
		</div>
		<div style="height: 20px;"></div>
		<input type="submit" name="submitform" value="submit">
		<?php if(isset($status)) echo $status; ?>
	</div>
	</form>
</body>
</html>
