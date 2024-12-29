<%-- 
    Document   : transaksiberhasil
    Created on : 28 Dec 2024, 09.23.26
    Author     : damai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Payment Successful</title>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-100">
        <div class="container mx-auto px-4 py-16">
            <div class="bg-white rounded-lg shadow-md p-8">
                <div class="flex items-center justify-center mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-20 h-20 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                    </svg>
                </div>
                <h2 class="flex justify-center items-center text-2xl font-bold text-gray-800 mb-4">Payment Successful</h2>
                <p class="flex justify-center items-center text-gray-600 mb-6">Thank you for your purchase!</p>
                <div class="bg-gray-200 rounded-md p-4">
                    <dl>
                        <dt class="font-bold text-gray-800">Amount Paid:</dt>
                        <dd class="text-gray-600">$100.00</dd>
                        <dt class="font-bold text-gray-800">Date & Time:</dt>
                        <dd class="text-gray-600">January 22, 2024, 10:30 AM</dd>
                        <dt class="font-bold text-gray-8 00">Transaction ID:</dt>
                        <dd class="text-gray-600">ABC123XYZ</dd>
                    </dl>
                </div>
                <div class= "flex justify-center items-center ">
                    <div class="flex justify-center items-center py-6">
                        <button 
                            class="bg-green-600 text-white py-2 px-4 rounded shadow hover:bg-sky-600" 
                            onclick="window.location.href = '/FitrentApp/userHome.jsp';">
                            Return to Home
                        </button>
                        <button 
                            class="mx-10 bg-red-600 text-white py-2 px-4 rounded shadow hover:bg-sky-600" 
                            onclick="window.location.href = '/FitrentApp/DownloadStrukServlet';">
                            Download Struk
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <footer class="flex md:flex-row flex-col items-center mt-24 gap-3 justify-center font-medium">
        <p class="text-slate-800">Fitrent Developer</p>
    </footer>
</html>
