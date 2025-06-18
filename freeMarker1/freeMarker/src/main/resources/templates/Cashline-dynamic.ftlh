<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cashline Statement</title>
  <meta charset="utf-8" />
  <style type="text/css">
    @page {
      size: A4;
      margin-left: 50px;
      margin-right: 50px;
      font-family: EmbArial;
      margin-top: 70mm;
      margin-bottom: 15mm;
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
      font-size: 12px;
      font-family: EmbArial;
    }

    table {
      -fs-table-paginate: paginate;
    }

    tr {
      page-break-inside: avoid;
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

    .not-bold {
      font-weight: normal;
      width: 125px;
    }

    .padding-td {
      padding-left: 0px;
      padding-right: 5px;
      padding-top: 10px;
      padding-bottom: 0;
      font-family: EmbArialBold;
      font-weight: normal;
    }

    .transaction-table {
      border-collapse: collapse;
      width: 100%;
      text-align: center;
      margin-left: 0.5px;
      margin-top: 4px;
      border: 1px solid;
    }

    .transaction-table td {
      border: 1px solid;
      text-align: center;
      padding: 3px;
    }

    .transaction-table-header {
      background-color: #b0b0b0;
      border: 1px solid;
      padding-bottom: 5px;
      padding-top: 3px;
      font-weight: normal;
      font-family: EmbArialBold;
    }

    .container {
      width: 99.8%;
      border: 1px solid;
      border-top: none;
      font-size: 10px;
      margin-left: 0.1px;
    }

    .section-title {
      text-align: center;
      font-size: 13px;
      border-bottom: 1px solid;
      font-family: EmbArialBold;
    }

    .summary {
      padding-bottom: 2px;
      line-height: 1.2;
    }

  .messages table{ 
      width: 100%;
      text-align: center;
    }

    .notes {
      font-size: 9px;
      margin-top: 15px;
      line-height: 1.3;
    }

    .page-info::after {
      content: counter(page) " of " counter(pages);
    }

    .break {
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
    }

    .bank-table-td {
      padding-bottom: 14px;
      font-family: EmbArialBold;
      font-weight: normal;
      padding-top: 8px;
    }

    .bank-table-value {
      padding: 0;
      text-align: left;
      font-family: EmbArial;
      font-weight: normal;
      vertical-align: top;
      width: 130px;
      text-align: right;
      padding-top: 8px;
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
    }

    .table-payment {
      width: 100%;
      border-collapse: collapse;
      font-size: 12px;
    }

    .table-payment th {
      border: 1px solid;
      text-align: center;
      vertical-align: top;
    }

    .table-payment td {
      border: 1px solid;
    }

    .align-left {
      text-align: left;
      padding-left: 5px;
      font-family: EmbArialBold;
      font-weight: normal;
    }

    .table-payment-body {
      text-align: right;
      padding-right: 10px;
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
    }

    .font-italic {
      font-family: EmbArialItalic;
      font-weight: normal;
    }

    .overlap-underline {
      display: inline-block;
      position: relative;
    }

    .overlap-underline::after {
      content: "";
      position: absolute;
      left: 0;
      bottom: 1px;
      width: 100%;
      height: 1px;
      background-color: black;
      z-index: -1;
    }
  </style>
</head>
<body>
  <header style="text-align: left;margin-bottom: -5px;margin-top: 0px;">
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
          font-size: 10px;
          font-family: EmbArial;         
        ">
      <tr>
        <td style="text-align: justify; padding: 5px; width: 40%; ">
          <div style="min-height: 110px;max-height: 110px;">
            <#if contextVariables.customerNameWithoutTitle?has_content>
              ${contextVariables.customerNameWithoutTitle}<br />
            </#if>
            <#if contextVariables.header.add1?has_content>
              ${contextVariables.header.add1?replace("|", "<br />")}<br />
            </#if>
            <#if contextVariables.header.add2?has_content>
              ${contextVariables.header.add2?replace("|", "<br />")}<br />
            </#if>
            <#if contextVariables.header.add3?has_content>
              ${contextVariables.header.add3?replace("|", "<br />")}<br />
            </#if>
            <#if contextVariables.header.add4?has_content>
              ${contextVariables.header.add4?replace("|", "<br />")}<br />
            </#if>
            <#if contextVariables.header.add5?has_content>
              ${contextVariables.header.add5?replace("|", "<br />")}<br />
            </#if>
            <#if contextVariables.header.add6?has_content>
              ${contextVariables.header.add6?replace("|", "<br />")}<br />
            </#if>
            <#if contextVariables.header.add7?has_content>
              ${contextVariables.header.add7?replace("|", "<br />")}
            </#if>
          </div>
        </td>
        <td style="text-align: justify; padding-left: 95px;padding-bottom:5px ;">
          <table style="
                font-weight: normal;
                border-spacing: 0;
                border-collapse: collapse;
                margin-top: 20px;
                display: inline-block;
                font-size: 12px;
                font-family: EmbArial;
                line-height: 1.2;
              ">
            <tr>
              <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;">
                TARIKH PENYATA <br /><span style="font-family: EmbArialItalic;">STATEMENT DATE</span>
              </th>
              <td class="padding-td">:</td>
              <td class="break"
                style="padding: 0;text-align: right;font-family: EmbArialBold;font-weight: normal;vertical-align: bottom;">
                ${contextVariables.statementDate!}</td>
            </tr>
            <tr>
              <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;">
                HALAMAN <br />
                <span style="font-family: EmbArialItalic;">PAGE</span>
              </th>
              <td class="padding-td">:</td>
              <td class="page-info"
                style="padding: 0;text-align: right;font-family: EmbArialBold;font-weight: normal;padding-top: 10px;">
              </td>
            </tr>
            <tr>
              <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;width: 10px;">
                NOMBOR AKAUN <br />
                <span style="font-family: EmbArialItalic;">ACCOUNT NO</span>
              </th>
              <td class="padding-td">:</td>
              <td class="break"
                style="padding: 0;text-align: right;font-family: EmbArialBold;font-weight: normal;vertical-align: bottom; width: 170px;">
                ${contextVariables.header.customerAccountNumber!}
              </td>
            </tr>
            <tr>
              <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;">
                CAWANGAN <br /><span style="font-family: EmbArialItalic;">BRANCH</span>
              </th>
              <td class="padding-td">:</td>
              <td class="break"
                style="padding: 0;text-align: right;font-family: EmbArialBold;font-weight: normal;vertical-align: bottom;">
                ${contextVariables.header.branch!}</td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </header>

  <main style="font-size: 10px;">
    <div style="font-size: 12px;">
      <tr>
        <td style="font-family: EmbArialBold; font-weight: normal;">Jenis Produk / <span
            style="font-family: EmbArialItalicBold;font-weight: normal; ">Product Type</span></td>
        <td style="font-weight: normal;font-family: EmbArialBold;">&#160;:</td>
        <td class="break" style="width: 500px; max-width: 500px;">&#160;${contextVariables.header.productType!}</td>
      </tr>
    </div>
    <table style="
          border-collapse: collapse;
          width: 100%;
          font-size: 12px;
          font-family: EmbArial;
        ">
      <tr>
        <td style="text-align: justify; width: 40%;">
          <table>
            <tr>
              <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;padding-top: 8px;">
                Harga Jualan Bank /<br /><span style="font-family: EmbArialItalic;">Bank's Sale Price</span>
              </th>
              <td class="bank-table-td">:&#160;&#160;RM</td>
              <td class="bank-table-value">
                ${contextVariables.header.bankSalePrice!}</td>
            </tr>
            <tr>
              <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;padding-top: 8px;">
                Had Kemudahan /<br />
                <span style="font-family: EmbArialItalic;">Facility Limit</span>
              </th>
              <td class="bank-table-td" style="padding-top: 8px;">:&#160;&#160;RM</td>
              <td class="bank-table-value">
                ${contextVariables.header.facilityLimit!}
              </td>
            </tr>
            <tr>
              <th class="not-bold"
                style="padding: 0;font-family: EmbArialBold;font-weight: normal;width: 10px;padding-top: 8px;">
                Tarikh Matang /<br />
                <span style="font-family: EmbArialItalic;">Maturity Date</span>
              </th>
              <td class="bank-table-td">:</td>
              <td class="bank-table-value">
                ${contextVariables.maturityDate!}
              </td>
            </tr>
          </table>
        </td>
        <td style="text-align: justify; width: 45%;">
          <table style="margin-left: 20px;">
            <tr>
              <th style="padding: 0;font-family: EmbArialBold;font-weight: normal;width:170px;padding-top: 8px;">
                Baki Harga Jualan Bank /<br /><span style="font-family: EmbArialItalic;">Outstanding Bank's Sale
                  Price</span>
              </th>
              <td class="bank-table-td">:&#160;&#160;RM</td>
              <td class="bank-table-value" style="width: 80px;">
                ${contextVariables.header.outstandingBankSalePrice!}</td>
            </tr>
            <tr>
              <th style="padding: 0;font-family: EmbArialBold;font-weight: normal;padding-top: 8px;">
                Amaun digunakan /<br />
                <span style="font-family: EmbArialItalic;">Utilized Amount</span>
              </th>
              <td class="bank-table-td">:&#160;&#160;RM</td>
              <td class="bank-table-value">
                ${contextVariables.header.utilizedAmount!} </td>
            </tr>
            <tr>
              <th style="padding: 0;font-family: EmbArialBold;font-weight: normal;width: 10px;padding-top: 8px;">
                Amaun belum digunakan /<br />
                <span style="font-family: EmbArialItalic;">Unutilized Amount</span>
              </th>
              <td class="bank-table-td">:&#160;&#160;RM</td>
              <td class="bank-table-value">
                ${contextVariables.header.unutilizedAmount!} </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    <div style="font-family: EmbArialBold;font-weight: normal;margin-top: 5px;font-size: 12px;padding-top: 8px;">
      RINGKASAN CAJ / BAYARAN<br />
      <span style="font-family: EmbArialItalic;font-weight:normal;">SUMMARY OF CHARGES / PAYMENT</span>
    </div>
    <table class="table-payment">
      <thead>
        <tr>
          <th
            style="text-align: left;font-family: EmbArialBold; font-weight: normal;width:270px;max-width: 270px;padding-left: 5px;">
            Caj / Bayaran <br /><span style="font-family: EmbArialItalic;font-weight: normal;">Charges / Payment</span>
          </th>
          <th style="font-family: EmbArialBold; font-weight: normal;width: 200px;max-width: 200px;"><u
              style="border-bottom: 1.5px solid;">Caj / Bayaran
              Bulan Semasa </u><br /><u><span style="font-family: EmbArialItalic;font-weight: normal;">Current Month
                Charges /
                Payment</span></u><br />(RM)</th>
          <th style="font-family: EmbArialBold; font-weight: normal;"><u style="border-bottom: 1.5px solid;">Baki
              Tunggakan Caj / Bayaran</u> <br /><u><span
                style="font-family: EmbArialItalic; font-weight: normal;">Overdue Charges / Payment</span></u><br />(RM)
          </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="align-left">Caj Keuntungan<br /><span class="font-italic">Profit Charge</span></td>
          <td class="table-payment-body">${contextVariables.header.currentMonthProfitCharge!}</td>
          <td class="table-payment-body">${contextVariables.header.overdueChargesProfitCharge!}</td>
        </tr>
        <tr>
          <td class="align-left">Caj Ta'widh<br /><span class="font-italic">Ta'widh Charge</span></td>
          <td class="table-payment-body">${contextVariables.header.currentMonthTawidhCharge!}</td>
          <td class="table-payment-body">${contextVariables.header.overdueChargesTawidhCharge!}</td>
        </tr>
        <tr>
          <td class="align-left">Lebihan Sementara<br /><span class="font-italic">Temporary Excess</span></td>
          <td class="table-payment-body">${contextVariables.header.currentMonthTemporaryExcess!}</td>
          <td class="table-payment-body">${contextVariables.header.overdueChargesTemporaryExcess!}</td>
        </tr>
        <tr>
          <td class="align-left">Yuran Lebihan Sementara<br /><span class="font-italic">Temporary Excess Fee</span></td>
          <td class="table-payment-body">${contextVariables.header.currentMonthTemporaryExcessFee!}</td>
          <td class="table-payment-body">0.00</td>
        </tr>
        <tr>
          <td class="align-left">Caj Ta'widh ke atas Lebihan Sementara<br /><span class="font-italic">Ta'widh Charge on
              Temporary Excess</span></td>
          <td class="table-payment-body">${contextVariables.header.currentMonthTawidhChargeOnTemporaryExcess!}</td>
          <td class="table-payment-body">0.00</td>
        </tr>
        <tr>
          <td class="align-left">**Kos Pelbagai<br /><span class="font-italic">**Miscellaneous Cost</span><br /></td>
          <td class="table-payment-body">${contextVariables.header.currentMonthMiscellaneousCost!}</td>
          <td class="table-payment-body">${contextVariables.header.overdueChargesMiscellaneousCost!}</td>
        </tr>
        <tr>
          <td class="align-left">Caj-caj Lain<br /><span class="font-italic">Other Charges</span><br /></td>
          <td class="table-payment-body">${contextVariables.header.currentMonthOtherCharges!}</td>
          <td class="table-payment-body">${contextVariables.header.overdueChargesOtherCharges!}</td>
        </tr>
        <tr>
          <td class="align-left">Bayaran atas Penggunaan pada Tarikh Matang<br /><span class="font-italic">Payment Due
              on Utilization Upon Maturity</span></td>
          <td class="table-payment-body">${contextVariables.header.currentMonthPaymentDueOnUtilizationUponMaturity!}
          </td>
          <td class="table-payment-body">${contextVariables.header.overdueChargesPaymentDueOnUtilizationUponMaturity!}
          </td>
        </tr>
        <tr>
          <td style="font-family: EmbArialBold;font-weight: normal; padding-left: 5px;">Jumlah / <span
              class="font-italic">Total</span></td>
          <td class="table-payment-body">${contextVariables.header.currentMonthTotal!}
          </td>
          <td class="table-payment-body">${contextVariables.header.overdueChargesTotal!}
          </td>
        </tr>
      </tbody>
    </table>
    <span style="font-family: EmbArialBold;font-weight: normal;padding-left: 7px;">**Pendahuluan oleh Bank/Advances by
      the Bank</span>
    <div style="margin-top: 10px;font-size: 12px;">
      <span style="font-family: EmbArialBold;font-weight: normal;">PENYATA AKAUN SEMASA ALIRAN TUNAl-i /</span> <span
        style="font-family: EmbArialItalicBold; font-weight: normal;">CURRENT ACCOUNT CASH LINE-i STATEMENT</span><br />
      <#if contextVariables.header.iaProductFlag="N">
        <span>(Dilindungi oleh PIDM setakat RM250,000 bagi setiap pendeposit./<br /><span
            style="font-family: EmbArialItalic; font-weight: normal;">Protected by PIDM up to RM250,000 for each
            depositor.)</span></span>
      </#if>
      <#if contextVariables.header.iaProductFlag="Y">
        <span>(Tidak dilindungi oleh Perbadanan Insurans Deposit Malaysia./<br /><span
            style="font-family: EmbArialItalic; font-weight: normal;">Not protected by Perbadanan Insurans Deposit
            Malaysia.)</span></span>
      </#if>
    </div>
   
    <table class="transaction-table">
      <thead style="vertical-align: top;font-size: 12px;">
        <tr>
          <th class="transaction-table-header" style="width: 80px; max-width: 80px;">TARIKH<br /><span
              style="font-family: EmbArialItalic;font-weight: normal;">DATE</span></th>
          <th class="transaction-table-header" style="width: 350px; max-width: 350px;">
            KETERANGAN<br /><span style="font-family: EmbArialItalic;font-weight: normal;">DESCRIPTION</span>
          </th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">DEBIT<br /><span
              style="font-family: EmbArialItalic;font-weight: normal;">DEBIT</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">(RM)</span></th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">KREDIT<br /><span
              style="font-family: EmbArialItalic;font-weight: normal;">CREDIT</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">(RM)</span></th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">BAKI<br /><span
              style="font-family: EmbArialItalic;font-weight: normal;">BALANCE</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">(RM)</span></th>
        </tr>
      </thead>
      <tbody style="font-family: EmbArial; font-weight: normal;">
        <#if contextVariables.accountDto??>
        <tr>
          <td class="break" style="vertical-align: top;padding: 5px;">${contextVariables.accountDto.transactionDate!}</td>

          <td class="break"
            style="text-align: left; padding-left: 90px; padding-top: 2px; padding-bottom: 2px; border-left: hidden;">
            ${contextVariables.accountDto.description?default("No Description Available")} <br />
            <span style="font-family: EmbArialItalic; font-weight: normal;">Previous Balance</span>
          </td>
          
          <td class="break" style="text-align: right;vertical-align: top;padding: 5px;border-left: hidden; ">
            ${contextVariables.accountDto.creditAmount!}</td>
          <td class="break" style="text-align: right;vertical-align: top;padding: 5px; border-left: hidden;">
            ${contextVariables.accountDto.debitAmount!}</td>

          <td class="break" style="text-align: right;border-left: hidden;padding-right: 10px;">
            ${contextVariables.accountDto.runningBalance?default("0.00")}
          </td>
        </tr>
      </#if>

        <#list contextVariables.transactions as row>
        <tr>
          <td class="break" style="vertical-align: top;padding: 5px;">${row.transactionDate!}</td>
          <td class="break" style="text-align: left;vertical-align: top;padding: 5px;">
            <#list row.description?split("|") as sValue>
              <#if sValue?trim?length gt 0>
                ${sValue}<#if sValue?has_next><br /></#if>
              </#if>
            </#list>
          </td>
          <td class="break" style="text-align: right;vertical-align: top;padding: 5px;">
            ${row.creditAmount!}</td>
          <td class="break" style="text-align: right;vertical-align: top;padding: 5px;">
            ${row.debitAmount!}</td>
          <td class="break" style="text-align: right;vertical-align: top;padding: 5px;">
            ${row.runningBalance!}</td>
        </tr>
      </#list>
       
        <tr>
          <td style="padding: 0;padding-bottom: 13.5px;">
            <div style="border: none; border-top:1px solid;"></div>
          </td>
          <td style="text-align: left;font-family: EmbArialBold; font-weight: normal;font-size: 11px;padding: 0;">
            <div style="border: none; border-top:1px solid;padding-left: 32px;">JUMLAH / <span
                style="font-family: EmbArialItalicBold; font-weight: normal;">TOTAL</span></div>
          </td>
          <td style="text-align: right; vertical-align: top;padding: 0;">
            <div style="border: none;border-top:1px solid;">0.00&#160;&#160;&#160;</div>
          </td>
          <td style="text-align: right; vertical-align: top;padding: 0;">
            <div style="border: none; border-top:1px solid;">0.00&#160;&#160;&#160;</div>
          </td>
          <td style="text-align: right; vertical-align: top;padding: 0;">
            <div style="border: none; border-top:1px solid;">&#160;&#160;&#160;</div>
          </td>
        </tr>
        <tr>
          <td style="border-bottom: hidden;line-height: 0.5;"></td>
          <td
            style="text-align: left;font-family: EmbArialBold; font-weight: normal;font-size: 10px;border-left: hidden;border-bottom: hidden;line-height: 0.5;">
            &#160;&#160;JUMLAH DEBIT / <span style="font-family: EmbArialItalicBold;font-weight: normal;">TOTAL
              DEBIT</span></td>
          <td
            style="text-align: right; vertical-align: top;padding: 5px; border-left: hidden; border-bottom: hidden;line-height: 0.5;">
            ${contextVariables.header.numberOfDebits!}&#160;</td>
          <td
            style="text-align: right; vertical-align: top;padding: 5px; border-left: hidden; border-bottom: hidden;line-height: 0.5;">
            ${contextVariables.header.amountOfDebits!}&#160;</td>
          <td
            style="text-align: right; vertical-align: top;padding: 5px; border-left: hidden; border-bottom: hidden;line-height: 0.5;">
          </td>
        </tr>
        <tr>
          <td style="border-bottom: hidden;line-height: 0.5;"></td>
          <td
            style="text-align: left;font-family: EmbArialBold; font-weight: normal;font-size: 10px;border-left: hidden;border-bottom: hidden;border-bottom: hidden;line-height: 0.5;">
            &#160;&#160;JUMLAH KREDIT / <span style="font-family: EmbArialItalicBold;font-weight: normal;">TOTAL
              CREDIT</span></td>
          <td
            style="text-align: right; vertical-align: top;padding: 5px;border-left: hidden;border-bottom: hidden;line-height: 0.5;">
            ${contextVariables.header.numberOfCredits!}&#160;</td>
          <td
            style="text-align: right; vertical-align: top;padding: 5px;border-left: hidden;border-bottom: hidden;line-height: 0.5;">
            ${contextVariables.header.amountOfCredits!}&#160;</td>
          <td
            style="text-align: right; vertical-align: top;padding: 5px;border-left: hidden;border-bottom: hidden;line-height: 0.5;">
          </td>
        </tr>
        <tr>
          <td style="border-bottom: hidden;line-height: 0.5;"></td>
          <td
            style="text-align: left;font-family: EmbArialBold; font-weight: normal;font-size: 10px;border-left: hidden;border-bottom: hidden;border-bottom: hidden;line-height: 0.5;">
            &#160;&#160;JUMLAH CEK (TERAPUNG) / <span style="font-family: EmbArialItalicBold;font-weight: normal;">TOTAL
              CHEQUE
              (FLOAT)</span></td>
          <td
            style="text-align: right; vertical-align: top;padding: 5px;border-left: hidden;border-bottom: hidden;line-height: 0.5;">
          </td>
          <td
            style="text-align: right; vertical-align: top;padding: 5px;border-left: hidden;border-bottom: hidden;line-height: 0.5;">
            ${contextVariables.header.totalChequeInFloat!}&#160;</td>
          <td
            style="text-align: right; vertical-align: top;padding: 5px;border-left: hidden;border-bottom: hidden;line-height: 0.5;">
          </td>
        </tr>
        <tr>
          <td style="line-height: 0.5;"></td>
          <td
            style="text-align: left;font-family: EmbArialBold; font-weight: normal;font-size: 10px;border-left: hidden;line-height: 0.5;">
            &#160;&#160;PURATA BULANAN / <span style="font-family: EmbArialItalicBold;font-weight: normal;">MONTHLY
              AVERAGE
              (RM)</span></td>
          <td style="text-align: right; vertical-align: top;padding: 5px;border-left: hidden;line-height: 0.5;"></td>
          <td style="text-align: right; vertical-align: top;padding: 5px;border-left: hidden;line-height: 0.5;">
            ${contextVariables.header.monthlyAverage!}&#160;
          </td>
          <td style="text-align: right; vertical-align: top;padding: 5px;border-left: hidden;line-height: 0.5;"></td>
        </tr>
      </tbody>


    </table>
    <div style="page-break-inside: avoid;">
      <div class="container" style="page-break-inside: avoid;">
        <#if contextVariables.excessBalanceFlag=="Y" && contextVariables.overduePaymentFlag=="Y">
          <div class="section-title" style="border-top: 0.8px solid;">NOTA PENTING / IMPORTANT NOTE</div>
          <div class="summary" style=" padding-left: 35px;padding-right: 35px;font-size: 11px;">
            Kemudahan Aliran Tunai-i anda akan matang pada ${contextVariables.maturityDate!}, Sila jelaskan
            sebarang tunggakan (jika ada) dengan
            segera.<br /> Anda dinasihatkan untuk mengambil tindakan yang sewajarnya bagi menjelaskan jumlah yang
            terhutang kepada pihak Bank sebelum atau pada tarikh matang di atas.<br />
            <span style="font-family: EmbArialItalic;">Your Cashline-i Facility will mature on
              ${contextVariables.maturityDate!}. Kindly
              regularise overdue payment (if any) immediately. You are advised to make the necessary arrangement for
              settlement of the amount due to the Bank on or before the above
              maturity date.</span><br />
            Sila jelaskan sebarang tunggakan bayaran dan/atau kemaskini akaun anda dengan segera bagi mengelakkan
            sebarang kesulitan. Sila abaikan sekiranya akaun anda telah dikemaskini.<br />
            Sekiranya akaun anda telah tertunggak dan/atau baki hutang pembiayaan telah melebihi jumlah yang telah
            diluluskan dan/atau kemudahan anda telah matang, penyata ini adalah dikeluarkan tanpa prejudis kepada hak
            pihak Bank
            untuk menuntut jumlah keseluruhan yang terhutang termasuk ta'widh (gantirugi) dan/atau mana-mana
            perbelanjaan yang
            ditanggung/didahulukan oleh pihak Bank.<br />
            <span style="font-family: EmbArialItalic;">Kindly regularise any overdue payment and/or update your account
              soonest possible to avoid any inconvenience.Please ignore if your account has been updated.<br />
              In the event your account is in arrears and/or the outstanding balance has exceeded the approved limit
              and/or the facility has matured, this statement is issued without prejudice on the Bank's right to recover
              the total
              Indebtedness including ta'widh (compensation) and/or any other expenses incurred/advanced by the Bank
              whatsoever.</span>
          </div>
          <#elseif contextVariables.overduePaymentFlag="Y">
            <div class="section-title" style="border-top: 0.8px solid;">NOTA PENTING / IMPORTANT NOTE</div>
            <div class="summary" style=" padding-left: 35px;padding-right: 35px;font-size: 11px;">
              Sila jelaskan sebarang tunggakan bayaran dan/atau kemaskini akaun anda dengan segera bagi mengelakkan
              sebarang kesulitan. Sila abaikan sekiranya akaun anda telah dikemaskini.<br />
              Sekiranya akaun anda telah tertunggak dan/atau baki hutang pembiayaan telah melebihi jumlah yang telah
              diluluskan dan/atau kemudahan anda telah matang, penyata ini adalah dikeluarkan tanpa prejudis kepada hak
              pihak Bank
              untuk menuntut jumlah keseluruhan yang terhutang termasuk ta'widh (gantirugi) dan/atau mana-mana
              perbelanjaan
              yang ditanggung/didahulukan oleh pihak Bank.<br />
              <span style="font-family: EmbArialItalic;">Kindly regularise any overdue payment and/or update your
                account soonest possible to avoid any inconvenience. Please ignore if your account has been
                updated.<br />
                In the event your account is in arrears and/or the outstanding balance has exceeded the approved limit
                and/or the facility has matured, this statement is issued without prejudice on the Bank's right to
                recover the total
                indebtedness including ta'widh (compensation) and/or any other expenses incurred/advanced by the Bank
                whatsoever.</span>
            </div>
            <#elseif contextVariables.maturedFlag="Y">
              <div class="section-title" style="border-top: 0.8px solid;">NOTA PENTING / IMPORTANT NOTE</div>
              <div class="summary" style=" padding-left: 35px;padding-right: 35px;font-size: 11px;">
                Kemudahan Aliran Tunai-i anda akan matang pada ${contextVariables.maturityDate!}. Sila jelaskan sebarang
                tunggakan (jika ada)
                dengan segera.Anda dinasihatkan untuk mengambil tindakan yang sewajarnya bagi menjelaskan jumlah yang
                terhutang kepada
                pihak Bank sebelum atau pada tarikh matang di atas.<br /><span style="font-family: EmbArialItalic;">Your
                  Cashline-i Facility will mature on ${contextVariables.maturityDate!}. Kindly regularise overdue payment
                  (if any) immediately.
                  You <br />are advised to make the necessary arrangement for settlement
                  of the amount due to the Bank on or before the above<br /> maturity date.</span>
              </div>
              <#elseif contextVariables.excessBalanceFlag="Y">
                <div class="section-title" style="border-top: 0.8px solid;">NOTA PENTING / IMPORTANT NOTE</div>
                <div class="summary" style=" padding-left: 35px;padding-right: 35px;font-size: 11px;">
                  Kemudahan Aliran Tunai-i anda akan matang pada ${contextVariables.maturityDate!}, Sila jelaskan
                  sebarang tunggakan (jika ada) dengan
                  segera.<br /> Anda dinasihatkan untuk mengambil tindakan yang sewajarnya bagi menjelaskan jumlah yang
                  terhutang kepada pihak Bank sebelum atau pada tarikh matang di atas.<br />
                  <span style="font-family: EmbArialItalic;">Your Cashline-i Facility will mature on
                    ${contextVariables.maturityDate!}. Kindly
                    regularise overdue payment (if any) immediately. You are advised to make the necessary arrangement
                    for
                    settlement of the amount due to the Bank on or before the above
                    maturity date.</span><br />
                  Sila jelaskan sebarang tunggakan bayaran dan/atau kemaskini akaun anda dengan segera bagi mengelakkan
                  sebarang kesulitan. Sila abaikan sekiranya akaun anda telah dikemaskini.<br />
                  Sekiranya akaun anda telah tertunggak dan/atau baki hutang pembiayaan telah melebihi jumlah yang telah
                  diluluskan dan/atau kemudahan anda telah matang, penyata ini adalah dikeluarkan tanpa prejudis kepada
                  hak
                  pihak Bank
                  untuk menuntut jumlah keseluruhan yang terhutang termasuk ta'widh (gantirugi) dan/atau mana-mana
                  perbelanjaan yang
                  ditanggung/didahulukan oleh pihak Bank.<br />
                  <span style="font-family: EmbArialItalic;">Kindly regularise any overdue payment and/or update your
                    account
                    soonest possible to avoid any inconvenience.Please ignore if your account has been updated.<br />
                    In the event your account is in arrears and/or the outstanding balance has exceeded the approved
                    limit
                    and/or the facility has matured, this statement is issued without prejudice on the Bank's right to
                    recover
                    the total
                    Indebtedness including ta'widh (compensation) and/or any other expenses incurred/advanced by the
                    Bank
                    whatsoever.</span>
                </div>
        </#if>
        <div class="section-title" style="border-top: 1px solid;">MESEJ / MESSAGES</div>
        <#if contextVariables.header.totalMessages?has_content>
         <div class="messages">
          <table>
            <tr>
              <td>
                <#compress>
                  <#if contextVariables.header.totalMessages??>
                    <#list contextVariables.header.totalMessages?split("|") as sValue>
                      <#if sValue?trim?length gt 0>
                        ${sValue}<#if sValue?has_next><br /></#if>
                      </#if>
                    </#list>
                  </#if>
                </#compress>
              </td>
            </tr>
          </table>
         </div>
        </#if>
      </div>
      <!-- Notes Section -->
      <div class="notes">
        Sekiranya anda mendapati sebarang perbezaan, sila maklumkan kepada pihak Bank di dalam tempoh 14 hari daripada
        tarikh penyata ini. Jika tiada
        perbezaan,<br /> penyata ini akan dianggap betul.<br />
        <span style="font-family: EmbArialItalic; font-weight: normal;">If you note any discrepancies, please advise the
          Bank within 14 days from the date of this statement, otherwise this account statement is considered to be
          correct.</span><br />
        Untuk pertanyaan, ajukan kepada / <span style="font-family: EmbArialItalic; font-weight: normal;">For enquiries,
          please channel to:</span><br />
        Jabatan Khidmat Pelanggan <span style="font-family: EmbArialItalic; font-weight: normal;">(Customer Care
          Department)</span>, Tingkat 17, Menara Bank Islam, No 22, Jalan Perak, 50450 Kuala Lumpur. Tel: 03-26 900
        <span style="padding-top: 5px;">900 /
          Faks: <br />03-2782 1337. Emel / <span style="font-family: EmbArialItalic; font-weight: normal;">Email:</span>
          <span class="overlap-underline">contactcenter@bankislam.com.my</span>
        </span>
      </div>
    </div>
  </main>
</body>
</html>