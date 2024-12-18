package models;

public class BuluTangkis extends Facility {

    private int fieldNumber;
    private boolean isIndoor;

    public BuluTangkis(int fieldNumber, boolean isIndoor, String facilityID, String namaFasilitas, String lokasi, int harga, boolean isAvailable) {
        super(facilityID, namaFasilitas, lokasi, harga, isAvailable);
        this.fieldNumber = fieldNumber;
        this.isIndoor = isIndoor;
    }

    public void setFieldNumber(int fieldNumber) {
        if (fieldNumber == 0) {
            throw new IllegalArgumentException("Jumlah lapangan tidak boleh 0");
        }
        this.fieldNumber = fieldNumber;
    }

    public int getFieldNumber() {
        return fieldNumber;
    }

    public boolean isIsIndoor() {
        return isIndoor;
    }

    public void setIsIndoor(boolean isIndoor) {
        this.isIndoor = isIndoor;
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
