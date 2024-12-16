<%-- 
    Document   : admin
    Created on : 12 Dec 2024, 23.20.07
    Author     : damai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Admin Control Panel for managing fields and schedules">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin Control Panel</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        function loadDates() {
            const dateSelect = document.getElementById('dateSelect');
            const today = new Date();
            for (let i = 0; i < 30; i++) {
                const futureDate = new Date(today);
                futureDate.setDate(today.getDate() + i);
                const option = document.createElement('option');
                option.value = futureDate.toISOString().split('T')[0];
                option.textContent = futureDate.toISOString().split('T')[0];
                dateSelect.appendChild(option);
            }
        }

        function clearSchedule() {
            if (confirm("Apakah Anda yakin ingin mengosongkan semua jadwal?")) {
                document.getElementById('scheduleTableBody').innerHTML = '';
                alert("Jadwal telah dikosongkan.");
            }
        }

        function deleteSchedule(row) {
            if (confirm("Apakah Anda yakin ingin menghapus jadwal ini?")) {
                row.parentElement.parentElement.remove();
                alert("Jadwal berhasil dihapus.");
            }
        }

        window.onload = loadDates;
    </script>
</head>
<body class="bg-gray-100">
    <div class="flex min-h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-gray-800 text-white p-6">
            <h2 class="text-2xl font-bold mb-4">
                 <!-- Logo -->
            <div class="flex items-center space-x-2">
                <!--<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Airbnb_Logo_B%C3%A9lo.svg/1024px-Airbnb_Logo_B%C3%A9lo.svg.png" alt="Logo" class="h-6">-->
                <!--<span class="text-lg font-semibold">Fitrent</span>-->
                <img class="w-24" src="<%=request.getContextPath()%>/assets/logo.svg" alt="alt"/>
            </div>
            </h2>
            <nav class="space-y-2">
                <a href="#dashboard" class="block py-2 px-4 rounded hover:bg-gray-700">Dashboard</a>
                <a href="#addField" class="block py-2 px-4 rounded hover:bg-gray-700">Tambah Lapangan</a>
                <a href="#schedule" class="block py-2 px-4 rounded hover:bg-gray-700">Lihat Jadwal Lapangan</a>
                <a href="#clear" onclick="clearSchedule()" class="block py-2 px-4 rounded hover:bg-gray-700">Kosongkan Jadwal</a>
            </nav>
        </aside>

        <!-- Content -->
        <main class="flex-1 p-6">
            <!-- Dashboard Section -->
            <section id="dashboard" class="mb-8">
                <h1 class="text-3xl font-bold mb-4">Dashboard</h1>
                <div class="bg-white shadow rounded p-6 mb-6">
                    <h2 class="text-xl font-semibold mb-2">Pengumuman</h2>
                    <div id="announcements" class="text-gray-700 space-y-4">
                        <div class="bg-gray-100 p-4 rounded flex justify-between items-center">
                            <p>Belum ada pengumuman.</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white shadow rounded p-6">
                    <h2 class="text-xl font-semibold mb-2">Analisis Lapangan</h2>
                    <p class="text-gray-700">Jumlah Lapangan Terpakai: 5</p>
                    <p class="text-gray-700">Jumlah Lapangan Kosong: 3</p>
                </div>
            </section>

            <!-- Add Announcement Section -->
            <section id="addAnnouncement" class="mb-8">
                <h1 class="text-3xl font-bold mb-4">Tambah Pengumuman</h1>
                <div class="bg-white shadow rounded p-6">
                    <form action="/addAnnouncement" method="POST">
                        <div class="mb-4">
                            <label for="announcementText" class="block text-gray-700 font-semibold mb-2">Isi Pengumuman</label>
                            <textarea id="announcementText" name="announcementText" rows="4" class="w-full border border-gray-300 rounded px-3 py-2" required></textarea>
                        </div>
                        <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">Tambah Pengumuman</button>
                    </form>
                </div>
            </section>
            <!-- Manage Announcements Section -->
            <section id="manageAnnouncements" class="mb-8">
                <h1 class="text-3xl font-bold mb-4">Kelola Pengumuman</h1>
                <div class="bg-white shadow rounded p-6">
                    <form action="/deleteAnnouncement" method="POST">
                        <div class="mb-4">
                            <label for="announcementId" class="block text-gray-700 font-semibold mb-2">Pilih Pengumuman untuk Dihapus</label>
                            <select id="announcementId" name="announcementId" class="w-full border border-gray-300 rounded px-3 py-2">
                                <option value="1">Pengumuman 1</option>
                                <option value="2">Pengumuman 2</option>
                                <option value="3">Pengumuman 3</option>
                            </select>
                        </div>
                        <button type="submit" class="bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600">Hapus Pengumuman</button>
                    </form>
                </div>
            </section>

            <!-- Add Field Section -->
            <section id="addField" class="mb-8">
                <h1 class="text-3xl font-bold mb-4">Tambah Fasilitas</h1>
                <div class="bg-white shadow rounded p-6">
                    <form action="/addField" method="POST" enctype="multipart/form-data">
                        <div class="mb-4">
                            <label for="fieldName" class="block text-gray-700 font-semibold mb-2">Nama Fasilitias</label>
                            <input type="text" id="fieldName" name="fieldName" class="w-full border border-gray-300 rounded px-3 py-2" required>
                        </div>
                        <div class="mb-4">
                            <label for="fieldType" class="block text-gray-700 font-semibold mb-2">Jenis Fasilitas</label>
                            <select id="text" name="fieldType" class="w-full border border-gray-300 rounded px-3 py-2">
                                <option value="1">Lapangan Futsal</option>
                                <option value="2">Lapangan Basket</option>
                                <option value="3">Lapangan Bulu Tangkis</option>
                                <option value="4">Kolam Voli</option>
                                <option value="5">Lapangan Lari</option>
                                <option value="6">Kolam Renang</option>
                            </select>
                        </div>
                        <div class="mb-4">
                            <label for="fieldAddres" class="block text-gray-700 font-semibold mb-2">Alamat Fasilitas</label>
                            <input type="text" id="fieldType" name="fieldAddres" placeholder="Misal: Jalan Arteri Raya 17, RT 06 RW 07, Kelurahan Macanan, Kecamatan Wonokromo, Kota Surabaya, Jawa Timur, 60241." class="w-full border border-gray-300 rounded px-3 py-2" required>
                        </div>
   
                            <div class="mb-4">
                                <label for="fieldDescription" class="block text-gray-700 font-semibold mb-2">Deskripsi Fasilitas</label>
                            <textarea id="description" rows="4" class="w-full border border-gray-300 rounded px-3 py-2" placeholder="Tulis deskripsi di sini..."></textarea>
                        </div>
                        <div class="mb-4">
                            <label for="fieldPrice" class="block text-gray-700 font-semibold mb-2">Harga Fasilitas Perjam</label>
                            <input type="text" id="fieldPrice" name="fieldAddres" placeholder="Misal: Rp.100.000,00" class="w-full border border-gray-300 rounded px-3 py-2" required>
                        </div>
                        <div class="mb-4">
                            <label for="fieldImage" class="block text-gray-700 font-semibold mb-2">Foto Fasilitas</label>
                            <input type="file" id="fieldImage" name="fieldImage" accept="image/*" class="w-full border border-gray-300 rounded px-3 py-2" required>
                        </div>
                        <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-600">Tambah Lapangan</button>
                    </form>
                </div>
            </section>

            <!-- Schedule Section -->
            <section id="schedule" class="mb-8">
                <h1 class="text-3xl font-bold mb-4">Lihat Jadwal Fasilitas</h1>
                <div class="mb-4">
                    <label for="FacilitySelect" class="block text-gray-700 font-semibold mb-2">Pilih Fasilitas</label>
                     <select id="FacilitySelect" class="w-full border border-gray-300 rounded px-3 py-2">
                         <option value="1">Lapangan A</option>
                                <option value="2">Lapangan B</option>
                                <option value="3">Lapangan C</option>  
                    </select>
                </div>
                <div class="mb-4">
                    <label for="dateSelect" class="block text-gray-700 font-semibold mb-2">Pilih Tanggal</label>
                    <select id="dateSelect" class="w-full border border-gray-300 rounded px-3 py-2">
                        <!-- Tanggal akan dimuat dengan JavaScript -->
                    </select>
                </div>
                <table class="w-full border-collapse border border-gray-300 bg-white shadow">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="border border-gray-300 px-4 py-2">Lapangan</th>
                            <th class="border border-gray-300 px-4 py-2">Waktu</th>
                            <th class="border border-gray-300 px-4 py-2">Status</th>
                            <th class="border border-gray-300 px-4 py-2">Aksi</th>
                        </tr>
                    </thead>
                    <tbody id="scheduleTableBody">
                        <tr>
                            <td class="border border-gray-300 px-4 py-2">Lapangan 1</td>
                            <td class="border border-gray-300 px-4 py-2">10:00 - 12:00</td>
                            <td class="border border-gray-300 px-4 py-2">Tersedia</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">
                                <button onclick="deleteSchedule(this)" class="bg-red-500 text-white px-2 py-1 rounded hover:bg-red-600">Hapus</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="border border-gray-300 px-4 py-2">Lapangan 2</td>
                            <td class="border border-gray-300 px-4 py-2">13:00 - 15:00</td>
                            <td class="border border-gray-300 px-4 py-2">Disewa</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">
                                <button onclick="deleteSchedule(this)" class="bg-red-500 text-white px-2 py-1 rounded hover:bg-red-600">Hapus</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </section>
        </main>
    </div>
</body>
</html>
