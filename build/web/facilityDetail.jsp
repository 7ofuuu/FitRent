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
        <nav class=" flex items-center justify-between px-14 py-4 border-b">
            <!-- Logo -->
            <div class="flex items-center space-x-2">
                <!--<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Airbnb_Logo_B%C3%A9lo.svg/1024px-Airbnb_Logo_B%C3%A9lo.svg.png" alt="Logo" class="h-6">-->
                <!--<span class="text-lg font-semibold">Fitrent</span>-->
                <img class="w-24" src="<%=request.getContextPath()%>/assets/logo.svg" alt="alt"/>
            </div>

            <!-- Search bar -->
            <div class="px-1 flex items-center bg-white border rounded-full shadow-sm">
                <!--<div class="px-4 py-2 text-gray-600">Ke mana saja</div>-->

                <button id="dropdownDefaultButton" data-dropdown-toggle="dropdown" class=" text-gray-600 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center" type="button">Dropdown button <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                    </svg>
                </button>

                <!-- Dropdown menu -->
                <div id="dropdown" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 ">
                    <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownDefaultButton">
                        <li>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Dashboard</a>
                        </li>
                        <li>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Settings</a>
                        </li>
                        <li>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Earnings</a>
                        </li>
                        <li>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Sign out</a>
                        </li>
                    </ul>
                </div>

                <input class="px-4 py-2 text-gray-400  rounded-full focus:ring-2 focus:outline-none focus:ring-gray-400"  placeholder="cari fasilitas"></input>
                <button class="flex items-center justify-center w-8 h-8 text-white bg-sky-600 rounded-full ml-2">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-4 h-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M11 19c-3.866 0-7-3.134-7-7s3.134-7 7-7 7 3.134 7 7-3.134 7-7 7z" />
                    <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-4.35-4.35" />
                    </svg>
                </button>
            </div>

            <!-- Profile and Menu -->
            <div class="flex items-center space-x-4">
                <!--<span class="text-sm text-gray-600 cursor-pointer">Jadikan rumah Anda Airbnb</span>-->
                <button class="flex items-center justify-center w-8 h-8 bg-gray-200 rounded-full">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5 text-gray-600">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 6h10.5M6.75 12h10.5m-10.5 6h10.5" />
                    </svg>
                </button>
                <div class="w-8 h-8 bg-gray-400 rounded-full"></div>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="container mx-auto p-4">
            <!-- Title and Images -->
            <section class="bg-white shadow rounded-lg p-6">
                <h2 class="text-2xl font-bold mb-4">Vila tepi pantai seluas 7.000 meter persegi, mansion papan atas, layanan terbaik 12BR</h2>
                <div class="grid grid-cols-2 gap-4 mb-6">
                    <img src="https://via.placeholder.com/600x400" alt="Villa image" class="rounded-lg">
                    <div class="grid grid-cols-2 gap-4">
                        <img src="https://via.placeholder.com/300x200" alt="Image 1" class="rounded-lg">
                        <img src="https://via.placeholder.com/300x200" alt="Image 2" class="rounded-lg">
                        <img src="https://via.placeholder.com/300x200" alt="Image 3" class="rounded-lg">
                        <img src="https://via.placeholder.com/300x200" alt="Image 4" class="rounded-lg">
                    </div>
                </div>

                <!-- Details -->
                <div class="grid grid-cols-3 gap-4">
                    <div>
                        <h3 class="text-xl font-bold">Seluruh rumah di Pa Klok, Thailand</h3>
                        <p class="text-gray-600">12 tamu · 12 kamar tidur · 15 kamar mandi</p>
                    </div>
                    <div>
                        <h4 class="font-semibold">Fasilitas yang ditawarkan</h4>
                        <ul class="list-disc list-inside">
                            <li>Pemandangan teluk</li>
                            <li>Akses ke pantai</li>
                            <li>WiFi</li>
                            <li>Bak mandi air panas</li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="font-semibold">Harga</h4>
                        <p class="text-gray-800 text-lg font-bold">Rp94.364.509/malam</p>
                        <button class="mt-4 bg-red-500 text-white py-2 px-4 rounded">Pesan</button>
                    </div>
                </div>
            </section>

            <!-- Map and Reviews -->
            <section class="mt-6 grid grid-cols-3 gap-4">
                <!-- Map -->
                <div class="col-span-2 bg-white shadow rounded-lg p-6">
                    <h4 class="font-bold mb-2">Lokasi Anda</h4>
                    <div class="w-full h-64 bg-gray-300 flex items-center justify-center rounded-lg">
                        <span>Peta di sini</span>
                    </div>
                </div>

                <!-- Host Info -->
                <div class="bg-white shadow rounded-lg p-6">
                    <h4 class="font-bold mb-2">Tuan Rumah Anda</h4>
                    <div class="flex items-center space-x-4">
                        <div class="bg-gray-200 w-16 h-16 rounded-full"></div>
                        <div>
                            <p class="font-semibold">Wood</p>
                            <p class="text-gray-600">297 ulasan (4.74)</p>
                        </div>
                    </div>
                    <button class="mt-4 bg-blue-500 text-white py-2 px-4 rounded">Kirimkan Pesan</button>
                </div>
            </section>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>

    </body>
</html>
