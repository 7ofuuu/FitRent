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
                <div class="px-4 py-2 text-gray-600">Ke mana saja</div>
                <div class="px-4 py-2 text-gray-400 border-l">Minggu mana pun</div>
                <input class="px-10 py-2 text-gray-400 border-l rounded-full"  placeholder="cari fasilitas"></input>
                <button class="flex items-center justify-center w-8 h-8 text-white bg-sky-800 rounded-full ml-2">
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
    </body>
</html>
