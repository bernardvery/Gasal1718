<?php
$usm = new SimpleXMLElement('usm.xml',null,true);
?>
<table>
	<tr><td>Progdi</td><td>: <?=$usm->progdi?></td></tr>
	<tr><td>Fakultas</td><td>: <?=$usm->fakultas?></td></tr>
	<tr><td>Universitas</td><td>: <?=$usm->universitas?></td></tr>
	<tr><td>Alamat</td><td>: <?=$usm->alamat?></td></tr>
	<tr><td>Kota</td><td>: <?=$usm->kota?></td></tr>
	<tr><td>Propinsi</td><td>: <?=$usm->propinsi?></td></tr>
	<tr><td>Kodepos</td><td>: <?=$usm->kodepos?></td></tr>
	<tr><td>Telepon</td><td>: <?=$usm->telepon?></td></tr>
	<tr><td>Email</td><td>: <?=$usm->email?></td></tr>
</table>