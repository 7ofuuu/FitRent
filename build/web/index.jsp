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
                <h4 class="text-xl font-bold">New Feature</h4>
                <h3 class="text-5xl font-bold mb-5">Coming Up With Fresh Ideas</h3>
                <p class="text-gray-500 mb-5">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veniam facere ea totam labore vitae autem.</p>
                <!--<a href="registerPage.jsp" class="bg-sky-600 text-white px-4 py-2 rounded-3xl">Create Account</a>-->
                <button id="myButton" onclick="openDialog();"  class="bg-sky-600 text-white px-4 py-2 rounded-3xl">Create Account</button>
            </div>
            <img class="md:w-2/5" src="<%=request.getContextPath()%>/assets/hero1.jpg" />
        </section>

        <!-- statistic-->
        <section class="container mx-auto space-x-6 md:flex md:justify-between items-center">
            <img src="<%=request.getContextPath()%>/assets/hero2.jpg" class="w-72 md:w-3/5 /mx-auto" alt="" />
            <div class="md:w-3/6 text-center md:text-left">
                <h4 class="text-xl font-bold">Statistic</h4>
                <h3 class="text-3xl font-bold mb-5">What We Can Do For You</h3>
                <p class="text-gray-500">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel alias cupiditate, dolores sunt similique expedita atque consequuntur obcaecati aspernatur est?</p>
                <div class="flex justify-between py-6 max-w-80 mx-auto">
                    <!-- portfolio-->
                    <div class="text-center text-gray-500">
                        <h4 class="text-2xl font-bold text-gray-900">20+</h4>
                        <p>Portfolios</p>
                    </div>
                    <!-- Clients -->
                    <div class="text-center text-gray-500">
                        <h4 class="text-2xl font-bold text-gray-900">100+</h4>
                        <p>Clients</p>
                    </div>
                    <!-- portfolio-->
                    <div class="text-center text-gray-500">
                        <h4 class="text-2xl font-bold text-gray-900">4.8</h4>
                        <p>Rating</p>
                    </div>
                </div>
                <!--<p class="text-gray-500 mb-4"><span class="font-bold">info</span> Lorem ipsum dolor, sit amet consectetur adipisicing elit. Autem, voluptatibus?</p>-->
                <button class="bg-sky-600 text-white px-4 py-2 rounded-3xl">Detail</button>
            </div>
        </section>
        <!-- testimonies -->
        <section class="container mx-auto p-10 my-5 text-center">
    <h4 class="text-xl font-bold">Our Developer</h4>
    <h3 class="text-3xl font-bold mb-5">The best of the best</h3>
    <div class="md:flex md:justify-between mt-16 space-x-8">
        <!-- person 1 -->
        <div class="bg-gray-100 md:w-1/3 rounded-md border border-gray-200">
            <img class="w-96 mx-auto -mt-8" src="<%=request.getContextPath()%>/assets/person1.jpg" />
            <h5 class="font-bold pt-5">Muhammad Razky Abdie Pratama</h5>
            <p class="p-5 text-gray-500">103022300047</p>
        </div>
        <!-- person 2 -->
        <div class="hidden md:inline bg-gray-100 w-1/3 rounded-md border border-gray-200">
            <img class="w-96 mx-auto -mt-8" src="<%=request.getContextPath()%>/assets/person2.jpg" />
            <h5 class="font-bold pt-5">Maulana Jidan Azizi</h5>
            <p class="p-5 text-gray-500">103022300083</p>
        </div>
        <!-- person 3 -->
        <div class="hidden md:inline bg-gray-100 w-1/3 rounded-md border border-gray-200">
            <img class="w-96 mx-auto -mt-8" src="<%=request.getContextPath()%>/assets/person3.jpg" />
            <h5 class="font-bold pt-5">Damai Putra Yudha</h5>
            <p class="p-5 text-gray-500">103022300029</p>
        </div>
    </div>
    <!-- Hidden people -->
    <div id="additional-people" class="hidden md:flex md:justify-between mt-8 space-x-8">
        <!-- person 4 -->
        <div class="bg-gray-100 w-1/3 rounded-md border border-gray-200">
            <img class="w-96 mx-auto -mt-8" src="<%=request.getContextPath()%>/assets/person4.jpg" />
            <h5 class="font-bold pt-5">Another Person</h5>
            <p class="p-5 text-gray-500">103022300XXX</p>
        </div>
        <!-- Add more people as needed -->
    </div>

    <button id="show-more" class="bg-sky-600 text-white px-4 py-2 rounded-3xl mt-6">See All Testimonies</button>
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
            this.textContent = 'Hide Testimonies';
        } else {
            additionalPeople.classList.add('hidden');
            this.textContent = 'See All Testimonies';
        }
    });
</script>





        <!--<script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>-->
    </body>
</html>
