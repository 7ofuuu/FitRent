package com.mycompany.fitrent;

public class Voli extends Facility {

    private int lenght;
    private int width;
    private int netHeight;
    private String floorType;
    private boolean isIndoor;

    public Voli(int lenght, int width, int netHeight, String floorType,
            boolean isIndoor, String facilityID, String namaFasilitas,
            String lokasi, int harga, boolean available) {
        super(facilityID, namaFasilitas, lokasi, harga, available);
        this.lenght = lenght;
        this.width = width;
        this.netHeight = netHeight;
        this.floorType = floorType;
        this.isIndoor = isIndoor;
    }

    public int getLenght() {
        return lenght;
    }

    public int getWidth() {
        return width;
    }

    public int getNetHeight() {
        return netHeight;
    }

    public String getFloorType() {
        return floorType;
    }

    public boolean isIndoor() {
        return isIndoor;
    }

    public void setLenght(int lenght) {
        if (lenght <= 0) {
            throw new IllegalArgumentException("Lebar lapangan harus lebih dari 0");
        }
        this.lenght = lenght;
    }

    public void setWidth(int width) {
        if (width <= 0) {
            throw new IllegalArgumentException("Lebar lapangan harus lebih dari 0");
        }
        this.width = width;
    }

    public void setNetHeight(int netHeight) {
        if (netHeight <= 0) {
            throw new IllegalArgumentException("Tinggi net harus lebih dari 0");
        }
        this.netHeight = netHeight;
    }

    public void setFloorType(String floorType) {
        if (floorType == null || floorType.trim().isEmpty()) {
            throw new IllegalArgumentException("Tipe lantai lapangan tidak boleh kosong.");
        }
        this.floorType = floorType;
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
