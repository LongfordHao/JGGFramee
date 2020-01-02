package com.thinkgem.jeesite.modules.sys.web;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.security.shiro.session.SessionDAO;
import com.thinkgem.jeesite.common.utils.CookieUtils;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.entity.Article;
import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.service.ArticleDataService;
import com.thinkgem.jeesite.modules.cms.service.ArticleService;
import com.thinkgem.jeesite.modules.cms.service.CategoryService;
import com.thinkgem.jeesite.modules.cms.service.SiteService;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import com.thinkgem.jeesite.modules.sys.entity.Office;
import com.thinkgem.jeesite.modules.sys.entity.Role;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.entity.UserPublic;
import com.thinkgem.jeesite.modules.sys.service.SystemPublicService;
import com.thinkgem.jeesite.modules.sys.service.SystemService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;


import net.sf.json.JSONArray;
import org.apache.fop.fo.pagination.Title;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.thinkgem.jeesite.modules.sys.security.SystemAuthorizingRealm.Principal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static com.alibaba.druid.wall.spi.WallVisitorUtils.form;

/**
 * 作   者: 郝龙飞
 * 小   组:
 * 版   本:
 * 日   期: 2019/12/11 - 15:59
 * 说   明:
 */
@Controller
@RequestMapping(value = "/rjxqbsdt")
public class RjxqbsdtController extends BaseController {

    @Autowired
    private SystemPublicService systemPublicService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ArticleService articleService;

    @Autowired
    private ArticleDataService articleDataService;

    @Autowired
    private SiteService siteService;

    /**
     * 办事服务大厅注册新账号
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/save")
    @ResponseBody
    public String save(HttpServletRequest request, HttpServletResponse response, @RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("mobile") String mobile) throws ServletException, IOException {

        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");

        UserPublic user = new UserPublic();
        user.setLoginName(username);
        user.setId("");
        String plainpassword = systemPublicService.entryptPassword(password);
        user.setPassword(plainpassword);
        user.setName("普通用户");
        user.setMobile(mobile);
        user.setLoginFlag("1");
        user.setDelFlag("0");
        user.setIsNewRecord(false);
        user.setNo("9527");
        //设定注册用户身份
        Role ro = new Role();
        ro.setId("6");

        Office office = new Office();
        office.setId("2");
        ro.setOffice(office);


        List<Role> roleList = Lists.newArrayList();
        List<String> roleIdList = user.getRoleIdList();
        roleIdList.add("6");
        roleList.add(ro);
        user.setRoleList(roleList);

        user.setOffice(office);
        user.setCompany(office);

        // 保存用户信息
        systemPublicService.saveUser(user);
        // 清除当前用户缓存
        if (user.getLoginName().equals(UserUtils.getUser().getLoginName())) {
            UserUtils.clearCache();
            //UserUtils.getCacheMap().clear();
        }
        return "success";
    }


    /**
     * 办事大厅用户登录
     *
     * @param request
     * @param response
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/login")
    public String login(HttpServletRequest request, HttpServletResponse response, @RequestParam("username") String username, @RequestParam("password") String password) {

        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");
        UserPublic user = new UserPublic();
        user.setLoginName(username);
        user.setPassword(password);

        if(username.length() == 0 ){
            return "lose";
        }
        // 查询用户信息
        List ps = systemPublicService.login(user);

        //比对用户密码是否正确
        boolean f = systemPublicService.validatePassword(password, ps.get(0).toString());


        if (f) {
            //返回用户名
            return ps.get(1).toString();
        } else {
            return "lose";
        }
    }

    /**
     * 获取文章列表
     *
     * @param request
     * @param response
     * @param categoryId 分类编号
     * @param number     获取数目
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/ArticleList")
    public JSONObject ArticleList(HttpServletRequest request, HttpServletResponse response, @RequestParam("categoryId") String categoryId, @RequestParam("number") String number, @RequestParam("pageNumber") String pageNumber) {

        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");
        String siteId = "1";//站点编号
        String param = "";//预留参数
        int num = Integer.parseInt(number);//强转数据类型
        int pgnum = Integer.parseInt(pageNumber);
        List list = new ArrayList();
        CmsUtils cmsUtils = new CmsUtils();

        list = cmsUtils.getArticleListR(siteId, categoryId, num, param, pgnum);
        List listA = new ArrayList<>();
        listA = cmsUtils.getArticleListR(siteId, categoryId, 500, param, 1);

        //当每页有10条数据时，判断列表页数
        int a = listA.size();
        int pages;
        if (a % 10 == 0) {
            pages = a / 10;
        } else {
            pages = a / 10 + 1;
        }
        JSONObject object = new JSONObject();
        object.put("data", list);
        object.put("ls", String.valueOf(pages));

        return object;
    }


    /**
     * 获取文章内容
     * @param request
     * @param response
     * @param categoryId
     * @param contentId
     * @param model
     * @return
     */

    @ResponseBody
    @RequestMapping(value = "viewList")
    public JSONObject viewList(HttpServletRequest request, HttpServletResponse response, @RequestParam("categoryId") String categoryId, @RequestParam("contentId") String contentId, Model model) {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");


        Category category = categoryService.get(categoryId);
        if (category == null) {
            Site site = CmsUtils.getSite(Site.defaultSiteId());
            model.addAttribute("site", site);
            //return "error/404";
        }
        model.addAttribute("site", category.getSite());
        if ("article".equals(category.getModule())) {
            // 如果没有子栏目，并父节点为跟节点的，栏目列表为当前栏目。
            List<Category> categoryList = Lists.newArrayList();
            if (category.getParent().getId().equals("1")) {
                categoryList.add(category);
            } else {
                categoryList = categoryService.findByParentId(category.getParent().getId(), category.getSite().getId());
            }
            // 获取文章内容
            Article article = articleService.get(contentId);
            if (article == null || !Article.DEL_FLAG_NORMAL.equals(article.getDelFlag())) {
                //return "error/404";
            }
            // 文章阅读次数+1
            articleService.updateHitsAddOne(contentId);
            // 获取推荐文章列表
            List<Object[]> relationList = articleService.findByIds(articleDataService.get(article.getId()).getRelation());
            // 将数据传递到视图
            model.addAttribute("category", categoryService.get(article.getCategory().getId()));
            model.addAttribute("categoryList", categoryList);
            article.setArticleData(articleDataService.get(article.getId()));
            model.addAttribute("article", article);
            model.addAttribute("relationList", relationList);
            CmsUtils.addViewConfigAttribute(model, article.getCategory());
            CmsUtils.addViewConfigAttribute(model, article.getViewConfig());
            Site site = siteService.get(category.getSite().getId());
            model.addAttribute("site", site);
//			return "modules/cms/front/themes/"+category.getSite().getTheme()+"/"+getTpl(article);
            //return "modules/cms/front/themes/" + site.getTheme() + "/" + getTpl(article);
            List la=new ArrayList();
            la.add(article);
            JSONObject object = new JSONObject();
            object.put("data", la);
            return object;
        }
        //return "error/404";
        return null;

    }

    /**
     * 模糊查询文章题目
     * @param article
     * @param request
     * @param response
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "findList")
    public JSONObject findList(Article article, HttpServletRequest request, HttpServletResponse response,@RequestParam("title") String title) {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");

        article.setTitle(title);
        Category category=new Category();
        //article.setCategory(category.setId(13));
        Page<Article> page = articleService.findPage(new Page<Article>(request, response), article, true);
        //model.addAttribute("page", page);
        //page.setPageSize(2);
        JSONObject object = new JSONObject();
        object.put("data", page.getList());
        //object.put("count",page.getCount());
        return object;
    }

    /**
     * 具体模块模糊查询文章题目
     * @param article
     * @param request
     * @param response
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "findSpecialList")
    public JSONObject findSpecialList(Article article, HttpServletRequest request, HttpServletResponse response,@RequestParam("title") String title,@RequestParam("categoryId") String categoryId) {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");

        article.setTitle(title);

        Page<Article> page = articleService.findPage(new Page<Article>(request, response), article, true);
        //article.setCategory();
        JSONObject object = new JSONObject();
        object.put("data", page.getList());
        //object.put("count",page.getCount());
        return object;
    }

    private void OutJSON(HttpServletResponse response, String data) {

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

}
