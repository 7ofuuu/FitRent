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

        window.onload = loadDates;
    </script>
</head>
<body class="bg-gray-100">
    <div class="flex min-h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-gray-800 text-white p-6">
            <h2 class="text-2xl font-bold mb-4">Admin Panel</h2>
            <nav class="space-y-2">
                <a href="#dashboard" class="block py-2 px-4 rounded hover:bg-gray-700">Dashboard</a>
                <a href="#addField" class="block py-2 px-4 rounded hover:bg-gray-700">Tambah Lapangan</a>
                <a href="#schedule" class="block py-2 px-4 rounded hover:bg-gray-700">Lihat Jadwal Lapangan</a>
                <a href="#clear" class="block py-2 px-4 rounded hover:bg-gray-700">Kosongkan Jadwal</a>
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
                        <!-- Pengumuman akan ditampilkan di sini -->
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
                <h1 class="text-3xl font-bold mb-4">Tambah Lapangan</h1>
                <div class="bg-white shadow rounded p-6">
                    <form action="/addField" method="POST">
                        <div class="mb-4">
                            <label for="fieldName" class="block text-gray-700 font-semibold mb-2">Nama Lapangan</label>
                            <input type="text" id="fieldName" name="fieldName" class="w-full border border-gray-300 rounded px-3 py-2" required>
                        </div>
                        <div class="mb-4">
                            <label for="fieldType" class="block text-gray-700 font-semibold mb-2">Jenis Lapangan</label>
                            <input type="text" id="fieldType" name="fieldType" placeholder="Misal: Sepak Bola, Basket" class="w-full border border-gray-300 rounded px-3 py-2" required>
                        </div>
                        <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-600">Tambah Lapangan</button>
                    </form>
                </div>
            </section>

            <!-- Schedule Section -->
            <section id="schedule" class="mb-8">
                <h1 class="text-3xl font-bold mb-4">Lihat Jadwal Lapangan</h1>
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
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="border border-gray-300 px-4 py-2">Lapangan 1</td>
                            <td class="border border-gray-300 px-4 py-2">10:00 - 12:00</td>
                            <td class="border border-gray-300 px-4 py-2">Tersedia</td>
                        </tr>
                        <tr>
                            <td class="border border-gray-300 px-4 py-2">Lapangan 2</td>
                            <td class="border border-gray-300 px-4 py-2">13:00 - 15:00</td>
                            <td class="border border-gray-300 px-4 py-2">Disewa</td>
                        </tr>
                    </tbody>
                </table>
            </section>

            <!-- Clear Schedule Section -->
            <section id="clear" class="mb-8">
                <h1 class="text-3xl font-bold mb-4">Kosongkan Jadwal</h1>
                <div class="bg-white shadow rounded p-6">
                    <form action="/clearSchedule" method="POST">
                        <div class="mb-4">
                            <label for="field" class="block text-gray-700 font-semibold mb-2">Pilih Lapangan</label>
                            <select id="field" name="field" class="w-full border border-gray-300 rounded px-3 py-2">
                                <option value="1">Lapangan 1</option>
                                <option value="2">Lapangan 2</option>
                                <option value="3">Lapangan 3</option>
                            </select>
                        </div>
                        <button type="submit" class="bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600">Kosongkan</button>
                    </form>
                </div>
            </section>
        </main>
    </div>
</body>
</html>
