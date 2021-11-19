#Set Parameters
$AdminCenterURL="https://m365x1234-admin.sharepoint.com"
$SiteUrl = "https://m365x1234.sharepoint.com/sites/operations"
$GroupName = "o365-gruppenname" #bestehende Gruppe eintragen, mit der die Teamsite verbunden werden soll
$GroupAlias = "o365-gruppenname"
 
#Connect to SharePoint Online
Connect-SPOService -Url $AdminCenterURL -credential (Get-Credential)
 
#Connect Team Site to Group
Set-SPOSiteOffice365Group -Site $SiteURL -DisplayName $GroupName -Alias $GroupAlias
