package Lap22.lab22;

public class SpecialtyPizza {
	private String name;
	private double Price;
	public SpecialtyPizza(String name, double price) {
		super();
		this.name = name;
		Price = price;
	}
	
	public SpecialtyPizza() {
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return Price;
	}

	public void setPrice(double price) {
		Price = price;
	}
	

}
