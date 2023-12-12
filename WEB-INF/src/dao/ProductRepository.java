package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository { //상품 저장 / 데이터를 set 하는 클래스

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
       private static ProductRepository instance = new ProductRepository();

   public static ProductRepository getInstance(){
	return instance;
   }
       
// ArrayList를 Product로 캐스팅

	public ProductRepository() {
		Product phone = new Product("P1234", "인형 키링", 80000); //상품코드, 상품이름, 가격
		phone.setDescription("사이즈 : 6*8, 8*10, 10*12" + "<br>" + "컬러 : 화이트, 베이지, 블랙, 그레이");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        phone.setFilename("P1234.jpg");

        
		Product notebook = new Product("P1235", "아크릴 키링", 150000); 
		notebook.setDescription("사이즈 : 5*5, 6*6" + "<br>" + "컬러 : 핑크, 블루, 퍼플");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
        notebook.setFilename("P1235.jpg");


		Product tablet = new Product("P1236", "비즈 키링", 900000);
		tablet.setDescription("컬러 : 블랙, 실버, 핑크, 블루, 옐로우, 그린, 퍼플");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
        tablet.setFilename("P1236.jpg");

		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

    public void addProduct(Product product) {
	 listOfProducts.add(product);
    }

}
