package com.multi.openAPIXMLtoJSON;



public class TourVO {
	String addr1;
	String mapx;
	String mapy;
	String title;
	String img;
	String contentid;
	public TourVO(String addr1, String mapx, String mapy, String title, String img, String contentid) {
		super();
		this.addr1 = addr1;
		this.mapx = mapx;
		this.mapy = mapy;
		this.title = title;
		this.img = img;
		this.contentid = contentid;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getMapx() {
		return mapx;
	}
	public void setMapx(String mapx) {
		this.mapx = mapx;
	}
	public String getMapy() {
		return mapy;
	}
	public void setMapy(String mapy) {
		this.mapy = mapy;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContentid() {
		return contentid;
	}
	public void setContentid(String contentid) {
		this.contentid = contentid;
	}
	@Override
	public String toString() {
		return "TourVO [addr1=" + addr1 + ", mapx=" + mapx + ", mapy=" + mapy + ", title=" + title + ", img=" + img
				+ ", contentid=" + contentid + "]";
	}
	
	
}
