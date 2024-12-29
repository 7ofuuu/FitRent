<%-- 
    Document   : lihatPesanan
    Created on : 29 Dec 2024, 23.13.33
    Author     : ilham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.tailwindcss.com"></script>
        <title>JSP Page</title>
    </head>
    <body>
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
        <!--Card 1 start-->    
        <div class="border rounded-lg shadow p-4 bg-white max-w-xl mx-auto mt-6">
            <div class="flex justify-between items-center mb-2">
                <div>
                    <span class="text-sm font-medium text-gray-500">Pemesanan</span>
                    <span class="text-sm text-gray-700">14 Des 2024</span>
                    <div class="text-sm text-gray-500 mb-2">INV/20241214/MPL/4342376571</div>
                </div>
                <!--<span class="bg-green-100 text-green-600 text-sm font-semibold px-2 py-1 rounded">Selesai</span>-->
            </div>
            <!--<div class="text-sm text-gray-500 mb-2">INV/20241214/MPL/4342376571</div>-->
            <div class="flex items-start gap-4">
                <img
                    src="<%=request.getContextPath()%>/assets/ctra1.jpg"
                    alt="Gamen Gaming Mousepad"
                    class="w-20 h-20 object-cover rounded"
                    />
                <div>
                    <h2 class="font-semibold text-gray-800">
                        Gor C-tra arena
                    </h2>
                    <div class="text-sm text-gray-600">2 jam</div>
                </div>
            </div>
            <div class="flex justify-between items-center mt-4">
                <span class="font-semibold text-gray-800">Total Harga</span>
                <span class="font-bold text-lg text-gray-900">Rp.3.000.000</span>
            </div>
            <div class="flex gap-2 mt-4">
                <button 
                    class="border border-gray-300 text-white text-sm px-4 py-2 rounded hover:bg-red-700 bg-red-600"
                    onclick="window.location.href = '/FitrentApp/DownloadStrukServlet';"
                    >
                    Download Struk
                </button>
            </div>
        </div>
                    
        <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script> 
    </body>
</html>
