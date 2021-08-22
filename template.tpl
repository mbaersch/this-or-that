___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "This Or That",
  "description": "define multiple variables and get the first unset value as result",
  "categories": [
    "UTILITY"
  ],
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SIMPLE_TABLE",
    "name": "variables",
    "displayName": "Variables",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Add two or more variables. Optionally type a fallback value in the last row",
        "name": "variable",
        "type": "TEXT",
        "valueHint": "type text or use a variable. The order of rows matter.",
        "isUnique": true
      }
    ],
    "help": "Define a list of at least two variables. The return value will be the first variable value that is not \"undefined\" or empty. If no item is set, the result will be undefined."
  }
]


___SANDBOXED_JS_FOR_SERVER___

// Enter your template code here.

var vl;
data.variables.forEach((v, i) => {
  if (!vl || vl === "") vl = v.variable;
});

return vl;


___TESTS___

scenarios: []


___NOTES___

Created on 22.8.2021, 18:08:27


