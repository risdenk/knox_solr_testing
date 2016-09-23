# Knox Solr

## Getting Started
1. `docker-compose up -d`
2. Check the URLs below.

## URLs
* `https://localhost:8443/gateway/default/solr/index.html#/`
* `https://localhost:8443/gateway/default/solr/admin/info/system`
* `https://localhost:8443/gateway/default/solr/admin/collections?action=LIST`

## Development
1. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml build`
2. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d`
3. Check the URLs above.

## References

* https://cwiki.apache.org/confluence/display/KNOX/Proxying+a+UI+using+Knox
* https://issues.apache.org/jira/browse/KNOX-528

