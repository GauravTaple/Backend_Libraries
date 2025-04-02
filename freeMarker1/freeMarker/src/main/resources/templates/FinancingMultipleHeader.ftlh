<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Custom Page Headers</title>
<style>
  @page {
    margin: 20mm;
  }
  @page :first {
    @top-center {
      content: "Header for First Page111";
    }
  }
  @page {
    @top-center   {
      content: "Header for Other Pages2222";
    }
  }

  .first-header {
    display: none;
  }

  .other-header {
    display: none;
  }

</style>
</head>
<body>
<header class="first-header">
  Header for the first page
</header>
<header class="other-header">
  Header for other pages
</header>

<main>
  <h1>Page Content</h1>
  <p>Content that spans multiple pages...</p>
  <div>
    <div>
      <table style="
          font-weight: normal;
          border-spacing: 0;
          border-collapse: collapse;
          margin-top: 20px;
          display: inline-block;
          font-size: 12px;
          font-family: EmbArial;
          line-height: 1.2;
          margin-top: 70px;
          border: 1px solid;
        ">
        <tr>
          <th style="padding: 0;font-weight: normal; ">
            Account No <br /> <span style="font-style: italic;">No Akaun</span>
          </th>
          <td class="modify-colon">:</td>
          <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;">${contextVariables.accountNo!}
          </td>
        </tr>

        <tr>
          <th style="padding: 0;font-weight: normal; padding-top: 10px;">
            Product Type <br /> <span style="font-style: italic;">Jenis Produk</span>
          </th>
          <td class="modify-colon" style="padding-top: 10px;">:</td>
          <td class="break" style="padding: 0;font-weight: normal;vertical-align: top; padding-top: 10px;">
            ${contextVariables.productType!}</td>
        </tr>

        <tr>
          <th style="padding: 0;font-weight: normal;padding-top: 10px;">
            *Financing Amount <br /> <span style="font-style: italic;">Amaun Pembiayaan</span>
          </th>
          <td class="modify-colon" style="padding-top: 10px;">:</td>
          <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;padding-top: 10px;">
            ${contextVariables.financingAmount!}</td>
        </tr>
      </table>
    </div>

    <div style="width: 100%; margin-top: 5px;border: 1px solid; ">
      <div style="display: inline-block; width: 49%;  vertical-align: top; padding-right: 3px;">
        <table style="
        font-weight: normal;
        border-spacing: 0;
        border-collapse: collapse;
        display: inline-block;
        font-size: 12px;
        font-family: EmbArial;
        line-height: 1.2;
      ">
          <tr>
            <th class="home-medium-section-table-first" style="line-height: 1.2;">
              *Bank's Sale Price / <br /> Bank's Total Rental <br /> <span style="font-style: italic;"> Harga Jualan
                Bank / <br /> Jumlah Sewaan Bank</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">228,475.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Financing Payable Amount <br /> <span style="font-style: italic;"> Amaun Pembiayaan Boleh Dibayar</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Advance Payment Amount <br /> <span style="font-style: italic;"> Amaun Bayaran Yang Didahulukan </span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">129.08</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first" style="width: 215px;">
              Deferred Payment Holiday Accrued <br /> Profit (if applicable) <br /> <span style="font-style: italic;">
                Amaun Keuntungan Terakru Sepanjang <br /> Tempoh "Payment Holiday" yang <br /> ditangguhkan (jika
                berkenaan)</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>
        </table>
      </div>

      <div style="display: inline-block;  width: 50%; vertical-align: top;">
        <table style="
        font-weight: normal;
        border-spacing: 0;
        border-collapse: collapse;
        display: inline-block;
        font-size: 12px;
        font-family: EmbArial;
        line-height: 1.2;
      ">
          <tr>
            <th class="home-medium-section-table-first" style="width: 200px;line-height: 1.2;">
              *Outstanding Bank's Sale Price / <br /> Outstanding Bank's Total Rental <br /> <span
                style="font-style: italic;"> Baki Harga Jualan Bank / <br /> Baki Jumlah Sewaan Bank</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">205,199.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Ta'widh Charges <br /> <span style="font-style: italic;"> Baki Caj Ta'widh</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Misc Cost <br /> <span style="font-style: italic;"> Baki Kos Pelbagai</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Other Charges <br /> <span style="font-style: italic;"> Baki Caj-caj Lain</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Total Outstanding Balance <br /> <span style="font-style: italic;">Jumlah Baki Keseluruhan</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space"
              style="width: 107px; max-width: 107px;">205,199.00</td>
          </tr>
        </table>
      </div>
    </div>
  </div>
  <div>
    <div>
      <table style="
          font-weight: normal;
          border-spacing: 0;
          border-collapse: collapse;
          margin-top: 20px;
          display: inline-block;
          font-size: 12px;
          font-family: EmbArial;
          line-height: 1.2;
          margin-top: 70px;
          border: 1px solid;
        ">
        <tr>
          <th style="padding: 0;font-weight: normal; ">
            Account No <br /> <span style="font-style: italic;">No Akaun</span>
          </th>
          <td class="modify-colon">:</td>
          <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;">${contextVariables.accountNo!}
          </td>
        </tr>

        <tr>
          <th style="padding: 0;font-weight: normal; padding-top: 10px;">
            Product Type <br /> <span style="font-style: italic;">Jenis Produk</span>
          </th>
          <td class="modify-colon" style="padding-top: 10px;">:</td>
          <td class="break" style="padding: 0;font-weight: normal;vertical-align: top; padding-top: 10px;">
            ${contextVariables.productType!}</td>
        </tr>

        <tr>
          <th style="padding: 0;font-weight: normal;padding-top: 10px;">
            *Financing Amount <br /> <span style="font-style: italic;">Amaun Pembiayaan</span>
          </th>
          <td class="modify-colon" style="padding-top: 10px;">:</td>
          <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;padding-top: 10px;">
            ${contextVariables.financingAmount!}</td>
        </tr>
      </table>
    </div>

    <div style="width: 100%; margin-top: 5px;border: 1px solid; ">
      <div style="display: inline-block; width: 49%;  vertical-align: top; padding-right: 3px;">
        <table style="
        font-weight: normal;
        border-spacing: 0;
        border-collapse: collapse;
        display: inline-block;
        font-size: 12px;
        font-family: EmbArial;
        line-height: 1.2;
      ">
          <tr>
            <th class="home-medium-section-table-first" style="line-height: 1.2;">
              *Bank's Sale Price / <br /> Bank's Total Rental <br /> <span style="font-style: italic;"> Harga Jualan
                Bank / <br /> Jumlah Sewaan Bank</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">228,475.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Financing Payable Amount <br /> <span style="font-style: italic;"> Amaun Pembiayaan Boleh Dibayar</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Advance Payment Amount <br /> <span style="font-style: italic;"> Amaun Bayaran Yang Didahulukan </span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">129.08</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first" style="width: 215px;">
              Deferred Payment Holiday Accrued <br /> Profit (if applicable) <br /> <span style="font-style: italic;">
                Amaun Keuntungan Terakru Sepanjang <br /> Tempoh "Payment Holiday" yang <br /> ditangguhkan (jika
                berkenaan)</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>
        </table>
      </div>

      <div style="display: inline-block;  width: 50%; vertical-align: top;">
        <table style="
        font-weight: normal;
        border-spacing: 0;
        border-collapse: collapse;
        display: inline-block;
        font-size: 12px;
        font-family: EmbArial;
        line-height: 1.2;
      ">
          <tr>
            <th class="home-medium-section-table-first" style="width: 200px;line-height: 1.2;">
              *Outstanding Bank's Sale Price / <br /> Outstanding Bank's Total Rental <br /> <span
                style="font-style: italic;"> Baki Harga Jualan Bank / <br /> Baki Jumlah Sewaan Bank</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">205,199.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Ta'widh Charges <br /> <span style="font-style: italic;"> Baki Caj Ta'widh</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Misc Cost <br /> <span style="font-style: italic;"> Baki Kos Pelbagai</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>

          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Other Charges <br /> <span style="font-style: italic;"> Baki Caj-caj Lain</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">.00</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Total Outstanding Balance <br /> <span style="font-style: italic;">Jumlah Baki Keseluruhan</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space"
              style="width: 107px; max-width: 107px;">205,199.00</td>
          </tr>
        </table>
      </div>

      <div>
        <table style="
            font-weight: normal;
            border-spacing: 0;
            border-collapse: collapse;
            margin-top: 20px;
            display: inline-block;
            font-size: 12px;
            font-family: EmbArial;
            line-height: 1.2;
            margin-top: 70px;
            border: 1px solid;
          ">
          <tr>
            <th style="padding: 0;font-weight: normal; ">
              Account No <br /> <span style="font-style: italic;">No Akaun</span>
            </th>
            <td class="modify-colon">:</td>
            <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;">${contextVariables.accountNo!}
            </td>
          </tr>
  
          <tr>
            <th style="padding: 0;font-weight: normal; padding-top: 10px;">
              Product Type <br /> <span style="font-style: italic;">Jenis Produk</span>
            </th>
            <td class="modify-colon" style="padding-top: 10px;">:</td>
            <td class="break" style="padding: 0;font-weight: normal;vertical-align: top; padding-top: 10px;">
              ${contextVariables.productType!}</td>
          </tr>
  
          <tr>
            <th style="padding: 0;font-weight: normal;padding-top: 10px;">
              *Financing Amount <br /> <span style="font-style: italic;">Amaun Pembiayaan</span>
            </th>
            <td class="modify-colon" style="padding-top: 10px;">:</td>
            <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;padding-top: 10px;">
              ${contextVariables.financingAmount!}</td>
          </tr>
        </table>
      </div>

      <div>
        <table style="
            font-weight: normal;
            border-spacing: 0;
            border-collapse: collapse;
            margin-top: 20px;
            display: inline-block;
            font-size: 12px;
            font-family: EmbArial;
            line-height: 1.2;
            margin-top: 70px;
            border: 1px solid;
          ">
          <tr>
            <th style="padding: 0;font-weight: normal; ">
              Account No <br /> <span style="font-style: italic;">No Akaun</span>
            </th>
            <td class="modify-colon">:</td>
            <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;">${contextVariables.accountNo!}
            </td>
          </tr>
  
          <tr>
            <th style="padding: 0;font-weight: normal; padding-top: 10px;">
              Product Type <br /> <span style="font-style: italic;">Jenis Produk</span>
            </th>
            <td class="modify-colon" style="padding-top: 10px;">:</td>
            <td class="break" style="padding: 0;font-weight: normal;vertical-align: top; padding-top: 10px;">
              ${contextVariables.productType!}</td>
          </tr>
  
          <tr>
            <th style="padding: 0;font-weight: normal;padding-top: 10px;">
              *Financing Amount <br /> <span style="font-style: italic;">Amaun Pembiayaan</span>
            </th>
            <td class="modify-colon" style="padding-top: 10px;">:</td>
            <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;padding-top: 10px;">
              ${contextVariables.financingAmount!}</td>
          </tr>
        </table>
      </div>

      <div>
        <table style="
            font-weight: normal;
            border-spacing: 0;
            border-collapse: collapse;
            margin-top: 20px;
            display: inline-block;
            font-size: 12px;
            font-family: EmbArial;
            line-height: 1.2;
            margin-top: 70px;
            border: 1px solid;
          ">
          <tr>
            <th style="padding: 0;font-weight: normal; ">
              Account No <br /> <span style="font-style: italic;">No Akaun</span>
            </th>
            <td class="modify-colon">:</td>
            <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;">${contextVariables.accountNo!}
            </td>
          </tr>
  
          <tr>
            <th style="padding: 0;font-weight: normal; padding-top: 10px;">
              Product Type <br /> <span style="font-style: italic;">Jenis Produk</span>
            </th>
            <td class="modify-colon" style="padding-top: 10px;">:</td>
            <td class="break" style="padding: 0;font-weight: normal;vertical-align: top; padding-top: 10px;">
              ${contextVariables.productType!}</td>
          </tr>
  
          <tr>
            <th style="padding: 0;font-weight: normal;padding-top: 10px;">
              *Financing Amount <br /> <span style="font-style: italic;">Amaun Pembiayaan</span>
            </th>
            <td class="modify-colon" style="padding-top: 10px;">:</td>
            <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;padding-top: 10px;">
              ${contextVariables.financingAmount!}</td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</main>
</body>
</html>
