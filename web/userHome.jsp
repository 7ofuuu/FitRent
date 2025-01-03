<%-- 
    Document   : userHome
    Created on : 10 Dec 2024, 10.57.14
    Author     : ilham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<style src="<%=request.getContextPath()%>/style/style.css"></style>-->
        <style><%@include file="/style/style.css"%></style>
        <script src="https://cdn.tailwindcss.com"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class=" flex items-center justify-between px-20 py-4 border-b">
            <!-- Logo -->
            <div class="flex items-center space-x-2">
                <!--<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Airbnb_Logo_B%C3%A9lo.svg/1024px-Airbnb_Logo_B%C3%A9lo.svg.png" alt="Logo" class="h-6">-->
                <!--<span class="text-lg font-semibold">Fitrent</span>-->
                <a href="index.jsp"> <img class="w-24" src="<%=request.getContextPath()%>/assets/logo.svg" alt="alt"/></a>
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
        <!-- Filter Bar -->
        <div class="flex items-center justify-between bg-white border-b">
            <div class="container ml-20  py-4">
                <div class="flex space-x-4 overflow-x-auto no-scrollbar">
                    <a href="#all" onclick="selectMenu(this)" class="tab active menu-item flex-none text-sm text-gray-500 px-4 py-2">ALL</a>
                    <a href="#basket" id="bultang-tab" onclick="selectMenu(this)" class="tab menu-item flex-none text-sm text-gray-500 px-4 py-2">Basket</a>
                    <a href="#bultang" onclick="selectMenu(this)" class="tab menu-item flex-none text-sm text-gray-500 px-4 py-2">Bulu Tangkis</a>
                    <a href="#Futsal" onclick="selectMenu(this)" class="tab menu-item flex-none text-sm text-gray-500 px-4 py-2">Futsal</a>
                    <a href="#Tracklari" onclick="selectMenu(this)" class="tab menu-item flex-none text-sm text-gray-500 px-4 py-2">Track Lari</a>
                    <a href="#voly" onclick="selectMenu(this)" class="tab menu-item flex-none text-sm text-gray-500 px-4 py-2">Volly</a>
                </div>

            </div>
            <div class="flex items-center space-x-4">
                <button id="dropdownDefaultButton" data-dropdown-toggle="dropdown-filter" class=" flex items-center mr-14 px-4 py-2 text-gray-500 border rounded-lg">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-4 h-4 mr-2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M4 7h16M4 12h16m-7 5h7" />
                    </svg>
                    Filter
                </button>
                <!-- Dropdown menu -->
                <div id="dropdown-filter" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 ">
                    <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownDefaultButton">
                        <li>
                            <a href="#" class="text-black block px-4 py-2 hover:bg-gray-100 ">Harga Terendah</a>
                            <a href="#" class="text-black block px-4 py-2 hover:bg-gray-100 ">Terdekat</a>
                            <a href="#" class="text-black block px-4 py-2 hover:bg-gray-100 ">Rating Terbaik</a>
                            <!--<a href="#" class="text-black block px-4 py-2 hover:bg-gray-100 ">Futsal</a>-->
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <!-- Card Grid -->
        <div class="grid grid-cols-1 gap-6 px-20 py-8 md:grid-cols-2 lg:grid-cols-4">
            <!-- Card 1 -->
            <a href="facilityDetail.jsp" class="bg-white rounded-lg shadow">
                <div class="relative grid grid-rows-5">
                    <!-- Gambar (60% tinggi) -->
                    <div class="row-span-3 relative">
                        <img class="w-full h-full object-cover rounded-t-lg" src="<%=request.getContextPath()%>/assets/c-tra-arena.jpg" alt="House">
                    </div>

                    <!-- Teks (40% tinggi) -->
                    <div class="row-span-2 p-4">
                        <h3 class="text-sm font-semibold">GOR C-Tra Arena</h3>
                        <p class="text-sm text-gray-500">Jl. Cikutra No.278, Neglasari</p>
                        <!--<img class="w-6" src="<%=request.getContextPath()%>/assets/tag.png" alt="alt"/>-->
                        <p class="text-sm text-gray-500">Lapang basket</p>
                        <p class="mt-2 font-semibold">Rp 1.500.000 per jam</p>
                    </div>
                </div>
            </a>
            <!-- Card 2 -->
            <a href="facilityDetail.jsp" class="bg-white rounded-lg shadow">
                <div class="relative grid grid-rows-5">
                    <!-- Gambar (60% tinggi) -->
                    <div class="row-span-3 relative">
                        <img class="w-full h-full object-cover rounded-t-lg" src="<%=request.getContextPath()%>/assets/gor bulu tangkis.jpg" alt="House">
                    </div>

                    <!-- Teks (40% tinggi) -->
                    <div class="row-span-2 p-4">
                        <h3 class="text-sm font-semibold">Gor MSB</h3>
                        <p class="text-sm text-gray-500">Jl. Sukapura No.166, Mengger</p>
                        <!--<img class="w-6" src="<%=request.getContextPath()%>/assets/tag.png" alt="alt"/>-->
                        <p class="text-sm text-gray-500">Lapang Bulu Tangkis</p>
                        <p class="mt-2 font-semibold">Rp 50.000 per jam</p>
                    </div>
                </div>
            </a>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
    </body>
</html>
