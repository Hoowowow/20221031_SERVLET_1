package dto;
import java.io.Serializable; //직렬화 클래스 연동

public class Product implements Serializable { // 인터페이스 선언
	private static final long serialVersionUID = -4274700572038677000L;
    
    private String filename; 	// 파일 이름 변수
	private String productId;	//상품 아이디
	private String pname;		//상품명
	private Integer unitPrice; //상품 가격
	private String description; //상품 설명
	private String manufacturer;//제조사
	private String category; 	//분류
	private long unitsInStock; //재고수 
	private String condition; 	//신상품 or 중고품 or 재생품
    private int quantity;	//장바구니에 담은 개수
    
    	public Product() { //인자값이 없는 생성자
		super();
	}

	public Product(String productId, String pname, Integer unitPrice) { // 인자값이 있는 생성자 > 호출되는 생성자
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}

	public String getProductId() { //왜 set/get 함수를 써야하는가 > pivate 변수에 접근해야하기 때문에
		return productId;
	}

	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}
    
    public void setFilename(String filename) { // 파일 이름 설정
	    this.filename = filename;
    }

     public String getFilename() { // 파일 이름 리턴
	    return filename;
    }
    
    public int getQuantity() {
	return quantity;
    }
    
    public void setQuantity(int quantity) {
	this.quantity = quantity;
    }

}