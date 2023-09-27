package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    private ArrayList<Product> listOfProducts = new ArrayList<Product>(); //ArrayList를 Product로 캐스팅
    
    public ProductRepository() {
        Product Jizhilin = new Product("P1", "SD-108", 42900);
        Jizhilin.setDescription("느릅나무, 색상 6종");
        Jizhilin.setCategory("기타");
        Jizhilin.setManufacturer("JIZHILIN");
        Jizhilin.setUnitsInStock(1000);
        Jizhilin.setCondition("New");
        
        Product blueAngel = new Product("P2", "GRIT", 69800);
        blueAngel.setDescription("base wood, 색상 5종");
        blueAngel.setCategory("기타");
        blueAngel.setManufacturer("블루엔젤");
        blueAngel.setUnitsInStock(1000);
        blueAngel.setCondition("New");
        
        Product cantavil = new Product("P3", "ALLIE-100", 99000);
        cantavil.setDescription("spruce wood, 색상 1종");
        cantavil.setCategory("기타");
        cantavil.setManufacturer("칸타빌");
        cantavil.setUnitsInStock(1000);
        cantavil.setCondition("New");
        
        listOfProducts.add(Jizhilin);
        listOfProducts.add(blueAngel);
        listOfProducts.add(cantavil);
        
    }
    
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
}