<!DOCTYPE html>
<html lang="en">
<head>
  <title>Financing Statement</title>
  <meta charset="utf-8" />
  <style type="text/css">
    @page {
      size: A4;
      margin-left: 50px;
      margin-right: 50px;
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
    }
    tr {
      page-break-inside: avoid;
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
      padding-left: 108px;
      padding-right: 5px;
      vertical-align: top;
    }
    .modify-colon-01 {
      padding-right: 5px;
      vertical-align: top;
    }
    .home-medium-section-space {
      padding-top: 10px;
      width: 30px;
    }
    .home-medium-section-table-first {
      padding: 0;
      font-weight: normal;
      padding-top: 10px;
      width: 62%;
    }
    .home-medium-section-table-last {
      padding: 0;
      padding-top: 10px;
      font-weight: normal;
      vertical-align: top;
      text-align: right;
      width: 85px;
      max-width: 55px;
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
          margin-top: 20px;
          display: inline-block;
          font-size: 11px;
          font-family: EmbArial;
          line-height: 1.2;
          margin-top: 50px;
        ">
        <tr>
          <th style="padding: 0;font-weight: normal; ">
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
    <div style="width: 100%; margin-top: 5px; ">
      <div style="display: inline-block; width: 49%;  vertical-align: top; padding-right: 9px;">
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
            <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.outstandingBankSalePrice!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Financing Payable Amount <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Amaun
                Pembiayaan Boleh Dibayar</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.financingPayableAmount!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Advance Payment Amount <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Amaun
                Bayaran Yang Didahulukan </span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.advancePaymentAmount!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first" style="width: 215px;">
              Deferred Payment Holiday Accrued <br /> Profit (if applicable) <br /> <span
                style="font-family: EmbArialItalic; font-weight:normal;">
                Amaun Keuntungan Terakru Sepanjang <br /> Tempoh "Payment Holiday" yang <br /> ditangguhkan (jika
                berkenaan)</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
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
        ">
          <tr>
            <th class="home-medium-section-table-first" style="line-height: 1.2;">
              *Outstanding Bank's Sale Price / <br /> Outstanding Bank's Total Rental <br /> <span
                style="font-family: EmbArialItalic; font-weight:normal;"> Baki Harga Jualan Bank / <br /> Baki Jumlah
                Sewaan Bank</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.bankSalesPrice!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Ta'widh Charges <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Baki
                Caj Ta'widh</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.outstandingTawidhCharges!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Misc Cost <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Baki Kos
                Pelbagai</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.outstandingMiscCost!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Outstanding Other Charges <br /> <span style="font-family: EmbArialItalic; font-weight:normal;"> Baki
                Caj-caj Lain</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space">
              ${contextVariables.header.outstandingOtherCharges!}</td>
          </tr>
          <tr>
            <th class="home-medium-section-table-first">
              Total Outstanding Balance <br /> <span style="font-family: EmbArialItalic; font-weight:normal;">Jumlah
                Baki Keseluruhan</span>
            </th>
            <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
            <td class="break home-medium-section-table-last home-medium-section-space"
              style="width: 107px; max-width: 107px;">${contextVariables.header.balance!}</td>
          </tr>
          <#if contextVariables.header.bulletFlag?? && contextVariables.header.bulletFlag?lower_case !='n'>
            <tr>
              <th class="home-medium-section-table-first">
                Amortized / MPP <br />
              </th>
              <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
              <td class="break home-medium-section-table-last home-medium-section-space"
                style="width: 107px; max-width: 107px;">${contextVariables.header.amortized!}</td>
            </tr>
            <tr>
              <th class="home-medium-section-table-first">
                Residual Value / EBP <br />
              </th>
              <td class="modify-colon-01 home-medium-section-space">: &#160;RM</td>
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
          <th class="transaction-table-header" style="width: 80px; max-width: 80px;border-right: 0.6px solid;">
            DATE<br /><span style="font-family: EmbArialItalic;font-weight: normal;">TARIKH</span></th>
          <th class="transaction-table-header" style="width: 200px; max-width: 200px;border-right: 0.6px solid;">
            TRANSACTION DESCRIPTIONS<br /><span style="font-family: EmbArialItalic;font-weight: normal;font-family: EmbArialItalic; font-weight:normal;">HURAIAN
              TRANSAKSI</span></th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">
            DEBIT<br /><span style="font-family: EmbArialItalic;font-weight: normal;">DEBIT</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">(RM)</span></th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">
            CREDIT<br /><span style="font-family: EmbArialItalic;font-weight: normal;">KREDIT</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">(RM)</span></th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">
            *OUTSTANDING <br /> FINANCING <br /> AMOUNT<br /><span style="font-family: EmbArialItalic;font-weight: normal;">BAKI AMAUN <br />
              PEMBIAYAAN</span><br /><span style="font-family: EmbArial;font-weight: normal;">(RM)</span>
          </th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">
            OUTSTANDING BALANCE<br /><span style="font-family: EmbArialItalic;font-weight: normal;">BAKI <br />
              KESELURUHAN</span><br /><span style="font-family: EmbArial;font-weight: normal;">(RM)</span></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="break"
            style="vertical-align: top;text-align: right;word-spacing: 1px;border: none;border-left: 0.5px solid;padding-bottom: 0px;">
            ${contextVariables.trxDate!}&#160;
          </td>
          <td class="break"
            style="vertical-align: top;text-align: left;word-spacing: 1px;border: none;padding-bottom: 0px;padding-left: 10px;">
            ${contextVariables.description!}
          </td>
          <td class="break"
            style="vertical-align: top;text-align: right;word-spacing: 1px;border: none;padding-bottom: 0px;">
            ${contextVariables.debit!}
          </td>
          <td class="break"
            style="text-align: right;vertical-align: top;word-spacing: 1px;padding-right: 8px;border: none;padding-bottom: 0px;">
            ${contextVariables.credit!}</td>
          <td class="break"
            style="text-align: right;vertical-align: top; word-spacing: 1px;padding-right: 8px;border: none;padding-bottom: 0px;">
            ${contextVariables.interface.beginningCost!}
          </td>
          <td class="break"
            style="text-align: right;vertical-align: top;word-spacing: 1px;padding-right: 8px;border: none;border-right: 0.5px solid;padding-bottom: 0px;">
            ${contextVariables.interface.beginningBalance!}</td>
        </tr>
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
              style="vertical-align: top;text-align: right;word-spacing: 1px;border: none;">
              ${row.debitAmount!}
            </td>
            <td class="break"
              style="text-align: right;vertical-align: top;word-spacing: 1px;padding-right: 8px;border: none;">
              ${row.creditAmount!}</td>
            <td class="break"
              style="text-align: right;vertical-align: top; word-spacing: 1px;padding-right: 8px;border: none;">
              ${row.beginningCost!}
            </td>
            <td class="break"
              style="text-align: right;vertical-align: top;word-spacing: 1px;padding-right: 8px;border: none;border-right: 0.5px solid;">
              ${row.balance!}</td>
          </tr>
        </#list>
      </tbody>
      <tbody>
        <tr>
          <th colspan="6"
            style="font-size: 10px; text-align: start;font-family: EmbArial;font-weight: normal;padding-left: 10px;padding-right: 5px;padding-top: 12px;padding-bottom: 16px;letter-spacing: 0.5px; border-left: 0.5px solid;border-right: 0.5px solid;page-break-inside: avoid;">
            <div class="justify">
              Figures shown above are for the transactions performed from January to December during the statement year. <br />
              <span style="font-family: EmbArialItalic; font-weight:normal;"> Jumlah yang tertera di atas adalah untuk
                transaksi yang berlaku dari Januari hingga Disember untuk penyata tahun semasa.</span>
            </div>
            <br />
            <div class="justify">
              Any amount reflected in this financing account statement is considered correct unless the Bank is
              notified of any discrepancies within 14 days from the date of this statement. <br />
              <span style="font-family: EmbArialItalic; font-weight:normal;"> Sebarang amaun yang tertera di dalam
                penyata akaun pembiayaan ini dianggap betul melainkan pihak Bank dimaklumkan atas sebarang percanggahan dalam masa 14 hari dari
                tarikh penyata ini.</span>
            </div>
            <div>${contextVariables.header.message!}</div>
            <br />
            <div>
              Note: <br />
              <span style="font-family: EmbArialItalic; font-weight:normal;">Nota:</span>
            </div>
            <div class="justify" style="letter-spacing: 1px;">
              i . <span style="margin-left: 16px;"></span>Balances shown in this financing account statement do not
              include financing amount which has not been<div style="padding-left: 30px;">disbursed.</div>
            </div>
            <div class="justify" style="letter-spacing: 1px;">
              ii . <span style="margin-left: 12px;font-family: EmbArialItalic; font-weight:normal;">Baki yang
                tertera di dalam penyata akaun pembiayaan ini tidak termasuk amaun pembiayaan yang belum </span>
              <div style="padding-left: 30px;font-family: EmbArialItalic;font-weight: normal;">dikeluarkan.</div>
            </div>
            <div class="justify" style="letter-spacing: 1px;">
               <span style="margin-left: 30px;">Total Outstanding Balance = Outstanding Bank's Sale Price /
                Outstanding Bank's Total Rental + Outstanding </span><br />
              <span style="margin-left: 190px;">Ta'widh Charges + Outstanding Misc Cost + Outstanding Other Charges.</span>
            </div>
            <div class="justify" style="letter-spacing: 1px;">
              iii . <span class="justify" style="margin-left: 8px;font-family: EmbArialItalic; font-weight:normal;">Jumlah
                Baki Keseluruhan = Baki Harga Jualan Bank / Baki Jumlah Sewaan Bank + Baki Caj Ta'widh + Baki Kos </span> <br />
              <span class="justify" style="margin-left: 180px;font-family: EmbArialItalic; font-weight:normal;">Pelbagai
                + Baki Caj-Caj Lain.</span>
              <div class="justify" style="letter-spacing: 1px;line-height: 1.1;">
                <span style="padding-left: 27px;">* The actual terminologies are subject to prevailing Shariah
                  contract / concept executed between the Bank and </span><br /><span style="padding-left: 30px;">the customer including but not limited to
                  ijarah, istisna', murabahah,tawarruq or bai' 'inah.</span> <br />
                <span style="font-family: EmbArialItalic; font-weight:normal;"><span
                    style="padding-left: 30px;">Penggunaan terma yang tepat yang
                    digunapakai tertakluk kepada kontrak / konsep Shariah yang dimeterai di</span> <br /><span
                    style="padding-left: 30px;">antara Bank dan pelanggan termasuk tetapi tidak
                    terhad kepada ijarah, istisna', murabahah, tawarruq atau bai'</span><br /><span style="padding-left: 30px;">'inah.</span></span>
              </div>
            </div>
          </th>
        </tr>
      </tbody>
    </table>

    <#if (contextVariables.header.guarantor1Name?? && contextVariables.header.guarantor1Name?has_content) ||
      (contextVariables.header.guarantor2Name?? && contextVariables.header.guarantor2Name?has_content)>
      <div class="page-break"></div>
      <div class="no-header-footer">
        <div style="margin-top: 30px;">
          <div class="logo-left">
            <img src="${contextVariables.bankIslamLogo!}" alt="bank_islam_logo"
              style="width: 216px; height: 50px;text-align: left;" />
          </div>
          <div class="logo-right" style="margin-top: -6px; margin-right: -30px;">
            <img src="${contextVariables.statementLogo!}" alt="statement_logo"
              style="width: 90px; height: 65px;display: inline-block;vertical-align: middle;margin-top: 5px;margin-left: 400px;" />
          </div>
          <table style="
            margin-top: 30px;
            border-collapse: collapse;
            width: 100%;
            font-size: 11px;
            font-family: EmbArial;
          ">
            <tr>
              <td style="text-align: justify; padding: 5px; width: 40%;">
                <div style="margin-top: -45px;min-height: 40px;max-height: 40px;">
                  <#if contextVariables.header.customerName?has_content>
                    ${contextVariables.header.customerName!}<br />
                  </#if>
                </div>
              </td>
              <td style="text-align: justify; padding-left: 175px;padding-bottom:40px;">
                <table style="
                  font-weight: normal;
                  border-collapse: collapse;
                  display: inline-block;
                  font-size: 11px;
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
                        ${contextVariables.header.customerAccountNumber!}</td>
                    </tr>
                  </div>
                </table>
              </td>
            </tr>
          </table>
        </div>
        <span style="font-size: 11px; padding: 5px;">C.c /S.k.:</span><br />
        <#if contextVariables.header.guarantor1Name?has_content>
          <span style="font-size: 11px; padding: 5px;">Guarantor / Penjamin :</span><br />
          <div style="width: 50%;font-size: 11px;padding-left: 15px;">
            <#if contextVariables.header.guarantor1Name?has_content>
              ${contextVariables.header.guarantor1Name!}<br />
            </#if>
            <#if contextVariables.header.guarantor1Add1?has_content>
              ${contextVariables.header.guarantor1Add1}<br />
            </#if>
            <#if contextVariables.header.guarantor1Add2?has_content>
              ${contextVariables.header.guarantor1Add2}<br />
            </#if>
            <#if contextVariables.header.guarantor1Add3?has_content>
              ${contextVariables.header.guarantor1Add3}<br />
            </#if>
            <#if contextVariables.header.guarantor1Add4?has_content>
              ${contextVariables.header.guarantor1Add4}<br />
            </#if>
            <#if contextVariables.header.guarantor1Add5?has_content>
              ${contextVariables.header.guarantor1Add5}<br />
            </#if>
            <#if contextVariables.header.guarantor1Add6?has_content>
              ${contextVariables.header.guarantor1Add6}<br />
            </#if>
            <#if contextVariables.header.guarantor1Add7?has_content>
              ${contextVariables.header.guarantor1Add7}<br />
            </#if>
          </div>
        </#if>
        <#if contextVariables.header.guarantor2Name?has_content>
          <span style="font-size: 11px;margin-top: 5px;padding: 5px;">Guarantor / Penjamin :</span><br />
          <div style="width: 50%;font-size: 11px;padding-left: 15px;">
            <#if contextVariables.header.guarantor2Name?has_content>
              ${contextVariables.header.guarantor2Name!}<br />
            </#if>
            <#if contextVariables.header.guarantor2Add1?has_content>
              ${contextVariables.header.guarantor2Add1}<br />
            </#if>
            <#if contextVariables.header.guarantor2Add2?has_content>
              ${contextVariables.header.guarantor2Add2}<br />
            </#if>
            <#if contextVariables.header.guarantor2Add3?has_content>
              ${contextVariables.header.guarantor2Add3}<br />
            </#if>
            <#if contextVariables.header.guarantor2Add4?has_content>
              ${contextVariables.header.guarantor2Add4}<br />
            </#if>
            <#if contextVariables.header.guarantor2Add5?has_content>
              ${contextVariables.header.guarantor2Add5}<br />
            </#if>
            <#if contextVariables.header.guarantor2Add6?has_content>
              ${contextVariables.header.guarantor2Add6}<br />
            </#if>
            <#if contextVariables.header.guarantor2Add7?has_content>
              ${contextVariables.header.guarantor2Add7}<br />
            </#if>
          </div>
        </#if>
      </div>
    </#if>
  </main>
</body>
</html>