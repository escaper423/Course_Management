<?
require('conn.php');
$sql="select * from ������";
$result=oci_parse($conn, $sql);
$re=oci_execute($result);
echo "<h2>���� ����</h2><br><br>";
echo "<table border=1 border color='#0033FF' align=center>";
echo "<tr><th> �г�<th> �������ȣ <th> ������� <th> �й� <th> ���� <th> �а��ڵ� <th> �ð� <th> �⵵ <th> �б� <th> ���� <th> �����̸� <th> �ǹ���ȣ <th> ���ǽǹ�ȣ";
while(($row = oci_fetch_array($result, OCI_NUM))){
echo("<tr><td>$row[0] <td> $row[1] <td> $row[2] <td> $row[3] <td> $row[4] <td> $row[5] <td> $row[6] <td> $row[7] <td> $row[8] <td> $row[9] <td> $row[10] <td> $row[11] <td> $row[12]<br>");
}
echo "</table><br>";
oci_close($conn);
?>