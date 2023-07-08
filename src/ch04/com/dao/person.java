package ch04.com.dao;

public class person {
    private int id = 20181004;
    private String name = "홍길순";

    public person() {

    }

    public int getId(){
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
}