package Model;

public class Inline_item {
    private int itemId;
    private String itemName;
    private int amount;
    private float unitPrice;

    public Inline_item(int itemId, String itemName, int amount, float unitPrice) {
        super();
        this.itemId = itemId;
        this.itemName = itemName;
        this.amount = amount;
        this.unitPrice = unitPrice;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
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
