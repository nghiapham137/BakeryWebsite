package Model;

public class Inline_item {
    private int itemId;
    private Product product;
    private int amount;
    private float unitPrice;

    public Inline_item(int itemId, Product product, int amount, float unitPrice) {
        super();
        this.itemId = itemId;
        this.product = product;
        this.amount = amount;
        this.unitPrice = unitPrice;
    }

    public Inline_item() {

    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }


    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public float getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(float unitPrice) {
        this.unitPrice = unitPrice;
    }
}
