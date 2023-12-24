# 计划

## 1. 负载均衡
云 + Nginx

## 2. 网关和鉴权
微服务 + RSA + JWT + Hashicorp Vault

鉴权准则：
1. 确保token时效性
2. 确保黑客使用别人的token登录，会因IP不一致无效
3. 确保csrf防御

鉴权判定：
1. 请求IP和token中的IP一致
2. token是否过期

鉴权方式：

第一种：

未登录：<br>
app -> SGW：返回公钥字符串 -> 主页微服务：返回主页公开数据<br>
开始登录：<br>
app -> SGW -> 用户微服务：判定用户是否成功 -> 用户微服务：返回判定结果，成功则返回jwt -> SGW：将返回的Bearer token存入Authorisation -> 主页微服务：返回主页数据 -> SGW：拼接主页数据与公钥加密的token，并返回 -> app：加载主页 <br>
已登录：<br>
app -> SGW：查看Authorisation，鉴权 -> downstream：返回数据<br>

第二种：

用户微服务启动时生成RSA密钥对，并存入vault，如果vault已有密钥对，则获取 <br>
其他微服务启动时从vault获取RSA密钥对 <br>
未登录： <br>
app -> 主页微服务：返回公钥字符串 -> 返回主页公开数据 <br>
开始登录： <br>
app -> 主页微服务：请求鉴权 -> 用户微服务：鉴权，返回token -> 主页微服务：拼接主页数据与token，并返回 -> app：加载主页 <br>
已登录： <br>
app -> 主页微服务：鉴权，返回数据 <br>

## 3. 注册中心
ETCD

## 4. 配置中心
Nacos

## 5. 监控中心
Prometheus+Grafana/Kibana

## 6. 日志中心
Jaeger/fileBeat+Logstash日志链路追踪，ElasticSearch持久化

## 7. 消息队列
RocketMQ

## 8. 分布式事务
DTM

## 9. 缓存
Redis

## 10. 数据库
MySQL

## 11. 集群
OCP4

## 12. 限流 熔断 降级
resilience4j/Sentinel/查找其他go熔断降级工具

## 13. CI/CD
Jenkins流水线
1. checkout
2. app version
3. lint: golangci-lint
4. build
5. 静态扫描: sonarqube
6. 漏洞扫描: nessus
7. 安全扫描: blackduck
8. build image Harbour
9. git tag
10. package config
11. create package
12. deploy package

## 14. 微服务架构
1. 框架：gin
2. 通信：grpc
3. 依赖注入：wire
4. 日志：logrus
5. 拦截器：权限RSA+JWT+crypto，跨域
6. 读取配置：viper
