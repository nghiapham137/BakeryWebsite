package Model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Inline_item> cart;

    public Cart() {
        cart = new ArrayList<Inline_item>();
    }

    public void AddProduct(Inline_item item) {
        if (cart.contains(item)) {
            Inline_item i = cart.get(cart.indexOf(item));
            i.setAmount(i.getAmount() + item.getAmount());
        }else {
            cart.add(item);
        }
    }

    public ArrayList<Inline_item> getItem() {
        return (ArrayList<Inline_item>) cart;
    }

    public boolean deleteProduct(Inline_item item) {
        if (cart.contains(item)) {
            cart.remove(item);
            return true;
        }
        return false;
    }

    public float getTotalPrice(){
        float price = 0;
        for (Inline_item item : cart) {
            price += item.getUnitPrice() * item.getAmount();
        }
        return price;
    }
}
