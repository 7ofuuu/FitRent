package models;

public class Basket extends Facility {

    private int bucketNumber;
    private String floorType;
    private boolean isIndoor;

    public Basket(int bucketNumber, String floorType, boolean isIndoor, String facilityID, String namaFasilitas, String lokasi, int harga, boolean isAvailable) {
        super(facilityID, namaFasilitas, lokasi, harga, isAvailable);
        this.bucketNumber = bucketNumber;
        this.floorType = floorType;
        this.isIndoor = isIndoor;
    }

    public void setFloorType(String floorType) {
        if (floorType == null || floorType.trim().isEmpty()) {
            throw new IllegalArgumentException("Tipe lantai pada lapangan tidak boleh kosong.");
        }
        this.floorType = floorType;
    }

    public String getFloorType() {
        return floorType;
    }

    public void setIsIndoor(boolean isIndoor) {
        this.isIndoor = isIndoor;
    }

    public boolean getisIndoor() {
        return isIndoor;
    }

    public void setBucketNumber(int bucketNumber) {
        if (bucketNumber == 0 || bucketNumber < 0) {
            throw new IllegalArgumentException("Masukan angka yang valid.");
        }
        this.bucketNumber = bucketNumber;
    }

    public int getBucketNumber() {
        return bucketNumber;
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
