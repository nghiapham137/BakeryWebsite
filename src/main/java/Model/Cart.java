package Model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Inline_item> listItems;

    public Cart(List<Inline_item> listItems) {
        this.listItems = listItems;
    }

    public Cart() {

    }

    public List<Inline_item> getCart() {
        return listItems;
    }

    public void setCart(List<Inline_item> cart) {
        this.listItems = cart;
    }


    public boolean deleteProduct(Inline_item item) {
        if (listItems.contains(item)) {
            listItems.remove(item);
            return true;
        }
        return false;
    }

    public float getTotalPrice(){
        float price = 0;
        for (Inline_item item : listItems) {
            price += item.getUnitPrice() * item.getAmount();
        }
        return price;
    }
}
