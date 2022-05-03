secrets = {
 "default" = {
   project_id = "secrets-manager-349008"
   secrets_id   = "qa1-vehicle-search"
   labels = {
     "name"="test"
   }
   member_id = "user:amolchh1994@gmail.com"
 },
 "qa1-vehicle-search" = {
   project_id = "secrets-manager-349008"
   secrets_id   = "qa2-vehicle-search"
   labels = {
    "env" = "qa1" ,
    "application" = "vehicle-search"
   }
   member_id = "user:atul.axe@gmail.com"
},
"qa3-vehicle-search" = {
   project_id = "secrets-manager-349008"
   secrets_id   = "qa3-vehicle-search"
   labels = {
    "env" = "qa3" ,
    "application" = "vehicle-search"
   }
   member_id = "user:amolchh1994@gmail.com"
},
"qa4-vehicle-search" = {
   project_id = "secrets-manager-349008"
   secrets_id   = "qa4-vehicle-search"
   labels = {
    "env" = "qa4" ,
    "application" = "vehicle-search"
   }
   member_id = "user:amolchh1994@Gmail.com"
},
"dev1-dividend-search" = {
   project_id = "amol-secreta-manager"
   secrets_id   = "dev1-dividend-search"
   labels = {
    "env" = "dev1" ,
    "application" = "dividend-search"
   }
   member_id = "user:amolchh1994@Gmail.com"
}
}


location = "us-east1"