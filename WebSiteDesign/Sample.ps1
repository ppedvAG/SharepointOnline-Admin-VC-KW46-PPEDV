$site_script = '   
 {
     "$schema": "schema.json",
         "actions": [
             {
                 "verb": "createSPList",
                 "listName": "Projektdaten",
                 "templateType": 101,
                 "subactions": [
                     {
                         "verb": "setDescription",
                         "description": "Projektdaten"
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "Text",
                         "displayName": "Projektbeschreibung",
                         "isRequired": false,
                         "addToDefaultView": true
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "Number",
                         "displayName": "Anzahl",
                         "addToDefaultView": true,
                         "isRequired": true
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "User",
                         "displayName": "Projektleiter",
                         "addToDefaultView": true,
                         "isRequired": true
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "Note",
                         "displayName": "Meeting Notes",
                         "isRequired": false
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "text",
                         "displayName": "Abteilung",
                         "isRequired": false
                     }
                 ]
             }
         ],
             "bindata": { },
     "version": 1
 }
 '

 ##
 Add-SPOSiteScript -Title "testlauf" -Content $site_script -Description "Creates documentlibrary with custom columns"

 ## ID aus Shell eintragen
 Add-SPOSiteDesign -Title "Testlauf für Bib mit Spalte" -WebTemplate "64" -SiteScripts "5ab105ef-c5e8-4a68-999c-aefebf585d39" -Description "Tracks key customer data in a list"

 ## neue Teamsite erstellen und bei Design im Dropdown Template auswählen Wert "64" ist Teamsite modern; Wert "68" ist Kommunikationsite für alle anderen Wert "1 eintragen"

 #siehe auch  https://docs.microsoft.com/de-de/sharepoint/dev/declarative-customization/get-started-create-site-design#use-the-new-site-design 