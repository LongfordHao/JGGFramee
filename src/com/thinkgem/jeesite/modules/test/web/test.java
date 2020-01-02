package com.thinkgem.jeesite.modules.test.web;

import javafx.application.Application;
import org.activiti.editor.language.json.converter.InclusiveGatewayJsonConverter;
import org.activiti.engine.impl.util.json.JSONObject;
import org.apache.commons.io.IOUtils;
import org.omg.PortableInterceptor.SUCCESSFUL;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.thinkgem.jeesite.modules.sys.entity.User;
import org.springframework.web.context.request.WebRequest;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/**
 * 作   者: 郝龙飞
 * 小   组:
 * 版   本:
 * 日   期: 2019/12/10 - 20:30
 * 说   明:
 */

@Controller

@RequestMapping(value = "test")
public class test {
    @RequestMapping(value = "/test")
    @ResponseBody
    //public String test(User user, HttpServletRequest request, HttpServletResponse response) {
    public String test(@RequestParam("username") String username, @RequestParam("password") String password) {

        //    response.setHeader("Access-Control-Allow-Origin", "*");
        //response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");
        //String username = request.getParameter("username");

        System.out.println("username="+username+";password="+password);
        //页面返回jsonobject文件
        JSONObject object = new JSONObject();
        object.put("data", "dsflsjldkl");
        //PrintWriter writer = new PrintWriter();
        //OutJSON(response,object.toString());

        //返回到页面的方法
        //return object;
        return "success";
    }
    @RequestMapping(value = "/test1")
    @ResponseBody
    public String test(User user, HttpServletRequest request, HttpServletResponse response,@RequestParam("username") String username, @RequestParam("password") String password) {
    //public String test(@RequestParam("username") String username, @RequestParam("password") String password) {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");
        String username1 = request.getParameter("username");

        System.out.println("username="+username+";password="+password);
        //页面返回jsonobject文件
        JSONObject object = new JSONObject();
        object.put("data", "dsflsjldkl");
        //PrintWriter writer = new PrintWriter();
        OutJSON(response,object.toString());

        //返回到页面的方法
        //return object;
        return "success";
    }
    private void OutJSON(HttpServletResponse response,String data ) {

            String encoding = "UTF-8";
            String contentType = "application/json;charset=UTF-8";
            response.setContentType(contentType);
            response.setCharacterEncoding(encoding);
            try {
                PrintWriter out = response.getWriter();
                out.print(data);
                out.flush();
                out.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }



    }

    @RequestMapping(value = "/getUser")
    @ResponseBody
    public String getList(HttpServletRequest request, HttpServletResponse response, User user) throws ServletException, IOException {

        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");
        request.getReader();
        BufferedReader reader = request.getReader();
        char[] buf = new char[512];
        int len = 0;
        StringBuffer contentBuffer = new StringBuffer();
        while ((len = reader.read(buf)) != -1) {
            contentBuffer.append(buf, 0, len);
        }

        //return contentBuffer.toString();
        //将json字符串转换成object类型数据
        //ObjectMapper om = new ObjectMapper();
        //Object object = om.readValue(IOUtils.toString(request.getReader()), Object.class);
        //处理字符串
        String st=contentBuffer.toString();//IOUtils.toString(request.getReader());
        String name=st.substring(14,19);
        String pw=st.substring(33,41);

        //System.out.println(object);
        user.setLoginName(name);
        user.setPassword(pw);
        return "success";
        //return IOUtils.toString(request.getReader());
    }

}

