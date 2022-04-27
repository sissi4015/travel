package com.cn.travel.cms.scenicSpot.provider;

import com.sun.xml.internal.bind.v2.model.core.ID;
import org.springframework.stereotype.Component;

@Component
public class ScenicSpotSqlProvider {

    public String count(){ return "SELECT count(*) FROM t_cms_scenic_spot WHERE DELETE_STATUS=0"; }

    public String count2(){ return "SELECT count(*) FROM t_cms_scenic_spot WHERE DELETE_STATUS=0 AND STATE=1"; }

    public String findById() {
        return "SELECT * FROM t_cms_scenic_spot WHERE ID = #{id} AND DELETE_STATUS=0 ";
    }

    public String findList(){
        return "SELECT * FROM t_cms_scenic_spot WHERE DELETE_STATUS=0 ORDER BY ADD_TIME DESC";
    }

    public String indexList(){
        return "SELECT * FROM t_cms_scenic_spot WHERE DELETE_STATUS=0 AND STATE=1 ORDER BY ADD_TIME DESC";
    }

    public String findListByQuery(){
        return "SELECT * FROM t_cms_scenic_spot WHERE DELETE_STATUS=0 AND SPOT_NAME LIKE #{query,jdbcType=VARCHAR} ORDER BY ADD_TIME DESC";
    }

    public String update(){
        return "UPDATE t_cms_scenic_spot SET MODIFY_USER_ID=#{modifyUserId},MODIFY_TIME=NOW(),SPOT_NAME=#{spotName},SPOT_INTRO=#{spotIntro}," +
                "SPOT_STAR=#{spotStar},SPOT_ADDRESS=#{spotAddress},OPEN_TIME=#{openTime},TICKETS_MESSAGE=#{ticketsMessage},STATE=#{state},IMG_URL=#{imgUrl}" +
                " WHERE id=#{id}";
    }

    public String save(){
        return "INSERT INTO t_cms_scenic_spot(ID,ADD_USER_ID,ADD_TIME,SPOT_NAME,SPOT_INTRO,SPOT_STAR,SPOT_ADDRESS,OPEN_TIME,TICKETS_MESSAGE,STATE,IMG_URL) " +
                "VALUES(#{id},#{addUserId},NOW(),#{spotName},#{spotIntro},#{spotStar},#{spotAddress},#{openTime},#{ticketsMessage},#{state},#{imgUrl})";
    }

    public String deleteByid(){
        return "UPDATE t_cms_scenic_spot SET DELETE_STATUS=1 WHERE id=#{id}";
    }


    public String state0count(){ return "SELECT count(*) FROM t_cms_scenic_spot WHERE DELETE_STATUS=0 AND STATE=0"; }

    public String state1count(){ return "SELECT count(*) FROM t_cms_scenic_spot WHERE DELETE_STATUS=0 AND STATE=1"; }

    public String state2count(){ return "SELECT count(*) FROM t_cms_scenic_spot WHERE DELETE_STATUS=0 AND STATE=2"; }

    public String addComment(){
        return "INSERT INTO t_cms_pj_scenic(id,pjyh,pjcp,pjdj,pjnr,pjtime,pjbz,pjcpimgurl,pjcpname,pjcptype) VALUES(#{id},#{pjyh},#{pjcp},#{pjdj},#{pjnr},#{pjtime},#{pjbz},#{pjcpimgurl},#{pjcpname},#{pjcptype})";
    }
    public String findCommentById(){
        return "SELECT a.pjdj,a.pjnr,a.pjtime,b.USER_NAME as pjyh FROM t_cms_pj_scenic a,t_pz_user b WHERE a.pjyh = b.ID AND a.pjcptype = #{status} AND a.pjcp = #{id}";
    }
    public String commentcount(){ return "SELECT count(*) FROM t_cms_pj_scenic"; }

    public String findCommentList(){
        return "SELECT * FROM t_cms_pj_scenic ORDER BY pjtime DESC";
    }

    public String findCommentListByQuery(){
        return "SELECT * FROM t_cms_pj_scenic WHERE pjcpname LIKE #{query,jdbcType=VARCHAR} ORDER BY pjtime DESC";
    }
    public String findScenicCommentById(){
        return "SELECT * FROM t_cms_pj_scenic WHERE id = #{id}";
    }

    public String deleteCommentByid(){
        return "delete from t_cms_pj_scenic WHERE id = #{id}";
    }

}
