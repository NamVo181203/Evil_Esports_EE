package Entity;

public class PcComponent {
    private int id_pc;
    private String ten_pc;

    public PcComponent() {

    }

    public PcComponent(int id_pc, String ten_pc) {
        this.id_pc = id_pc;
        this.ten_pc = ten_pc;
    }

    public int getId_pc() {
        return id_pc;
    }

    public void setId_pc(int id_pc) {
        this.id_pc = id_pc;
    }

    public String getTen_pc() {
        return ten_pc;
    }

    public void setTen_pc(String ten_pc) {
        this.ten_pc = ten_pc;
    }

    @Override
    public String toString() {
        return "PcComponent{" +
                "id_pc=" + id_pc +
                ", ten_pc='" + ten_pc + '\'' +
                '}';
    }
}
