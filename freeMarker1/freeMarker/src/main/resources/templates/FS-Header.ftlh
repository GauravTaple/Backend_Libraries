<!DOCTYPE html>
<html lang="en">
<head>
  <title>Financing Statement</title>
  <meta charset="utf-8" />
  <style type="text/css">
    @page {
      size: A4;
      margin-left: 35px;
      margin-right: 35px;
      font-family: EmbArial;
      margin-top: 70mm;
      margin-bottom: 20mm;
      @top-left {
        content: element(header);
      }
    }
    body {
      font-family: EmbArial;
    }
    header {
      text-align: left;
      position: running(header);
      font-size: 11px;
      font-family: EmbArial;
    }
    @page no-header-footer {
      margin-top: 0mm;
      margin-bottom: 0mm;
      @top-left {
        content: none;
      }
      @bottom-left {
        content: none;
      }
    }
    .no-header-footer {
      page: no-header-footer;
    }
    table {
      -fs-table-paginate: paginate;
      page-break-inside: auto;
    }
    tr {
      page-break-inside: avoid;
      break-inside: avoid;
    }
     td, th {
      page-break-inside: avoid; /* Prevent cells from breaking across pages */
      break-inside: avoid; /* For modern browsers */
    }
    .justify {
      text-align: justify;
    }
    .logo-left {
      float: left;
    }
    .logo-left img {
      max-width: 230px;
      height: auto;
    }
    .logo-right img {
      max-width: 60px;
      height: auto;
    }
    .padding-td {
      padding-left: 15px;
      padding-right: 5px;
      vertical-align: top;
    }
    .modify-colon {
      padding-left: 97px;
      padding-right: 5px;
      vertical-align: top;
    }
    .modify-colon-01 {
      vertical-align: top;
    }
    .home-medium-section-space {
      padding-top: 10px;
      /* width: 5px; */

    }
    .home-medium-section-table-first {
      padding: 0;
      font-weight: normal;
      padding-top: 10px;
      /* width: 53%;   */
    }
    .home-medium-section-table-last {
      padding-top: 10px;
      font-weight: normal;
      vertical-align: top;
      text-align: right;
      width: 85px;
      max-width: 85px;
    }
    .transaction-table {
      border-collapse: collapse;
      width: 100%;
      text-align: center;
      margin-left: 0.5px;
      border: 0.5px solid;
    }
    .transaction-table td {
      text-align: center;
    }
    .transaction-table-header {
      padding-bottom: 3px;
      padding-top: 3px;
      font-weight: normal;
      font-family: EmbArialBold;
      border-bottom: 0.5px solid;
      border-right: 0.5px solid;
    }
    .notes {
      font-size: 11px;
      margin-top: 15px;
      line-height: 1;
      text-align: justify;
    }
    .page-info::after {
      content: counter(page) " / " counter(pages);
    }
    .break {
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
    }
    .page-break {
      page-break-before: always;
      break-before: page;
    }
   .no-break {
      page-break-inside: avoid; /* Prevent breaking inside this element */
      break-inside: avoid; /* For modern browsers */
      }   
  </style>
</head>
<body>
  <header style="text-align: left;margin-top: 0px;">
    <div class="logo-left">
      <img src="${contextVariables.bankIslamLogo!}" alt="bank_islam_logo" style="width: 216px; height: 50px;text-align: left;" />
    </div>
    <div class="logo-right" style="margin-top: -6px; margin-right: -30px;">
      <img src="${contextVariables.statementLogo!}" alt="statement_logo" style="width: 90px; height: 65px;display: inline-block;vertical-align: middle;margin-top: 5px;margin-left: 400px;" />
    </div>
    <table style="
          margin-top: 40px;
          border-collapse: collapse;
          width: 100%;
          font-family: EmbArial;
        ">
      <tr>
        <td style="text-align: justify; padding: 5px; width: 35%;">
          <div style="margin-top: -20px;min-height: 110px;max-height: 110px;">
            <#if contextVariables.header.customerName?has_content>
              ${contextVariables.header.customerName}<br />
            </#if>
            <#if contextVariables.header.add1?has_content>
              ${contextVariables.header.add1}<br />
            </#if>
            <#if contextVariables.header.add2?has_content>
              ${contextVariables.header.add2}<br />
            </#if>
            <#if contextVariables.header.add3?has_content>
              ${contextVariables.header.add3}<br />
            </#if>
            <#if contextVariables.header.add4?has_content>
              ${contextVariables.header.add4}<br />
            </#if>
            <#if contextVariables.header.add5?has_content>
              ${contextVariables.header.add5}<br />
            </#if>
            <#if contextVariables.header.add6?has_content>
              ${contextVariables.header.add6}<br />
            </#if>
            <#if contextVariables.header.add7?has_content>
              ${contextVariables.header.add7}<br />
            </#if>
          </div>
        </td>
        <td style="text-align: justify; padding-left: 180px;padding-bottom:45px;">
          <table style="
                font-weight: normal;
                border-collapse: collapse;
                display: inline-block;
                font-family: EmbArial;
                line-height: 1.2;
              ">
            <tr>
              <th style="padding: 0;font-weight: normal; padding-right: 24px; ">Page</th>
              <td class="padding-td">&#160;:</td>
              <td class="page-info" style="padding-left: 2;font-weight: normal;"></td>
            </tr>
            <div>
              <tr>
                <th style="padding: 0;font-weight: normal; padding-top: 3px;">
                  Date <br /> <span style="font-family: EmbArialItalic; font-weight:normal;">Tarikh</span>
                </th>
                <td class="padding-td" style="padding-top: 3px;">:</td>
                <td class="break" style="padding: 0;font-weight: normal;vertical-align: top; padding-top: 3px;">
                  ${contextVariables.date!}</td>
              </tr>
              <tr>
                <th style="padding: 0;font-weight: normal;padding-top: 3px;">
                  Branch <br /> <span style="font-family: EmbArialItalic; font-weight:normal;">Cawangan</span>
                </th>
                <td class="padding-td" style="padding-top: 3px;">:</td>
                <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;padding-top: 3px;">
                  ${contextVariables.header.branchName!}</td>
              </tr>
            </div>
          </table>
        </td>
      </tr>
    </table>
  </header>

  <header style="text-align: left;">
    <div class="logo-left">
      <img src="${contextVariables.bankIslamLogo!}" alt="bank_islam_logo" style="width: 216px; height: 50px;text-align: left;" />
    </div>
    <div class="logo-right" style="margin-top: -6px; margin-right: -30px;">
      <img src="${contextVariables.statementLogo!}" alt="statement_logo" style="width: 90px; height: 65px;display: inline-block;vertical-align: middle;margin-top: 5px;margin-left: 400px;" />
    </div>
    <table style="
            margin-top: 30px;
            border-collapse: collapse;
            width: 100%;
            font-family: EmbArial;
          ">
      <tr>
        <td style="text-align: justify; padding: 5px; width: 35%;">
          <div style="margin-top: -60px;min-height: 40px;max-height: 40px;">
            <#if contextVariables.header.customerName?has_content>
              ${contextVariables.header.customerName}<br />
            </#if>
          </div>
        </td>
        <td style="text-align: justify; padding-left: 220px;padding-bottom:70px;">
          <table style="
                  font-weight: normal;
                  border-collapse: collapse;
                  display: inline-block;
                  font-family: EmbArial;
                  line-height: 1.2;
                ">
            <tr>
              <th style="padding: 0;font-weight: normal; padding-right: 41px; ">
                Page
              </th>
              <td class="padding-td">:</td>
              <td class="page-info" style="padding-left: 2;font-weight: normal;">
              </td>
            </tr>
            <div>
              <tr>
                <th style="padding: 0;font-weight: normal;padding-top: 3px;width: 70px;">
                  Account No <br /> <span style="font-family: EmbArialItalic; font-weight:normal;">No Akaun</span>
                </th>
                <td class="padding-td" style="padding-top: 3px;">:</td>
                <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;padding-top: 3px;">
                  ${contextVariables.header.customerAccountNumber}</td>
              </tr>
            </div>
          </table>
        </td>
      </tr>
      <tr style="border: none;">
        <td colspan="6" style="border: none;">
          <div style="margin-top: -40px; margin-bottom: 10px; text-align: center;">
            <span>FINANCING STATEMENT FOR THE YEAR ${contextVariables.year} </span><br />
            <span style="font-family: EmbArialItalic; font-weight:normal;padding-right: 5px;">PENYATA PEMBIAYAAN UNTUK TAHUN ${contextVariables.year}</span>
          </div>
        </td>
      </tr>
    </table>
  </header>

  <main style="font-size: 11px;">
    <div>
      <table style="
          font-weight: normal;
          border-collapse: collapse;
          display: inline-block;
          font-size: 11px;
          font-family: EmbArial;
          line-height: 1.2;
          margin-top: 50px;
        ">
        <tr>
          <th style="padding: 0;font-weight: normal;">
            Account No <br /> <span style="font-family: EmbArialItalic; font-weight:normal;">No Akaun</span>
          </th>
          <td class="modify-colon">:</td>
          <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;">
            ${contextVariables.header.customerAccountNumber}
          </td>
        </tr>
        <tr>
          <th style="padding: 0;font-weight: normal; padding-top: 10px;">
            Product Type <br /> <span style="font-family: EmbArialItalic; font-weight:normal;">Jenis Produk</span>
          </th>
          <td class="modify-colon" style="padding-top: 10px;">:</td>
          <td class="break" style="padding: 0;font-weight: normal;vertical-align: top; padding-top: 10px;">
            ${contextVariables.header.productType!} ${contextVariables.header.productTypeDescription!}</td>
        </tr>
        <tr>
          <th style="padding: 0;font-weight: normal;padding-top: 10px;">
            *Financing Amount <br /> <span style="font-family: EmbArialItalic; font-weight:normal;">Amaun
              Pembiayaan</span>
          </th>
          <td class="modify-colon" style="padding-top: 10px;">:</td>
          <td class="break" style="padding: 0;font-weight: normal;vertical-align: top;padding-top: 10px;">
            RM ${contextVariables.header.financingAmount!}</td>
        </tr>
      </table>
    </div>
    <div style="width: 100%; margin-top: 5px;">
      <div style="display: inline-block; width: 51%;  vertical-align: top; padding-right: 3px;">
        <table style="
        font-weight: normal;
        border-collapse: collapse;
        display: inline-block;
        font-size: 11px;
        font-family: EmbArial;
        line-height: 1.2;
      ">
          <tr>
            <th class="home-medium-section-table-first" style="line-height: 1.2;">
              *Bank's Sale Price / <br /> Bank's Total Rental <br /> <span
                style="font-family: EmbArialItalic; font-weight:normal;"> Harga Jualan
                Bank / <br /> Jumlah Sewaan Bank</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">:&#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.outstandingBankSalePrice!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Financing Payable Amount <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Amaun
                Pembiayaan Boleh Dibayar</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">:&#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.financingPayableAmount!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Advance Payment Amount <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Amaun
                Bayaran Yang Didahulukan </span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">:&#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.advancePaymentAmount!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first" style="width: 56%;" >
              Deferred Payment Holiday Accrued <br /> Profit (if applicable) <br /> <span
                style="font-family: EmbArialItalic; font-weight:normal;">
                Amaun Keuntungan Terakru Sepanjang<br /> Tempoh "Payment Holiday" yang <br /> ditangguhkan (jika
                berkenaan)</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space" style="width: 3%;">:&#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space" style="width: 41%;">
              ${contextVariables.header.accruedProfit!}</td>
          </tr>
        </table>
      </div>
      <div style="display: inline-block;  width: 47%; vertical-align: top;">
        <table style="
        font-weight: normal;
        border-collapse: collapse;
        display: inline-block;
        font-size: 11px;
        font-family: EmbArial;
        line-height: 1.2;
        width: 100%;
        ">
          <tr>
            <th class="home-medium-section-table-first" style="line-height: 1.2;">
              *Outstanding Bank's Sale Price /<br /> Outstanding Bank's Total Rental <br /> <span
                style="font-family: EmbArialItalic; font-weight:normal;"> Baki Harga Jualan Bank / <br /> Baki Jumlah
                Sewaan Bank</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">:&#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.bankSalesPrice!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Ta'widh Charges <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Baki
                Caj Ta'widh</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">:&#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.outstandingTawidhCharges!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Misc Cost <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Baki Kos
                Pelbagai</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">:&#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.outstandingMiscCost!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Other Charges <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Baki
                Caj-caj Lain</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">:&#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.outstandingOtherCharges!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Total Outstanding Balance <br /> <span style="font-family: EmbArialItalic; font-weight:normal;">Jumlah
                Baki Keseluruhan</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space" style="width: 5%;">:&#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space"
              style="width: 43%;">${contextVariables.header.balance!}</td>
          </tr>
          <#if contextVariables.header.bulletFlag?? && contextVariables.header.bulletFlag?lower_case !='n'>
            <tr>
              <th class="home-medium-section-table-first">
                Amortized / MPP <br />
              </th>
              <td class="modify-colon-01 home-medium-section-space">:&#160;RM</td>
              <td class="break home-medium-section-table-last home-medium-section-space"
                >${contextVariables.header.amortized!}</td>
            </tr>
            <tr>
              <th class="home-medium-section-table-first">
                Residual Value / EBP <br />
              </th>
              <td class="modify-colon-01 home-medium-section-space">:&#160;RM</td>
              <td class="break home-medium-section-table-last home-medium-section-space"
                style="width: 107px; max-width: 107px;">${contextVariables.header.residualValue!}</td>
            </tr>
          </#if>
        </table>
      </div>
    </div>
    <div style="margin-top: 25px; margin-bottom: 35px; text-align: center;">
      <span style="font-family: EmbArialBold;font-weight: normal;">FINANCING STATEMENT FOR THE YEAR ${contextVariables.year}</span>
      <br />
      <span style="font-family: EmbArialItalic; font-weight:normal;padding-right: 5px;">PENYATA PEMBIAYAAN UNTUK TAHUN ${contextVariables.year}</span>
    </div>
    <table class="transaction-table">
      <thead>
        <tr>
          <th class="transaction-table-header" style="width: 70px; max-width: 70px;border-right: 0.6px solid;">
            DATE<br /><span style="font-family: EmbArialItalic;font-weight: normal;">TARIKH</span></th>
          <th class="transaction-table-header" style="border-right: 0.6px solid;">
            TRANSACTION DESCRIPTIONS<br /><span style="font-family: EmbArialItalic;font-weight: normal;font-family: EmbArialItalic; font-weight:normal;">HURAIAN
              TRANSAKSI</span></th>
          <th class="transaction-table-header" style="width: 95px; max-width: 95px;">
            DEBIT<br /><span style="font-family: EmbArialItalic;font-weight: normal;">DEBIT</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">(RM)</span></th>
          <th class="transaction-table-header" style="width: 95px; max-width: 95px;">
            CREDIT<br /><span style="font-family: EmbArialItalic;font-weight: normal;">KREDIT</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">(RM)</span></th>
          <th class="transaction-table-header" style="width: 130px; max-width: 130px;">
            *OUTSTANDING <br /> FINANCING <br /> AMOUNT<br /><span style="font-family: EmbArialItalic;font-weight: normal;">BAKI AMAUN <br />
              PEMBIAYAAN</span><br /><span style="font-family: EmbArial;font-weight: normal;">(RM)</span>
          </th>
          <th class="transaction-table-header" style="width: 132px; max-width: 132px;">
            OUTSTANDING BALANCE<br /><span style="font-family: EmbArialItalic;font-weight: normal;">BAKI <br />
              KESELURUHAN</span><br /><span style="font-family: EmbArial;font-weight: normal;">(RM)</span></th>
        </tr>
      </thead>
      <tbody style="font-size: 10px;">
        <#list contextVariables.statements as row>
          <tr>
            <td class="break"
              style="vertical-align: top;text-align: right;word-spacing: 1px;border: none;border-left: 0.5px solid;">
              ${row.trxDate!}&#160;
            </td>
            <td class="break"
              style="vertical-align: top;text-align: left;word-spacing: 1px;border: none;padding-left: 10px;">
              ${row.description!}
            </td>
            <td class="break"
              style="vertical-align: top;text-align: right;word-spacing: 1px;border: none;padding-right: 2px;">
              ${row.debitAmount!}
            </td>
            <td class="break"
              style="text-align: right;vertical-align: top;word-spacing: 1px;padding-right: 2px;border: none;">
              ${row.creditAmount!}</td>
            <td class="break"
              style="text-align: right;vertical-align: top; word-spacing: 1px;padding-right: 2px;border: none;">
              ${row.beginningCost!}
            </td>
            <td class="break"
              style="text-align: right;vertical-align: top;word-spacing: 1px;padding-right: 7px;border: none;border-right: 0.5px solid;">
              ${row.balance!}</td>
          </tr>
        </#list>
      </tbody>
     
    </table>
    
  </main>
</body>
</html>