package com.cloud.personal.dynamicgatewaydb.service.impl;

import com.cloud.personal.dynamicgatewaydb.dao.IGateWayRouteDao;import com.cloud.personal.dynamicgatewaydb.entity.GateWayRoute;import com.cloud.personal.dynamicgatewaydb.service.IGateWayRouteService;import org.springframework.beans.factory.annotation.Autowired;import org.springframework.stereotype.Service;import java.util.List;

@Service
public class GateWayRouteServiceImpl implements IGateWayRouteService {

    @Autowired
    IGateWayRouteDao gateWayRouteDao;

    @Override
    public List<GateWayRoute> getDateWayRoutes() {
        return gateWayRouteDao.getGateWayRoutes();
    }

}
