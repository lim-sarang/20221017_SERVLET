package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    private ArrayList<Product> listOfProducts = new ArrayList<Product>(); //ArrayList를 Product로 캐스팅
    private static ProductRepository instance = new ProductRepository();

   public static ProductRepository getInstance(){
	return instance;
   }

    public ProductRepository() {
        Product Jizhilin = new Product("P1", "SD-108", 42900);
        Jizhilin.setDescription("느릅나무, 색상 6종");
        Jizhilin.setCategory("acoustic guitar");
        Jizhilin.setManufacturer("JIZHILIN");
        Jizhilin.setUnitsInStock(1000);
        Jizhilin.setCondition("New");
        Jizhilin.setFilename("P1.jpg");
        
        Product blueAngel = new Product("P2", "GRIT", 69800);
        blueAngel.setDescription("base wood, 색상 5종");
        blueAngel.setCategory("acoustic guitar");
        blueAngel.setManufacturer("블루엔젤");
        blueAngel.setUnitsInStock(1000);
        blueAngel.setCondition("New");
        blueAngel.setFilename("P2.jpg");
        
        Product cantavil = new Product("P3", "ALLIE-100", 99000);
        cantavil.setDescription("spruce wood, 색상 1종");
        cantavil.setCategory("acoustic guitar");
        cantavil.setManufacturer("칸타빌");
        cantavil.setUnitsInStock(1000);
        cantavil.setCondition("New");
        cantavil.setFilename("P3.jpg");
        
        Product khoneim = new Product("P4", "3W017", 184000);
        khoneim.setDescription("paulownia, 색상 2종");
        khoneim.setCategory("electric guitar");
        khoneim.setManufacturer("코네임");
        khoneim.setUnitsInStock(1000);
        khoneim.setCondition("New");
        khoneim.setFilename("P4.jpg");
        
        Product hex = new Product("P5", "W300 S/MGY", 385000);
        hex.setDescription("indonesian mahogany, 색상 1종");
        hex.setCategory("electric guitar");
        hex.setManufacturer("헥스");
        hex.setUnitsInStock(1000);
        hex.setCondition("New");
        hex.setFilename("P5.jpg");
        
        Product lunas = new Product("P6", "GX-101", 255000);
        lunas.setDescription("basewood, 색상 5종");
        lunas.setCategory("electric guitar");
        lunas.setManufacturer("루나스");
        lunas.setUnitsInStock(1000);
        lunas.setCondition("New");
        lunas.setFilename("P6.jpg");
        
        listOfProducts.add(Jizhilin);
        listOfProducts.add(blueAngel);
        listOfProducts.add(cantavil);
        listOfProducts.add(khoneim);
        listOfProducts.add(hex);
        listOfProducts.add(lunas);
    }
    
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
    
    public Product getProductById(String productId){
        Product productById = null;
        
        for(int i = 0; i<listOfProducts.size();i++){
            Product product = listOfProducts.get(i);
            if(product != null && product.getProductId() != null&& product.getProductId().equals(productId)){
                productById = product;
                break;
            }
        }
        return productById;
    }
    
    public void addProduct(Product product){
        listOfProducts.add(product);
    }
}