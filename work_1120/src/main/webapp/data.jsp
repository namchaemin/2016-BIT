<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
 int pagePerCnt = 20; //페이지당 표시수 
 int pageNo = Integer.parseInt(request.getParameter("pageNo"));
 int offSet = pageNo * pagePerCnt;
 System.out.println("pageNo=" + pageNo);
 
List<Map<String, String>> list = new ArrayList<Map<String, String>>(); //dao.getList(offset, pagePerCnt);
for(int i = 0; i < pagePerCnt ; i++){
	Map<String, String> data = new HashMap<String, String>();
	data.put("imgSrc","http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/" + (((offSet + i) % 60) + 1) + ".jpg");
	data.put("href","http://www.google.com/");
	data.put("desc","TakahiroK");
	data.put("text","7,680");
	data.put("iconLike","icon-like.png");
	data.put("profile","profile00.png");
	list.add(data);
}
/* 14 ~ 20라인은 디비에서 가져오는 영역*/
 
String retJsonStr = "[";
for (int i = 0; i < list.size(); i++) {
	Map<String, String> data = list.get(i);
	retJsonStr += "{";
	retJsonStr += "\"imgSrc\": \"" + data.get("imgSrc")  +"\",";
	retJsonStr += "\"href\": \"" + data.get("href")  +"\",";
	retJsonStr += "\"desc\": \"" + data.get("desc")  +"\",";
	retJsonStr += "\"text\" : \"" + data.get("text")  +"\",";
	 retJsonStr += "\"iconLike\" : \"" + data.get("iconLike")  +"\",";
	 retJsonStr += "\"profile\" : \"" + data.get("profile")  +"\"}";
	if ( i < (list.size()-1) ) {
		retJsonStr += ",";
	}
}
retJsonStr += "]";
 

			
			/**
			 * server 리턴 문자열은
			 [{
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/1.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/2.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/3.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/4.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/5.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/6.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/7.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/8.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/9.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/10.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/11.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/12.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/13.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/14.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/15.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/16.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/17.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/18.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/19.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/20.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/21.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/22.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/23.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/24.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/25.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/26.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/27.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/28.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/29.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}, {
					"imgSrc": "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/30.jpg",
					"href": "http://www.google.com/",
					"desc": "Cras justo odio bla bla bla bla bla bla bla bla",
					"text": "좋아요~"
				}]
			 */
%>
<%= retJsonStr %>