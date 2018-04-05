#!/usr/bin/env bash
#
echo "CREATE CONFIG SERVER PROJECT"
#
spring init\
 -n=config-server\
 -d=cloud-config-server,cloud-eureka,actuator\
 --groupId=com.developerbhuwan\
 --package-name=com.developerbhuwan.configserver\
 --description=ConfigServer\
 --version=1.0-SNAPSHOT\
 --language=java config-server

#
echo "CREATE SERVICE DISCOVERY PROJECT"
#
spring init\
 -n=service-discovery\
 -d=cloud-eureka-server,cloud-config-client,actuator\
 --groupId=com.developerbhuwan\
 --package-name=com.developerbhuwan.servicediscovery\
 --description=ServiceDiscovery\
 --version=1.0-SNAPSHOT\
 --language=java service-discovery

#
echo "CREATE API GATEWAY PROJECT"
#
spring init\
 -n=api-gateway\
 -d=cloud-gateway,cloud-config-client,cloud-oauth2,cloud-eureka,actuator,cloud-hystrix\
 --groupId=com.developerbhuwan\
 --package-name=com.developerbhuwan.apigateway\
 --description=APIGateway\
 --version=1.0-SNAPSHOT\
 --language=java api-gateway

#
echo "CREATE UAA SERVICE PROJECT"
#
spring init\
 -n=uaa-service\
 -d=cloud-config-client,cloud-oauth2,cloud-security,cloud-eureka,actuator\
 --groupId=com.developerbhuwan\
 --package-name=com.developerbhuwan.uaaservice\
 --description=UAAService\
 --version=1.0-SNAPSHOT\
 --language=java uaa-service
#
echo "CREATE ORDER SERVICE PROJECT"
#
spring init\
 -n=order-service\
 -d=web,jpa,hsql,cloud-config-client,cloud-oauth2,cloud-eureka,actuator,cloud-stream\
 --groupId=com.developerbhuwan\
 --package-name=com.developerbhuwan.orderservice\
 --description=OrderService\
 --version=1.0-SNAPSHOT\
 --language=java order-service

#
echo "CREATE PAYMENT SERVICE PROJECT"
#
spring init\
 -n=payment-service\
 -d=web,jpa,hsql,cloud-config-client,cloud-oauth2,cloud-eureka,actuator,cloud-stream\
 --groupId=com.developerbhuwan\
 --package-name=com.developerbhuwan.paymentservice\
 --description=PaymentService\
 --version=1.0-SNAPSHOT\
 --language=java payment-service

#
echo "CREATE HYSTRIX DASHBOARD PROJECT"
#
spring init\
 -n=hystrix-dashboard\
 -d=cloud-config-client,cloud-eureka,actuator,cloud-hystrix-dashboard\
 --groupId=com.developerbhuwan\
 --package-name=com.developerbhuwan.hystrixdashboard\
 --description=HystrixDashboard\
 --version=1.0-SNAPSHOT\
 --language=java hystrix-dashboard
 
