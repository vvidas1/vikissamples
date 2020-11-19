function Get-Vikistest {
  [CmdletBinding()]
   param (
    [string]$longstring
   )
$longstring = read-host -Prompt 'Enter you long string'

$arr = $longstring;$newarr="";$arr.ToCharArray() | % {$char=$_; if ($newarr -like "*$char*") {echo $_};$newarr += $_} | select-object -First 1
}
Get-Vikistest