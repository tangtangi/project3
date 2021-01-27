package com.dominos.domain;

public class OrderVO {

   private int uid;
   private int order_uid;
   private String user_id;
   private String pizza;
   private int price_L;
   private String size_L;
   private String image;
   private String image_o;
   private String image_s;
   private int count;
   private String signdate;
   public int getUid() {
      return uid;
   }
   public void setUid(int uid) {
      this.uid = uid;
   }
   public int getOrder_uid() {
      return order_uid;
   }
   public void setOrder_uid(int order_uid) {
      this.order_uid = order_uid;
   }
   public String getUser_id() {
      return user_id;
   }
   public void setUser_id(String user_id) {
      this.user_id = user_id;
   }
   public String getPizza() {
      return pizza;
   }
   public void setPizza(String pizza) {
      this.pizza = pizza;
   }
   public int getPrice_L() {
      return price_L;
   }
   public void setPrice_L(int price_L) {
      this.price_L = price_L;
   }
   public String getSize_L() {
      return size_L;
   }
   public void setSize_L(String size_L) {
      this.size_L = size_L;
   }
   public String getImage() {
      return image;
   }
   public void setImage(String image) {
      this.image = image;
   }
   public String getImage_o() {
      return image_o;
   }
   public void setImage_o(String image_o) {
      this.image_o = image_o;
   }
   public String getImage_s() {
      return image_s;
   }
   public void setImage_s(String image_s) {
      this.image_s = image_s;
   }
   public int getCount() {
      return count;
   }
   public void setCount(int count) {
      this.count = count;
   }
   public String getSigndate() {
      return signdate;
   }
   public void setSigndate(String signdate) {
      this.signdate = signdate;
   }
   @Override
   public String toString() {
      return "OrderGiftVO [uid=" + uid + ", order_uid=" + order_uid + ", user_id=" + user_id + ", pizza=" + pizza
            + ", price_L=" + price_L + ", size_L=" + size_L + ", image=" + image + ", image_o=" + image_o
            + ", image_s=" + image_s + ", count=" + count + ", signdate=" + signdate + "]";
   }
   
   
   
}