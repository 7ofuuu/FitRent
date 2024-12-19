<%-- 
    Document   : registerPage
    Created on : 5 Dec 2024, 13.27.09
    Author     : ilham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Sign up page</title>
    </head>
    <body>
        <<form action="RegisterServlet" method="POST">
            <div class="flex items-center justify-center min-h-screen bg-gray-100">
                <div
                    class="relative flex flex-col m-6 space-y-8 bg-white shadow-2xl rounded-2xl md:flex-row md:space-y-0"
                    >
                    <!-- left side -->
                    <div class=" flex flex-col justify-center p-8 md:p-14">
                        <span class="mb-3 text-4xl font-bold">Sign Up to <a href="index.jsp">Fitrent</a></span>
                        <span class="font-light text-gray-400 mb-8">
                            create your account
                        </span>
                        <div class="py-4">
                            <span class="mb-2 text-md">Name</span>
                            <input
                                type="text"
                                class="w-full p-2 border border-gray-300 rounded-md placeholder:font-light placeholder:text-gray-500" placeholder="Jhon doe" required=""
                                name="name"
                                id="name"
                                />
                        </div>
                        <div class="py-4">
                            <span class="mb-2 text-md">Email</span>
                            <input
                                type="text"
                                class="w-full p-2 border border-gray-300 rounded-md placeholder:font-light placeholder:text-gray-500 " placeholder="name@company.com" required=""
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
                                class="w-full p-2 border border-gray-300 rounded-md placeholder:font-light placeholder:text-gray-500"  placeholder="••••••••" required=""
                                /> 
                        </div>

                        <button
                            class="w-full bg-black text-white p-2 rounded-lg mb-6 hover:bg-white hover:text-black hover:border hover:border-gray-300"
                            >
                            Sign up
                        </button>

                        <div class="text-center text-gray-400">
                            Already have an account?
                            <a href="loginPage.jsp" class="font-bold text-black">Sign in here</a>
                        </div>
                    </div>
                    <!-- {/* right side */} -->
                    <div class="  relative">
                        <img
                            src="<%=request.getContextPath()%>/assets/register.png"
                            alt="img"
                            class=" w-[550px] h-full hidden rounded-r-2xl md:block object-cover"
                            />
                    </div>
                </div>
            </div>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
    </body>
</html>
