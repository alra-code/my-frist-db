#Pegar o diretorio atual 

$scriptDireectory = Split-Path $MyInvocation.MyCommand.Definition -Parent .\assets

#Arquivo saída com todos sql

$outputfile = Join-Path -Path $scriptDireectory -ChildPath
"migration.sql"

#Verifica se arquivo já existe, se existir deleta

if (Test-Path $outputfile) {
    Remove-Item $outputfile 
}

#Pega conteudo dos arquivos
$sqlFile = Get-ChildItem -Path $scriptDireectory -Filter *.sql
-File | Sort-Object Name  

#Concatenar aquivos 

foreach($file in $sqlFile){
    Get-Content $file.FullName | Out-File -Append -FilePath $outputfile
    "GO" | Out-File -Append -FilePath $outputfile
}

Write-Host "Todos os arquivos foram combinados em $outputfile"
