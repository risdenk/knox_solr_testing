#!/usr/bin/env bash

CURL="curl -i -k -u admin:admin-password"
KNOX="https://localhost:8443/gateway/default/solr"

$CURL "$KNOX/admin/info/system"
$CURL "$KNOX/admin/collections?action=LIST"

