<?
require('conn.php');
$stu_num = $_POST["stu_num"];

$sql="select 학번, 비밀번호, 이름, 주민등록번호, 학년, 주소, 전화번호, 학과코드, 학적상태 from 학생 where 학번 = $stu_num";
$result=oci_parse($conn, $sql);
$re=oci_execute($result);
$row = oci_fetch_array($result, OCI_NUM);

echo "<table border=1 border color='#0033FF' align=center>";
echo "<tr><th> 학번 <th> 비밀번호 <th> 이름 <th> 주민등록번호 <th> 학년 <th> 주소 <th> 전화번호 <th> 학과코드 <th> 학적상태 ";
echo("<tr><td>$row[0] <td> $row[1] <td> $row[2] <td> $row[3] <td> $row[4] <td> $row[5] <td> $row[6] <td> $row[7] <td> $row[8]<br>");
echo "</table>";
oci_free_statement($result);
oci_close($conn);
?>