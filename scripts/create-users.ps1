Import-Module ActiveDirectory

$Users = Import-Csv "C:\Scripts\users.csv"

$Users | ForEach-Object {

    $Username = $_.Username
    $Group = $_.Group

    $ExistingUser = Get-ADUser -Filter "SamAccountName -eq '$Username'" -ErrorAction SilentlyContinue
    

    if ($ExistingUser) {
        Write-Host "User $Username already exists"
    }
    else {
        New-ADUser `
            -Name "$($_.FirstName) $($_.LastName)" `
            -GivenName $_.FirstName `
            -Surname $_.LastName `
            -SamAccountName $Username `
            -UserPrincipalName "$Username@corp.local" `
            -Path "OU=$($_.Department),DC=corp,DC=local" `
            -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) `
            -Enabled $true

        Write-Host "User $Username created successfully"


    }

    $GroupMembers = Get-ADGroupMember -Identity $Group | Select-Object -ExpandProperty SamAccountName

    if ($GroupMembers -contains $Username) {
        Write-Host "User $Username already belongs to group $Group"
    }
    else {

        Add-ADGroupMember `
            -Identity $_.Group `
            -Members $Username

        Write-Host "User $Username added to group $($_.Group)"
    }

}
