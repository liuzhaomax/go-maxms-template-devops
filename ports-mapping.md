# 端口映射

| 服务名       | Repo             | 主机端口 | 容器端口 | 容器名                | 工作进度                                  |
|:----------|:-----------------|:----:|:----:|:-------------------|:--------------------------------------|
| 前端主站      | maxblog-fe-main  | 9101 | 9101 | fe_main            | 主页：传入哪些数据x 文章× 样例：布局完成未检验复杂数据 项目× 统计x |
| 前端后台      | maxblog-fe-admin | 9102 | 9102 | fe_admin           | 登录√ 其他x                               |
| 中台后台      | maxblog-me-admin | 9201 | 9201 | me_admin           | 用户√ 其他×                               |
| 中台主站      | maxblog-me-main  | 9202 | 9202 | me_main            | 主页× 文章× 样例√ 项目×                       |
| 中台统计      | maxblog-me-stats | 9203 | 9203 | me_stats           | 主页浏览量aa/bb ×  文章统计× 样例统计×             |
| 后端用户      | maxblog-be-user  | 9301 | 9301 | be_user            | √√√√√√√√√                             |
| 后端主页      | maxblog-be-main  | 9302 | 9302 | be_main            | ×                                     |
| MySQL主    | -                | 3306 | 3306 | mysql_master       | √√√√√√√√√√                            |
| MySQL从1   | -                | 3307 | 3306 | mysql_slave1       | ×                                     |
| MySQL从2   | -                | 3308 | 3306 | mysql_slave2       | ×                                     |
| Redis主    | -                | 6379 | 6379 | redis_master       | ×                                     |
| Redis从1   | -                | 6380 | 6379 | redis_slave1       | ×                                     |
| Redis从2   | -                | 6381 | 6379 | redis_slave2       | ×                                     |
| Postgres  | -                | 5432 | 5432 | sonar_db           | √√√√√√√√√√                            |
| Jenkins   | -                | 9000 | 8080 | jenkins            | √√√√√√√√√√                            |
| SonarQube | -                | 9001 | 9000 | sonarqube          | √√√√√√√√√√                            |
| Harbor    | -                | 9002 | 8080 | nginx (harbor-xxx) | √√√√√√√√√√                            |
| Consul    | -                | 9003 | 8500 | consul             | ××××××××××                            |
| Nacos     | -                | 9004 | 8848 | nacos              | ××××××××××                            |
| Vault     | -                | 9005 | 8200 | vault              | √√√√√√××××                            |
