<%-- 
    Document   : facilityDetail
    Created on : 11 Dec 2024, 20.23.33
    Author     : ilham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="/style/style.css"%></style>
        <script src="https://cdn.tailwindcss.com"></script>
        <title>JSP Page</title>
    </head>
    <body>

    <body>
        <!-- Header -->
        <nav class=" flex items-center justify-between px-20 py-4 border-b">
            <!-- Logo -->
            <div class="flex items-center space-x-2">
                <!--<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Airbnb_Logo_B%C3%A9lo.svg/1024px-Airbnb_Logo_B%C3%A9lo.svg.png" alt="Logo" class="h-6">-->
                <!--<span class="text-lg font-semibold">Fitrent</span>-->
                <a href="userHome.jsp"> <img class="w-24" src="<%=request.getContextPath()%>/assets/logo.svg" alt="alt"/></a>
            </div>

            <!-- Search bar -->
            <div class="flex items-center bg-white border rounded-full shadow-sm w-2/5 ">
                <input 
                    class="flex-1 px-4 py-2 text-gray-800 rounded-full focus:ring-2 focus:outline-none focus:ring-transparent"  
                    placeholder="cari fasilitas"
                    />
                <button class="flex items-center justify-center w-8 h-8 text-white bg-sky-600 rounded-full mr-2">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-4 h-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M11 19c-3.866 0-7-3.134-7-7s3.134-7 7-7 7 3.134 7 7-3.134 7-7 7z" />
                    <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-4.35-4.35" />
                    </svg>
                </button>
            </div>


            <!-- Logout -->
            <div class="flex items-center space-x-4">
                <!--<span class="text-sm text-gray-600 cursor-pointer">Jadikan rumah Anda Airbnb</span>-->
                <button id="dropdownDefaultButton" data-dropdown-toggle="dropdown-logout" class="flex items-center justify-center w-8 h-8 bg-gray-200 rounded-full">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5 text-gray-600">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 6h10.5M6.75 12h10.5m-10.5 6h10.5" />
                    </svg>
                </button>
                <!-- Dropdown menu -->
                <div id="dropdown-logout" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 ">
                    <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownDefaultButton">
                        <li>
                            <a href="#" class="text-black block px-4 py-2 hover:bg-gray-100 ">Logout</a>
                            <a href="lihatPesanan.jsp" class="text-black block px-4 py-2 hover:bg-gray-100 ">Lihat Pesanan</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="px-20 mb-20">

            <!-- Listing Title and Images -->
            <section class="bg-white p-6 rounded-lg">
                <h1 class="text-2xl font-bold mb-4">Gor C-Tra Arena</h1>
                <div class="grid grid-cols-2 gap-4 mb-6">
                    <!-- Gambar Utama (50%) -->
                    <div class="h-full">
                        <img src="<%=request.getContextPath()%>/assets/c-tra-arena.jpg" alt="Gor C-tra" class="h-full w-full object-cover rounded-lg">
                    </div>

                    <!-- Gambar Lainnya (50%) -->
                    <div class="grid grid-cols-2 gap-4 h-1/2">
                        <img src="<%=request.getContextPath()%>/assets/ctra1.jpg" alt="Image 1" class="h-full w-full object-cover rounded-lg">
                        <img src="<%=request.getContextPath()%>/assets/ctra2.jpg" alt="Image 1" class="h-full w-full object-cover rounded-lg">
                        <img src="<%=request.getContextPath()%>/assets/ctra3.jpg" alt="Image 1" class="h-full w-full object-cover rounded-lg">
                        <img src="<%=request.getContextPath()%>/assets/ctra4.jpg" alt="Image 1" class="h-full w-full object-cover rounded-lg">
                    </div>
                </div>

            </section>

            <!-- Details Section -->
            <section class="bg-white p-6 rounded-lg shadow mb-8">
                <h2 class="text-xl font-bold mb-4">Jl. Cikutra No.278, Neglasari, Kec. Cibeunying Kaler, Kota Bandung, Jawa Barat 40124</h2>
                <p class="text-gray-700 mb-4">Kapasitas penonton 1500 · Full Court</p>
                <div class="grid grid-cols-2 gap-4">
                    <div class="w-1/2">
                        <h3 class="text-lg font-bold mb-2">Detail Fasilitas</h3>
                        <ul class="list-disc list-inside text-gray-700">
                            <li>Jumlah Lapangan: 1</li>
                            <li>Jumlah Ring: 2</li>
                            <li>Jenis Lapangan: Kayu</li>
                            <li>Indoor</li>
                        </ul>
                    </div>
                    <div class="">
                        <h2 class="text-xl font-bold mb-4">Pemesanan</h2>
                    <p class="text-gray-700 mb-4">Harga per jam: Rp1.500.000</p>
                    <div class="flex items-center space-x-4">
                        <input type="date" class="border border-gray-300 p-2 rounded-lg">
                        <!--<input type="date" class="border border-gray-300 p-2 rounded-lg">-->
                        <form class="max-w-[16rem] grid grid-cols-2 gap-4">
                            <div>
                                <!--<label for="start-time" class="block text-sm font-medium text-gray-900 ">Start time:</label>-->
                                <div class="relative">
                                    <div class="absolute inset-y-0 end-0 top-0 flex items-center pe-3.5 pointer-events-none">
                                        <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <!--<path fill-rule="evenodd" d="M2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10S2 17.523 2 12Zm11-4a1 1 0 1 0-2 0v4a1 1 0 0 0 .293.707l3 3a1 1 0 0 0 1.414-1.414L13 11.586V8Z" clip-rule="evenodd"/>-->
                                        </svg>
                                    </div>
                                    <input type="time" id="start-time" class="bg-gray-50 border leading-none border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500" min="09:00" max="18:00" value="00:00" required />
                                </div>
                            </div>

                            <div>
                                <!--<label for="end-time" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">End time:</label>-->
                                <div class="relative">
                                    <div class="absolute inset-y-0 end-0 top-0 flex items-center pe-3.5 pointer-events-none">
                                        <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <!--<path fill-rule="evenodd" d="M2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10S2 17.523 2 12Zm11-4a1 1 0 1 0-2 0v4a1 1 0 0 0 .293.707l3 3a1 1 0 0 0 1.414-1.414L13 11.586V8Z" clip-rule="evenodd"/>-->
                                        </svg>
                                    </div>
                                    <input type="time" id="end-time" class="bg-gray-50 border leading-none border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400  dark:focus:ring-blue-500 dark:focus:border-blue-500" min="09:00" max="18:00" value="00:00" required />
                                </div>
                            </div>
                        </form>
                        <a href="invoice.jsp" class="bg-blue-600 text-white px-4 py-2 rounded-lg">Pesan</a>
                    </div>
                    </div>
                </div>
            </section>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js">
            document.addEventListener("DOMContentLoaded", function () {
                const tabs = document.querySelectorAll(".tab");
                const content = document.getElementById("content");

                tabs.forEach((tab) => {
                    tab.addEventListener("click", function () {
                        // Remove active class from all tabs
                        tabs.forEach((t) => t.classList.remove("active"));
                        // Add active class to the clicked tab
                        this.classList.add("active");
                    });
                });
            });

        </script>
        <script>

        </script>
        <script src="./js/script.js"></script>
    </body>
</html>
