<%-- 
    Document   : loginPage
    Created on : 3 Dec 2024, 21.46.17
    Author     : ilham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
        <script src="https://cdn.tailwindcss.com"></script>
        <title>JSP Page</title>
    </head>
    <body >
        <!--<h1>Ini halaman login</h1>-->



        <div class="flex items-center justify-center min-h-screen bg-gray-100">
            <div
                class="relative flex flex-col m-6 space-y-8 bg-white shadow-2xl rounded-2xl md:flex-row md:space-y-0"
                >
                <!-- left side -->
                <div class=" flex flex-col justify-center p-8 md:p-14">
                    <span class="mb-3 text-4xl font-bold">Welcome back</span>
                    <span class="font-light text-gray-400 mb-8">
                        Welcom back! Please enter your details
                    </span>
                    <div class="py-4">
                        <span class="mb-2 text-md">Email</span>
                        <input
                            type="text"
                            class="w-full p-2 border border-gray-300 rounded-md placeholder:font-light placeholder:text-gray-500"
                            name="email"
                            id="email"
                            />
                    </div>
                    <div class="py-4">
                        <span class="mb-2 text-md">Password</span>
                        <input
                            type="password"
                            name="pass"
                            id="pass"
                            class="w-full p-2 border border-gray-300 rounded-md placeholder:font-light placeholder:text-gray-500"
                            />
                    </div>
                   
                    <button
                        class="w-full bg-black text-white p-2 rounded-lg mb-6 hover:bg-white hover:text-black hover:border hover:border-gray-300"
                        >
                        Sign in
                    </button>
                    
                    <div class="text-center text-gray-400">
                        Dont'have an account?
                        <a href="registerPage.jsp" class="font-bold text-black">Sign up for free</a>
                    </div>
                </div>
                <!-- {/* right side */} -->
                <div class="  relative">
                    <img
                        src="<%=request.getContextPath()%>/assets/login.jpg"
                        alt="img"
                        class=" w-[550px] h-full hidden rounded-r-2xl md:block object-cover"
                        />
                    <!-- text on image  -->
<!--                    <div
                        class="absolute hidden bottom-10 right-6 p-6 bg-white bg-opacity-30 backdrop-blur-sm rounded drop-shadow-lg md:block"
                        >
                        <span class="text-white text-xl"
                              >We've been uesing Untitle to kick"<br />start every new project
                            and can't <br />imagine working without it."
                        </span>
                    </div>-->
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>

    </body>
</html>
