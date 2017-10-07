<?php
$usms = new SimpleXMLElement('usm2.xml',null,true);
?>
<table>
<?php
	foreach($usms as $usm)
	{
?>
	<tr><td>Progdi</td><td>: <?=$usm->nama?></td></tr>
	<tr><td>Fakultas</td><td>: <?=$usm->fakultas?></td></tr>
	<tr><td>Universitas</td><td>: <?=$usm->universitas?></td></tr>
	<tr><td>Alamat</td><td>: <?=$usm->alamat?></td></tr>
	<tr><td>Kota</td><td>: <?=$usm->kota?></td></tr>
	<tr><td>Propinsi</td><td>: <?=$usm->propinsi?></td></tr>
	<tr><td>Kodepos</td><td>: <?=$usm->kodepos?></td></tr>
	<tr><td>Telepon</td><td>: <?=$usm->telepon?></td></tr>
	<tr><td>Email</td><td>: <?=$usm->email?></td></tr>
	<tr><td colspan="2">&nbsp;</td></tr>
<?php
	}
?>
</table>