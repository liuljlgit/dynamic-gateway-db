package com.cloud.personal.dynamicgatewaydb.dao;

import com.cloud.personal.dynamicgatewaydb.entity.GateWayRoute;import org.apache.ibatis.annotations.Select;import org.springframework.stereotype.Repository;import java.util.List;

@Repository
public interface IGateWayRouteDao {

    @Select("select * from gateway_route")
    public List<GateWayRoute> getGateWayRoutes();

}
