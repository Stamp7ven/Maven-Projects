package First_project;

public class democlass {
	
	public String demo() {
		return "hello";
	}

	public static void main(String[] args) {
        System.out.println("Running from democlass main method!");
        democlass myDemo = new democlass(); // สร้าง Object ของ democlass
        System.out.println(myDemo.demo());  // เรียกใช้เมธอด demo()
    }

}
