___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Booster Box - UTMs Storing",
  "categories": ["AFFILIATE_MARKETING", "ADVERTISING"],
  "brand": {
    "id": "booster_box",
    "displayName": "BoosterBox"
  },
  "description": "This Custom Template is created to helps you store UTMs values in the Local Storage of the browser and use them as you wish. Made by Simone Dal Pino for Booster Box.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "Source",
    "displayName": "Source",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "Medium",
    "displayName": "Medium",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "Campaign",
    "displayName": "Campaign",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

//Invoke the localStorage

const localStorage = require('localStorage');

//Assign the value of UI fields 

const source = data.Source;
const medium = data.Medium;
const campaign = data.Campaign;

//Set the values in the localStorage (this keys must be first validated in the permission section)

 localStorage.setItem('source', source);
 localStorage.setItem('medium', medium);
 localStorage.setItem('campaign', campaign);

data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_local_storage",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "source"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "medium"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "campaign"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Test1
  code: "// Enter your template code here.\n\nconst wind = require('localStorage');\n\
    //Problema on Data Object\nvar input = data.array;\n\nlet i = 0;\nconst source\
    \ = data.Source;\nconst medium = data.Medium;\nconst campaign = data.Campaign;\n\
    \nwhile (i <= data.length) {\n  if(i==0){wind.setItem('source', source);  wind.console.log(source.toString);}\n\
    \  if(i==1){wind.setItem('source', medium);}\n  if(i==2){wind.setItem('source',\
    \ campaign);}\n \n}\n"
- name: Test2
  code: "// Enter your template code here.\n\nconst localStorage = require('localStorage');\n\
    //Problema on Data Object\nvar input = data.array;\nconst source = data.Source;\n\
    const medium = data.Medium;\nconst campaign = data.Campaign;\nif (data.use_array)\
    \ {\n \n  for (var i = 0; i < data.list.length; i++) {\n    if(i==0){localStorage.setItem('source',\
    \ source);  localStorage.console.log(source.toString);}\n  if(i==1){localStorage.setItem('source',\
    \ medium);}\n  if(i==2){localStorage.setItem('source', campaign);}\n  }\n}\n\n\
    \n"


___NOTES___

Created on 25/1/2023, 17:41:42

