# Knox Solr

[![Build Status](https://travis-ci.org/risdenk/knox_solr_testing.svg?branch=master)](https://travis-ci.org/risdenk/knox_solr_testing)

## Getting Started
1. `docker network create example.com`
2. `docker-compose up -d`
3. `./test_knox_solr.sh`
4. `open https://localhost:8443/gateway/default/solr/`
5. `docker-compose down -v --remove-orphans --rmi=all`
6. `docker network rm example.com`

### URLs
* `https://localhost:8443/gateway/default/solr/index.html#/`
* `https://localhost:8443/gateway/default/solr/admin/info/system`
* `https://localhost:8443/gateway/default/solr/admin/collections?action=LIST`

### Using Solr
#### Upload a config
`docker-compose exec solr sh -c "./bin/solr zk upconfig -d data_driven_schema_configs -n data_driven_schema -z localhost:9983"`

### Development
#### Rebuild Knox image
1. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml build`
2. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d`
3. Check the URLs above.

## References
* https://cwiki.apache.org/confluence/display/KNOX/Proxying+a+UI+using+Knox
* https://issues.apache.org/jira/browse/KNOX-528

