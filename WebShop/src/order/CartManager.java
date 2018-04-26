package order;

import java.util.Hashtable;

public class CartManager {
	
	private Hashtable<String,OrderBean> hCart = new Hashtable<String,OrderBean>();
	
	
	public void addCart(OrderBean obean){
		
		
		String product_no = obean.getProduct_no();
		int quantity = Integer.parseInt(obean.getQuantity());
		
		
		if(quantity >0){ 
			
			
			if(hCart.containsKey(product_no)){
				
				
				OrderBean tempBean = (OrderBean)hCart.get(product_no);
				
				
				quantity += Integer.parseInt(tempBean.getQuantity());
				
				
				tempBean.setQuantity(Integer.toString(quantity));
				
				
				hCart.put(product_no, tempBean);
				

			
			} else {
				hCart.put(product_no, obean);
			}
		}
	}
	

	public Hashtable<String,OrderBean> getCartList() {
		return hCart;
	}
	

	public void updateCart(OrderBean obean) {
		String product_no = obean.getProduct_no();
		hCart.put(product_no, obean);
	}
	
	
	public void deleteCart(OrderBean obean) {
		String product_no = obean.getProduct_no();
		hCart.remove(product_no);
	}
}
