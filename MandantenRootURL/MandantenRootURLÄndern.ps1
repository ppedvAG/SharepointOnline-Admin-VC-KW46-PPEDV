Connect-SPOService -Url https://m365x396008-admin.sharepoint.com
Invoke-SPOSiteSwap -SourceUrl https://m365x396008.sharepoint.com/sites/alex-portal -TargetUrl https://m365x396008.sharepoint.com -ArchiveUrl https://m365x396008.sharepoint.com/sites/oldPortal
#-SourceURL = die Site die es werden soll
#-TargelURL = unter der URL solls später erreichbar sein
#-ArchivURL = alte Seite
# alle Seiten müssen bereits bestehen!...ausser Archivseite 