#!/bin/bash

apk update

apk add curl

ARGOCD_TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhcmdvY2QiLCJzdWIiOiJrZXB0bjphcGlLZXkiLCJuYmYiOjE2NjU0Njc3NzAsImlhdCI6MTY2NTQ2Nzc3MCwianRpIjoia2VwdG4ifQ.qAHHlHBxoykJfdkIBB5pszSBSargqBdaJ9AFNPLq67c"

curl --header "Authorization: Bearer $ARGOCD_TOKEN" --request POST https://argocd.dev.ada.dbs-sandbox.versent-innovation.au1.staxapp.cloud/api/v1/applications/core-adak8s-monitoring/sync
