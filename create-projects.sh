#
# CREATE CONFIG SERVER PROJECT
#
spring init\
 -n=config-server\
 -d=cloud-config-server,cloud-eureka,actuator\
 --package=com.developerbhuwan.configserver\
 -language=java config-server

#
# CREATE SERVICE DISCOVERY PROJECT
#
spring init\
 -n=service-discovery\
 -d=cloud-eureka-server,cloud-config-client,actuator\
 --package=com.developerbhuwan.servicediscovery\
 -language=java service-discovery

#
# CREATE API GATEWAY PROJECT
#
spring init\
 -n=api-gateway\
 -d=cloud-zuul,cloud-config-client,cloud-oauth2,cloud-eureka,actuator,cloud-hystrix\
 --package=com.developerbhuwan.apigateway\
 -language=java api-gateway
 
#
# CREATE ORDER SERVICE PROJECT
#
spring init\
 -n=order-service\
 -d=web,jpa,hsql,cloud-config-client,cloud-oauth2,cloud-eureka,actuator,cloud-stream\
 --package=com.developerbhuwan.orderservice\
 -language=java order-service
 
#
# CREATE PAYMENT SERVICE PROJECT
#
spring init\
 -n=payment-service\
 -d=web,jpa,hsql,cloud-config-client,cloud-oauth2,cloud-eureka,actuator,cloud-stream\
 --package=com.developerbhuwan.paymentservice\
 -language=java payment-service

#
# CREATE HYSTRIX DASHBOARD PROJECT
#
spring init\
 -n=hystrix-dashboard\
 -d=cloud-config-client,cloud-eureka,actuator,cloud-hystrix-dashboard\
 --package=com.developerbhuwan.hystrixdashboard\
 -language=java hystrix-dashboard
 