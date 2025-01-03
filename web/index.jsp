<%-- 
    Document   : loginPage
    Created on : 3 Dec 2024, 21.23.48
    Author     : ilham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />-->
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Fitrent</title>
    </head>
    <body class="pb-8">
        <nav class=" flex items-center justify-between px-36 py-4 border-b">
            <!-- Logo -->
            <div class="flex items-center space-x-2">
                <!--<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Airbnb_Logo_B%C3%A9lo.svg/1024px-Airbnb_Logo_B%C3%A9lo.svg.png" alt="Logo" class="h-6">-->
                <!--<span class="text-lg font-semibold">Fitrent</span>-->
                <img class="w-24" src="<%=request.getContextPath()%>/assets/logo.svg" alt="alt"/>
            </div>

            <div class="space-x-4">
                <a href="loginPage.jsp" class="hidden md:inline bg-sky-600 text-white px-4 py-2 rounded-full">Sign in</a>
                <a href="registerPage.jsp" class="hidden md:inline bg-sky-600 text-white px-4 py-2 rounded-full">Sign up</a>
            </div>

        </nav>

        <!-- hero section-->
        <section class="px-6 container mx-auto md:flex md:justify-between items-center my-6 space-x-6">
            <div class="md:w-3/6 text-center md:text-left">
                <!--<h4 class="text-xl font-bold">New Feature</h4>-->
                <h3 class="text-5xl font-bold mb-5">Solusi Mudah untuk Menyewa Fasilitas Olahraga</h3>
                <p class="text-gray-500 mb-5">Nikmati Akses Mudah ke Fasilitas Olahraga Milik Pemerintah, Kapan Saja dan di Mana Saja</p>
                <!--<a href="registerPage.jsp" class="bg-sky-600 text-white px-4 py-2 rounded-3xl">Create Account</a>-->
                <a href="registerPage.jsp"  class="bg-sky-600 text-white px-4 py-2 rounded-3xl">Create Account</a>
            </div>
            <img class="md:w-2/5" src="<%=request.getContextPath()%>/assets/hero1.jpg" />
        </section>

        <!-- statistic-->
        <section class="container mx-auto space-x-6 md:flex md:justify-between items-center">
            <img src="<%=request.getContextPath()%>/assets/hero2.jpg" class="w-72 md:w-3/5 /mx-auto" alt="" />
            <div class="md:w-3/6 text-center md:text-left">
                <!--<h4 class="text-xl font-bold">Statistic</h4>-->
                <h3 class="text-3xl font-bold mb-5">Apa yang FitRent Tawarkan untuk Anda?</h3>
                <p class="text-gray-500">Nikmati kemudahan akses ke berbagai fasilitas olahraga milik pemerintah dengan cepat, praktis, dan transparan. FitRent hadir untuk mendukung gaya hidup aktif dan sehat Anda!</p>
                <div class="flex justify-between py-6 max-w-80 mx-auto">
                    <!-- portfolio-->
                    <div class="text-center text-gray-500">
                        <h4 class="text-2xl font-bold text-gray-900">100+</h4>
                        <p>Fasilitas Tersedia</p>
                    </div>
                    <!-- Clients -->
                    <div class="text-center text-gray-500">
                        <h4 class="text-2xl font-bold text-gray-900">10.000+</h4>
                        <p>Pengguna</p>
                    </div>
                    <!-- portfolio-->
                    <div class="text-center text-gray-500">
                        <h4 class="text-2xl font-bold text-gray-900">4.8</h4>
                        <p>Rating</p>
                    </div>
                </div>
                <!--<p class="text-gray-500 mb-4"><span class="font-bold">info</span> Lorem ipsum dolor, sit amet consectetur adipisicing elit. Autem, voluptatibus?</p>-->
                <!--<button class="bg-sky-600 text-white px-4 py-2 rounded-3xl">Detail</button>-->
            </div>
        </section>
        <!-- testimonies -->
        <section class="container mx-auto p-10 my-5 text-center">
            <h4 class="text-xl font-bold">Our Developer</h4>
            <h3 class="text-3xl font-bold mb-5">The best of the best</h3>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mt-16">
                <!-- person 1 -->
                <div class="bg-gray-100 rounded-md border border-gray-200">
                    <img class="w-96 mx-auto -mt-8" src="<%=request.getContextPath()%>/assets/person1.jpg" alt="Person 1" />
                    <h5 class="font-bold pt-5 text-center">Muhammad Razky Abdie Pratama</h5>
                    <p class="p-5 text-gray-500 text-center">103022300047</p>
                </div>
                <!-- person 2 -->
                <div class="bg-gray-100 rounded-md border border-gray-200">
                    <img class="w-96 mx-auto -mt-8" src="<%=request.getContextPath()%>/assets/person2.jpg" alt="Person 2" />
                    <h5 class="font-bold pt-5 text-center">Maulana Jidan Azizi</h5>
                    <p class="p-5 text-gray-500 text-center">103022300083</p>
                </div>
                <!-- person 3 -->
                <div class="bg-gray-100 rounded-md border border-gray-200">
                    <img class="w-96 mx-auto -mt-8" src="<%=request.getContextPath()%>/assets/person3.jpg" alt="Person 3" />
                    <h5 class="font-bold pt-5 text-center">Damai Putra Yudha</h5>
                    <p class="p-5 text-gray-500 text-center">103022300029</p>
                </div>
            </div>
            <div id="additional-people" class="hidden grid grid-cols-1 md:grid-cols-3 gap-8 mt-16">
                <!-- person 4 -->
                <div class="bg-gray-100 rounded-md border border-gray-200">
                    <img class="w-96 mx-auto " src="<%=request.getContextPath()%>/assets/person4.jpg" alt="Person 4" />
                    <h5 class="font-bold pt-5 text-center">Tubagus Aulia Aariz </h5>
                    <p class="p-5 text-gray-500 text-center">103022300141</p>
                </div>
                <!-- person 5 -->
                <div class="bg-gray-100 rounded-md border border-gray-200">
                    <img class="w-96 mx-auto " src="<%=request.getContextPath()%>/assets/person5.jpg" alt="Mohammad Ilham Firdaus" />
                    <h5 class="font-bold pt-5 text-center">Mohammad Ilham Firdaus</h5>
                    <p class="p-5 text-gray-500 text-center">10302230043</p>
                </div>
            </div>


            <button id="show-more" class="bg-sky-600 text-white px-4 py-2 rounded-3xl mt-6">Show all member</button>
        </section>
        <footer class="flex md:flex-row flex-col items-center mt-24 gap-3 justify-center font-medium">
            <p class="text-slate-800">Fitrent Developer</p>
        </footer>

        <script>
            // Handle button click
            document.getElementById('show-more').addEventListener('click', function () {
                const additionalPeople = document.getElementById('additional-people');
                if (additionalPeople.classList.contains('hidden')) {
                    additionalPeople.classList.remove('hidden');
                    this.textContent = 'Hide member';
                } else {
                    additionalPeople.classList.add('hidden');
                    this.textContent = 'Show all member';
                }
            });
        </script>





        <!--<script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>-->
    </body>
</html>
