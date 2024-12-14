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
        <!-- Filter Bar -->
        <div class="flex items-center justify-between px-14 py-4 bg-white border-b">
            <div class="container mx-auto px-6 py-4">
                <div class="flex space-x-4 overflow-x-auto no-scrollbar">
                    <button class="flex-none text-sm font-medium border-b-2 border-black px-4 py-2">Rumah kecil</button>
                    <button class="flex-none text-sm text-gray-500 px-4 py-2">Ikon Pop</button>
                    <button class="flex-none text-sm text-gray-500 px-4 py-2">Pemandangan cantik</button>
                    <button class="flex-none text-sm text-gray-500 px-4 py-2">Wow!</button>
                    <button class="flex-none text-sm text-gray-500 px-4 py-2">Baru</button>
                    <button class="flex-none text-sm text-gray-500 px-4 py-2">Rumah A</button>
                    <button class="flex-none text-sm text-gray-500 px-4 py-2">Kolam renang keren</button>
                    <button class="flex-none text-sm text-gray-500 px-4 py-2">Lainnya</button>
                </div>
            </div>
            <div class="flex items-center space-x-4">
                <button class="flex items-center px-4 py-2 text-gray-500 border rounded-lg">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-4 h-4 mr-2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M4 7h16M4 12h16m-7 5h7" />
                    </svg>
                    Filter
                </button>

            </div>
        </div>

        <!-- Card Grid -->
        <div class="grid grid-cols-1 gap-6 px-14 py-8 md:grid-cols-2 lg:grid-cols-4">
            <!-- Card 1 -->
            <a href="facilityDetail.jsp" class="bg-white rounded-lg shadow">
                <div class="relative">
                    <img src="https://via.placeholder.com/300x200" alt="House" class="w-full rounded-t-lg">
                    <button class="absolute top-3 right-3 p-2 bg-white rounded-full shadow">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5 text-gray-500">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 21l-9-9 3-3L12 3l9 9-3 3z" />
                        </svg>
                    </button>
                </div>
                <div class="p-4">
                    <h3 class="text-sm font-semibold">Takut Tai, Thailand</h3>
                    <p class="text-sm text-gray-500">Berjarak 1.922 kilometer</p>
                    <p class="text-sm text-gray-500">11–16 Des</p>
                    <p class="mt-2 font-semibold">Rp1.109.849 malam</p>
                </div>
            </a>

            <!-- Card 2 -->
            <div class="bg-white rounded-lg shadow">
                <div class="relative">
                    <img src="https://via.placeholder.com/300x200" alt="House" class="w-full rounded-t-lg">
                    <button class="absolute top-3 right-3 p-2 bg-white rounded-full shadow">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5 text-gray-500">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 21l-9-9 3-3L12 3l9 9-3 3z" />
                        </svg>
                    </button>
                </div>
                <div class="p-4">
                    <h3 class="text-sm font-semibold">Tambon Huai Sat Yai, Thailand</h3>
                    <p class="text-sm text-gray-500">Berjarak 2.222 kilometer</p>
                    <p class="text-sm text-gray-500">5–10 Jan</p>
                    <p class="mt-2 font-semibold">Rp754.029 malam</p>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
    </body>
</html>