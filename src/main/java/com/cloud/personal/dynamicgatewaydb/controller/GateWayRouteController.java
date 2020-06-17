package com.cloud.personal.dynamicgatewaydb.controller;

import com.alibaba.fastjson.JSON;import com.cloud.personal.dynamicgatewaydb.entity.GateWayRoute;import com.cloud.personal.dynamicgatewaydb.service.IGateWayRouteService;import org.springframework.beans.factory.annotation.Autowired;import org.springframework.web.bind.annotation.RequestMapping;import org.springframework.web.bind.annotation.RestController;import java.util.List;

@RestController
public class GateWayRouteController {

    @Autowired
    IGateWayRouteService gateWayRouteService;

    @RequestMapping("/gatewayroutes")
    public String getGateWayRoutes(){
        return JSON.toJSONString(gateWayRouteService.getDateWayRoutes());
    }
}
