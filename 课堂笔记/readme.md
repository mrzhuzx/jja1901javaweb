# 课堂笔记
* 创建项目
* 上传到git上
* 创建团队下仓库位置
* git提交项目
## baseDao类工具类： jdbc.properties属性文件
* 测试数据库连接
* dao层设计
* 控制层设计
* 页面设计转化为动态网页JSP
*  使用git提交到仓库
## 工程路径 

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">  项目路径设置到跟目录
*  ./ 从根目录开始
*  ../返回上一级目录
*  二级页面上级页面，三级返回一级页面


## GIT 的使用
* master主枝上没有开发者  
* 每个人有自己的分支写代码
* 主支的项目是完成版，稳定版的项目
## 404 500 505
   404 找到不资源
   500  代码出错
   505  服务器出错
   
# GIT每个开发者创建自己的分支(拼音全名)
* 在分支上写自己的项目代码（可以重写我写过的项目代码）
* 提交分支到github上
* 拉取和合并分支代码



   

