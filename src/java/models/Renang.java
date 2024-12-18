package models;

public class Renang extends Facility {

    private int lenght;
    private int width;
    private int depth;
    private int numLanes;
    private String poolType;
    private boolean isIndoor;

    public Renang(int lenght, int width, int depth, int numLanes, String poolType, boolean isIndoor, String facilityID, String namaFasilitas, String lokasi, int harga, boolean isAvailable) {
        super(facilityID, namaFasilitas, lokasi, harga, isAvailable);
        this.lenght = lenght;
        this.width = width;
        this.depth = depth;
        this.numLanes = numLanes;
        this.poolType = poolType;
        this.isIndoor = isIndoor;
    }

    public int getLenght() {
        return lenght;
    }

    public void setLenght(int lenght) {
        if (lenght <= 0) {
            throw new IllegalArgumentException("Tinggi dari kolam harus lebih dari 0");
        }
        this.lenght = lenght;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        if (width <= 0) {
            throw new IllegalArgumentException("Lebar dari kolam harus lebih dari 0");
        }
        this.width = width;
    }

    public void setDepth(int depth) {
        if (depth <= 0) {
            throw new IllegalArgumentException("Kedalaman kolam harus lebih dari 0.");
        }
        this.depth = depth;
    }

    public int getDepth() {
        return depth;
    }

    public void setNumLanes(int numLanes) {
        if (numLanes <= 0) {
            throw new IllegalArgumentException("Jumlah jalur kolam harus lebih dari 0.");
        }
        this.numLanes = numLanes;
    }

    public int getNumLanes() {
        return numLanes;
    }

    public void setPoolType(String poolType) {
        if (poolType == null || poolType.trim().isEmpty()) {
            throw new IllegalArgumentException("Tipe kolam tidak boleh kosong atau null.");
        }
        this.poolType = poolType;
    }

    public String getPoolType() {
        return poolType;
    }

    public void setIsIndoor(boolean isIndoor) {
        this.isIndoor = isIndoor;
    }

    public boolean isIndoor() {
        return isIndoor;
    }

    @Override
    public String getNamaFasilitas() {
        return super.getNamaFasilitas();
    }

    @Override
    public String getFacilityID() {
        return super.getFacilityID();
    }

    @Override
    public String getLokasi() {
        return super.getLokasi();
    }

    @Override
    public int getHarga() {
        return super.getHarga();
    }

    @Override
    public boolean isAvailable() {
        return super.isAvailable();
    }
}
