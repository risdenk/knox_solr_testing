# Knox Solr

## Getting Started
1. `docker-compose up -d`
2. `./test_knox_solr.sh`
3. Open https://localhost:8443/gateway/default/solr/

### URLs
* `https://localhost:8443/gateway/default/solr/index.html#/`
* `https://localhost:8443/gateway/default/solr/admin/info/system`
* `https://localhost:8443/gateway/default/solr/admin/collections?action=LIST`

### Using Solr
#### Upload a config
`docker-compose exec solr sh -c "./bin/solr zk upconfig -d data_driven_schema_configs -n data_driven_schema -z localhost:9983"`

## Development
1. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml build`
2. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d`
3. Check the URLs above.
4. Edit `solr/*/{service.xml,rewrite.xml}`
5. `docker-compose exec knox sh -c "touch conf/topologies/default.xml"`

## References
* https://cwiki.apache.org/confluence/display/KNOX/Proxying+a+UI+using+Knox
* https://issues.apache.org/jira/browse/KNOX-528

