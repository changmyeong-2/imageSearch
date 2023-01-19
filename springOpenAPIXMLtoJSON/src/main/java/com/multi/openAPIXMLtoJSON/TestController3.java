package com.multi.openAPIXMLtoJSON;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@Controller
public class TestController3 {
	@Autowired
	tourDAOinter dao;
	
	@RequestMapping("tourAAA")
	public void main() throws Exception {
		// fake endpoint that returns XML response
		// String URL = “http://www.mocky.io/v2/5c8bdd5c360000cd198f831e”;
		String URL = "http://apis.data.go.kr/B551011/KorWithService/searchKeyword?serviceKey=xm0GA26hFOFnF2FFWtQN6%2F6ZWvtnMDe%2FdQ1BbvEXVxcRiWaqHCRRYkJFxlx6rJdzn9G89w%2Bdff%2FK5dEtAfpdKg%3D%3D&keyword=%EC%A0%84%EB%A7%9D&MobileOS=ETC&MobileApp=AppTest&arrange=A&numOfRows=100&areaCode=6";
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder builder = factory.newDocumentBuilder();
		Document doc = builder.parse(URL);
		System.out.println(doc);
		
		// normalize XML response
		doc.getDocumentElement().normalize();
		NodeList nodeList = doc.getElementsByTagName("item");
		List<TourVO> emps = new ArrayList<>();
		System.out.println(nodeList.getLength());
		int id = 0;
		for (int temp = 0; temp < nodeList.getLength(); temp++) {
			Node nNode = nodeList.item(temp);
			Element eElement = (Element) nNode;
			System.out.println(eElement.getNodeName());
			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element elem = (Element) nNode;
				TourVO vo = new TourVO(
						
                        elem.getElementsByTagName("addr1").item(0).getTextContent(),
                        elem.getElementsByTagName("mapx").item(0).getTextContent(),
                        elem.getElementsByTagName("mapy").item(0).getTextContent(),
                        elem.getElementsByTagName("title").item(0).getTextContent(),
                        elem.getElementsByTagName("firstimage").item(0).getTextContent(),
                        elem.getElementsByTagName("contentid").item(0).getTextContent()
                        );
				
				dao.insert(vo);
                emps.add(vo);
			}
		} // for
		System.out.println(emps);
	}
	
	@RequestMapping("tour")
	public void list(TourVO vo, Model model) {
		List<TourVO> list = dao.list(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("textSearch")
	public void search(TourVO vo, Model model) {
		List<TourVO> list = dao.search(vo);
		model.addAttribute("list", list);
	}
}