package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅
    private static ProductRepository instance = new ProductRepository();

    
    public static ProductRepository getInstance(){
	return instance;
   }

	public ProductRepository() {
        
		Product phone = new Product("Apple_iPhone", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        phone.set name("Apple_iPhone.jpg");
        
		Product notebook = new Product("LG_Gram", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
        phone.setFilename("LG_Gram.jpg");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
        
        Product earbud = new Product("P1237", "Galaxy Buds Pro 2", 900000);
		earbud.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		earbud.setCategory("earbud");
		earbud.setManufacturer("Samsung");
		earbud.setUnitsInStock(1000);
		earbud.setCondition("Old");
        
        Product earbud2 = new Product("P1238", "Apple AirPods Pro 2", 900000);
		earbud2.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		earbud2.setCategory("earbud2");
		earbud2.setManufacturer("Samsung");
		earbud2.setUnitsInStock(1000);
		earbud2.setCondition("Old");
        
        Product a = new Product("P1239", "a", 900000);
		a.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		a.setCategory("a");
		a.setManufacturer("Samsung");
		a.setUnitsInStock(1000);
		a.setCondition("Old");
        
        Product b = new Product("P1240", "b", 900000);
		b.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		b.setCategory("b");
		b.setManufacturer("Samsung");
		b.setUnitsInStock(1000);
		b.setCondition("Old");
        
        Product c = new Product("P1241", "c", 900000);
		c.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		c.setCategory("c");
		c.setManufacturer("Samsung");
		c.setUnitsInStock(1000);
		c.setCondition("Old");
        
        Product d = new Product("P1236", "d", 900000);
		d.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		d.setCategory("d");
		d.setManufacturer("Samsung");
		d.setUnitsInStock(1000);
		d.setCondition("Old");
        
        
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		listOfProducts.add(earbud);
		listOfProducts.add(earbud2);
		listOfProducts.add(a);
		listOfProducts.add(b);
		listOfProducts.add(c);
		listOfProducts.add(d);
		// listOfProducts.add(상품명);
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

    
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public void addProduct(Product product){
        listOfProducts.add(product);
    }
    
}
