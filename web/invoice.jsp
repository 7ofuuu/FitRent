<%-- 
    Document   : invoice.jsp
    Created on : 28 Dec 2024, 08.44.59
    Author     : damai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Fitrent</title>
</head>
<body>
<section class="py-6 bg-gray-100">
  <div class="max-w-4xl mx-auto bg-white shadow-lg rounded-lg p-6">
    <div class="flex justify-between items-center mb-6">
      <h2 class="text-xl font-bold uppercase">Invoice</h2>
      <a href="#!">
        <img class="w-24" src="<%=request.getContextPath()%>/assets/logo.svg" alt="Logo Fitrent" class="h-12">
      </a>
    </div>

    <div class="mb-6">
      <h4 class="font-semibold text-lg">From</h4>
      <address class="text-sm text-gray-600">
        <strong>Fitrent</strong><br>
        Jl. Telekomunikasi No. 1, Terusan Buahbatu, Bojongsoang.<br>
        Kota Bandung, Jawa Barat , 40257<br>
        Indonesia <br>
        Phone: +62 817723829238<br>
        Email: fitrentdeveloper@gmail.com
      </address>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
      <div>
        <h4 class="font-semibold text-lg">Bill To</h4>
        <address class="text-sm text-gray-600">
          <strong>Mason Carter</strong><br>
          7657 NW Prairie View Rd<br>
          Kansas City, Mississippi, 64151<br>
          United States<br>
          Phone: (816) 741-5790<br>
          Email: email@client.com
        </address>
      </div>
      <div>
        <div class="text-sm text-gray-600">
          <div class="flex justify-between">
            <span>Invoice #</span>
            <span>INT-001</span>
          </div>
          <div class="flex justify-between">
            <span>Account</span>
            <span>786-54984</span>
          </div>
          <div class="flex justify-between">
            <span>Order ID</span>
            <span>#9742</span>
          </div>
          <div class="flex justify-between">
            <span>Invoice Date</span>
            <span>12/10/2025</span>
          </div>
          <div class="flex justify-between">
            <span>Due Date</span>
            <span>18/12/2025</span>
          </div>
        </div>
      </div>
    </div>

    <div class="mb-6 overflow-x-auto">
      <table class="w-full text-left border-collapse border border-gray-200">
        <thead>
          <tr class="bg-gray-100 text-sm font-semibold uppercase">
            <th class="border border-gray-200 px-4 py-2">Qty</th>
            <th class="border border-gray-200 px-4 py-2">Nama Fasilitas</th>
            <th class="border border-gray-200 px-4 py-2 text-right">Harga Perjam</th>
            <th class="border border-gray-200 px-4 py-2 text-right">Amount</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="border border-gray-200 px-4 py-2">2</td>
            <td class="border border-gray-200 px-4 py-2">Lapangan A</td>
            <td class="border border-gray-200 px-4 py-2 text-right">75</td>
            <td class="border border-gray-200 px-4 py-2 text-right">150</td>
          </tr>
          <tr>
            <td class="border border-gray-200 px-4 py-2">1</td>
            <td class="border border-gray-200 px-4 py-2">Lapangan B</td>
            <td class="border border-gray-200 px-4 py-2 text-right">29</td>
            <td class="border border-gray-200 px-4 py-2 text-right">29</td>
          </tr>
          <tr>
            <td class="border border-gray-200 px-4 py-2">4</td>
            <td class="border border-gray-200 px-4 py-2">Lapangan C</td>
            <td class="border border-gray-200 px-4 py-2 text-right">32</td>
            <td class="border border-gray-200 px-4 py-2 text-right">128</td>
          </tr>
          <tr>
            <td class="border border-gray-200 px-4 py-2">1</td>
            <td class="border border-gray-200 px-4 py-2">Lapangam D</td>
            <td class="border border-gray-200 px-4 py-2 text-right">55</td>
            <td class="border border-gray-200 px-4 py-2 text-right">55</td>
          </tr>
          <tr>
            <td colspan="3" class="border border-gray-200 px-4 py-2 text-right">Subtotal</td>
            <td class="border border-gray-200 px-4 py-2 text-right">362</td>
          </tr>
          <tr class="font-bold">
            <td colspan="3" class="border border-gray-200 px-4 py-2 text-right uppercase">Total</td>
            <td class="border border-gray-200 px-4 py-2 text-right">Rp 495.1</td>
          </tr>
        </tbody>
      </table>
    </div>

    <div class="text-right">
      <button class="bg-green-600 text-white py-2 px-4 rounded shadow hover:bg-sky-600">Konfirmasi Bayar</button>
    </div>
  </div>
</section>
</body>
</html>
