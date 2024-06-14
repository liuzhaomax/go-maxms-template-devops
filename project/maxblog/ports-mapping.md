# 端口映射

| 服务名              | Repo             | 主机端口  | 容器端口  | 容器名                   | 工作进度                                                |
|:-----------------|:-----------------|:-----:|:-----:|:----------------------|:----------------------------------------------------|
| 前端主站             | maxblog-main-fe  | 9601  | 9601  | maxblog-main-fe_main  | 主页：传入哪些数据x 文章√ 样例：布局完成未检验复杂数据 项目× 统计x               |
| 前端后台             | maxblog-admin-fe | 9602  | 9602  | maxblog-admin-fe_main | 登录√ 文章√ 文章标签× 样例× 项目× 统计× 主页×                       |
| 中台统计             | maxblog-stats    | 9701  | 9701  | maxblog-stats_main    | 主页浏览量aa/bb ×  文章统计× 样例统计× 不与数据库相连，直接与主页后端通信         |
| 后端用户             | maxblog-user     | 9801  | 9801  | maxblog-user_main     | √√√√√√√√√                                           |
| 后端主页             | maxblog-main     | 9802  | 9802  | maxblog-main_main     | √√√√√√√√√                                           |
| SGW              | maxblog-sgw      | 9999  | 9999  | maxblog-sgw_main      | √√√√√√√√√√                                          |
| MySQL主           | -                | 3306  | 3306  | mysql_master          | √√√√√√√√√√                                          |
| MySQL从1          | -                | 3307  | 3306  | mysql_slave1          | ×                                                   |
| MySQL从2          | -                | 3308  | 3306  | mysql_slave2          | ×                                                   |
| Redis主           | -                | 6379  | 6379  | redis_master          | √√√√√√√√√√                                          |
| Redis从1          | -                | 6380  | 6379  | redis_slave1          | ×                                                   |
| Redis从2          | -                | 6381  | 6379  | redis_slave2          | ×                                                   |
| Postgres         | -                | 5432  | 5432  | sonar_db              | √√√√√√√√√√                                          |
| Vault            | -                | 8200  | 8200  | vault                 | √√√√√√√√√√                                          |
| Jenkins          | -                | 9000  | 8080  | jenkins               | √√√√√√√√√√                                          |
| SonarQube        | -                | 9001  | 9000  | sonarqube             | √√√√√√√√√√                                          |
| Harbor           | -                | 9002  | 8080  | nginx (harbor-xxx)    | √√√√√√√√√√                                          |
| ETCD leader      | -                | 2379  | 2379  | etcd0                 | √√√√√√√√√√  2380                                    |
| ETCD follower1   | -                | 12379 | 12379 | etcd1                 | √√√√√√√√√√  12380                                   |
| ETCD follower2   | -                | 22379 | 22379 | etcd2                 | √√√√√√√√√√  22380                                   |
| Consul           | -                | 8500  | 8500  | consul0 1 2 3         | √√√√√√√√√√  consul3是client                          |
| Jaeger           | -                | 6831  | 6831  | jaeger                | √√√√√√√√√√  16686是client  6832 5775 5778 14268 9411 |
| Prometheus       | -                | 9090  | 9090  | prometheus            | √√√√√√√√√√                                          |
| alertmanager     | -                | 9093  | 9093  | alertmanager          | √√√√√√√√√√                                          |
| cadvisor         | -                | 8080  | 8080  | cadvisor              | √√√√√√√√√√                                          |
| node_exporter    | -                | 9100  | 9100  | node_exporter         | √√√√√√√√√√                                          |
| nginx_exporter   | -                | 9113  | 9113  | nginx_exporter        | √√√√√√√√√√                                          |
| Grafana          | -                | 3000  | 3000  | grafana               | √√√√√√√√√√                                          |
| ElasticSearch    | -                | 9200  | 9200  | elasticsearch         | √√√√√√√√√√  9300                                    |
| Kibana           | -                | 5601  | 5601  | kibana                | √√√√√√√√√√                                          |
| Logstash         | -                | 5044  | 5044  | logstash              | √√√√√√√√√√                                          |
| Filebeat         | -                |   -   |   -   | filebeat              | √√√√√√√√√√                                          |
| Sentinel         | -                | 8858  | 8858  | sentinel              | √√√√√√√√√√                                          |
| RocketMQ-console | -                | 9877  | 8080  | rocketmq_console      | √√√√√√√√√√                                          |
| RocketMQ-namesrv | -                | 9876  | 9876  | rocketmq_namesrv      | √√√√√√√√√√                                          |
| RocketMQ-broker  | -                | 10909 | 10909 | rocketmq_broker       | √√√√√√√√√√  10911                                   |


# 端口映射

| 服务名              | Repo              | 主机端口  | 容器端口  | 容器名                    | 工作进度                                       |
|:-----------------|:------------------|:-----:|:-----:|:-----------------------|:-------------------------------------------|
| 前端主站             | maxblog-main-fe   | 9101  | 9101  | maxblog-main-fe_main   | 主页：传入哪些数据x 文章× 样例：布局完成未检验复杂数据 项目× 统计x      |
| 前端后台             | maxblog-admin-fe  | 9102  | 9102  | maxblog-admin-fe_main  | 登录√ 其他x                                    |
| ~~前端搜索~~         | maxblog-search-fe | 9103  | 9103  | maxblog-search-fe_main | 使用vue3 ×                                   |
| 后端 SGW           | maxblog-sgw       | 9999  | 9999  | maxblog-sgw_main       | √√√√√√√√√                                  |
| 后端统计             | maxblog-stats     |  随机   | 9701  | maxblog-stats_main     | 主页浏览量aa/bb ×  文章统计√ 样例统计×                  |
| 后端用户             | maxblog-user      |  随机   | 9801  | maxblog-user_main      | √√√√√√√√√                                  |
| 后端主站             | maxblog-main      |  随机   | 9202  | maxblog-main_main      | 主页(缺少视频介绍) 文章(缺少相关文章) 样例× 项目× 用户√          |
| ~~后端搜索~~         | maxblog-search    |  随机   | 9803  | maxblog-search_main    | ×                                          |
| Nginx            | -                 |  80   |  80   | nginx                  | √√√√√√√√√√ 443                             |
| MySQL主           | -                 | 3306  | 3306  | mysql_master           | √√√√√√√√√√                                 |
| MySQL从1          | -                 | 3307  | 3306  | mysql_slave1           | ×                                          |
| MySQL从2          | -                 | 3308  | 3306  | mysql_slave2           | ×                                          |
| Redis主           | -                 | 6379  | 6379  | redis_master           | ×                                          |
| Redis从1          | -                 | 6380  | 6379  | redis_slave1           | ×                                          |
| Redis从2          | -                 | 6381  | 6379  | redis_slave2           | ×                                          |
| Postgres         | -                 | 5432  | 5432  | sonar_db               | √√√√√√√√√√                                 |
| Jenkins          | -                 | 9000  | 8080  | jenkins                | √√√√√√√√√√                                 |
| SonarQube        | -                 | 9001  | 9000  | sonarqube              | √√√√√√√√√√                                 |
| Harbor           | -                 | 9002  | 8080  | nginx (harbor-xxx)     | √√√√√√√√√√                                 |
| Vault            | -                 | 8200  | 8200  | vault                  | √√√√√√√√√√                                 |
| Consul           | -                 | 8500  | 8500  | consul                 | √√√√√√√√√√  8600                           |
| Nacos            | -                 | 8848  | 8848  | nacos                  | ××××××××××                                 |
| Elasticsearch    | -                 | 9200  | 9200  | elasticsearch          | √√√√√√√√√√                                 |
| Kibana           | -                 | 5601  | 5601  | kibana                 | √√√√√√√√√√                                 |
| Logstash         | -                 | 5044  | 5044  | logstash               | √√√√√√√√√√                                 |
| Filebeat         | -                 |   -   |   -   | filebeat               | √√√√√√√√√√  一个收集nginx，一个收集其他服务             |
| Jaeger           | -                 | 16686 | 16686 | jaeger                 | √√√√√√√√√√  5775 6831 6832 5778 14268 9411 |
| Prometheus       | -                 | 9090  | 9090  | prometheus             | √√√√√√√√√√                                 |
| Alertmanager     | -                 | 9093  | 9093  | alertmanager           | √√√√√√√√√√                                 |
| Cadvisor         | -                 | 8080  | 8080  | cadvisor               | √√√√√√√√√√                                 |
| node_exporter    | -                 | 9100  | 9100  | node_exporter          | √√√√√√√√√√                                 |
| Grafana          | -                 | 3000  | 3000  | grafana                | √√√√√√√√√√                                 |
| rocketmq_namesrv | -                 | 9876  | 9876  | rocketmq_namesrv       | √√√√√√√√√√                                 |
| rocketmq_broker  | -                 | 10911 | 10911 | rocketmq_broker        | √√√√√√√√√√    10909                        |
| rocketmq_console | -                 | 9877  | 8080  | rocketmq_console       | √√√√√√√√√√                                 |
| Sentinel         | -                 | 8858  | 8858  | sentinel               | √√√√√√√√√√                                 |
| Mountebank       | -                 | 5555  | 5555  | mountebank             | √√√√√√√√√√  2525 4545                      |
