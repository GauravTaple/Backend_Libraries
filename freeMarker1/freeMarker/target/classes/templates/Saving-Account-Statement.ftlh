<!DOCTYPE html>
<html lang="en">
<head>
    <title>Saving Account Statement</title>
  <meta charset="utf-8" />
  <style type="text/css">
    @page {
      size: A4;
      margin-left: 50px;
      margin-right: 50px;
      font-family: EmbArial;
      margin-top: 103mm;
      margin-bottom: 10mm;

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

    table {
      -fs-table-paginate: paginate;
      page-break-inside: avoid;
    }

    tr {
      page-break-inside: avoid;
      break-inside: avoid;
    }

    td,
    th {
      page-break-inside: avoid;
      break-inside: avoid;
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
      padding-left: 30px;
      padding-right: 0px;
      padding-top: 10px;
      padding-bottom: 0;
      font-family: EmbArialBold;
    }

    .transaction-table {
      border-collapse: collapse;
      width: 100%;
      text-align: center;
      margin-left: 0.5px;
      page-break-inside: avoid;
    }

    .transaction-table td,
    .transaction-table th {
      border: 1px solid;
      text-align: center;
      padding: 3px;
      page-break-inside: avoid;
    }

    .transaction-table-header {
      /* background-color: #e0e0e0; */
      border: 1px solid;
      padding-bottom: 15px;
      padding-top: 3px;
      font-weight: normal;
      font-family: EmbArialBold;
    }

    .container {
      width: 100%;
      border: 1px solid;
      font-size: 11px;
      page-break-inside: avoid;
    }

    .section-title {
      background-color: #000;
      color: #fff;
      text-align: center;
      font-size: 11px;
      font-family: EmbArialBold;
      font-weight: normal;
      padding: 2px;
    }

    .summary {
      padding-bottom: 3px;
      page-break-inside: avoid;
    }

    .messages {
      text-align: center;
      padding: 2px;
      font-family: EmbArialBold;
      font-weight: normal;
      page-break-inside: avoid;
    }

    .summary table,
    .messages table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 2px;
      page-break-inside: avoid;
    }

    .summary td,
    .messages td {
      padding-left: 25px;
      text-align: center;
      font-family: EmbArialBold;
      font-weight: normal;
      page-break-inside: avoid;
    }

    .summary td:first-child {
      font-weight: bold;
      page-break-inside: avoid;
    }

    .notes {
      font-size: 11px;
      margin-top: 2px;
      line-height: 1;
      text-align: justify;
    }

    .page-info::after {
      content: counter(page) " of " counter(pages);
    }

    .break {
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
    }

    .overlap-underline {
      display: inline-block;
      position: relative;
    }

    .overlap-underline::after {
      content: "";
      position: absolute;
      left: 0;
      bottom: -2px;
      width: 100%;
      height: 1px;
      background-color: black;
      z-index: -1;
    }
  </style>
</head>
<body>
  <header style="text-align: left;margin-bottom: -30px;margin-top: 30px;">
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
        <td style="text-align: justify; padding: 5px; width: 52%;">
          <div style="margin-top: -20px;min-height: 110px;max-height: 110px;">
            <#if contextVariables.header.name?has_content>
              ${contextVariables.header.name}<br />
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
        <td style="text-align: justify; padding-left: 40px;padding-bottom:5px ;">
            <table style="
                font-weight: normal;
                border-spacing: 0;
                border-collapse: collapse;
                margin-top: 20px;
                display: inline-block;
                font-size: 11px;
                font-family: EmbArial;
                line-height: 1.2;
              ">
              <tr>
                <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;">
                  TARIKH PENYATA <br /><span style="font-family: EmbArialItalic;">STATEMENT DATE</span>
                </th>
                <td class="padding-td">:</td>
                <td class="break"
                  style="padding: 0;text-align: right;font-family: EmbArialBold;font-weight: normal;vertical-align: bottom;padding-right: 10px;">
                  ${contextVariables.statementDate!}</td>
              </tr>
              <tr>
                <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;">
                  HALAMAN <br />
                  <span style="font-family: EmbArialItalic;">PAGE</span>
                </th>
                <td class="padding-td">:</td>
                <td class="page-info"
                  style="padding: 0;text-align: right;font-family: EmbArialBold;font-weight: normal;padding-top: 10px;padding-right: 10px;">
                </td>
              </tr>
              <tr>
                <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;width: 10px;">
                  NOMBOR AKAUN <br />
                  <span style="font-family: EmbArialItalic;">ACCOUNT NUMBER</span>
                </th>
                <td class="padding-td">:</td>
                <td class="break"
                  style="padding: 0;text-align: right;font-family: EmbArialBold;font-weight: normal;vertical-align: bottom; width: 170px;padding-right: 10px;">
                  ${contextVariables.header.customerAccountNumber!}
                </td>
              </tr>
              <tr>
                <th class="not-bold" style="padding: 0;font-family: EmbArialBold;font-weight: normal;">
                  CAWANGAN <br /><span style="font-family: EmbArialItalic;">BRANCH</span>
                </th>
                <td class="padding-td">:</td>
                <td class="break"
                  style="padding: 0;text-align: right;font-family: EmbArialBold;font-weight: normal;vertical-align: bottom;padding-right: 10px;">
                  ${contextVariables.header.branchName!}</td>
              </tr>
            </table>              
        </td>
      </tr>
    </table>
    <#if contextVariables.header.gainFlag?? && contextVariables.header.gainFlag?lower_case=='y'>
      <!-- Code to execute if the condition is true -->
      <div style="margin-top: 10px;padding-left: 8px;">
        <span style="font-family: EmbArialBold;font-weight: normal;">PENYATA AKAUN /</span> <span
          style="font-family: EmbArialItalicBold; font-weight: normal;">ACCOUNT STATEMENT</span><br />
          <span>AKAUN AL-AWFAR /</span> <span style="font-family: EmbArialItalic;">AL-AWFAR ACCOUNT</span><br />
        <span>(Tidak dilindungi oleh PIDM. / <span style="font-family: EmbArialItalic; font-weight: normal;">Not
            protected by PIDM.</span>)</span>
      </div>
      <#else>
        <!-- Code to execute if the condition is false -->
        <div style="margin-top: 10px;padding-left: 8px;">
          <span style="font-family: EmbArialBold;font-weight: normal;">PENYATA AKAUN /</span> <span
            style="font-family: EmbArialItalicBold; font-weight: normal;">ACCOUNT STATEMENT</span><br />
            <span>AKAUN SIMPANAN /</span> <span style="font-family: EmbArialItalic;">SAVINGS ACCOUNT</span><br />
          <span>(Dilindungi oleh PIDM setakat RM250,000 bagi setiap pendeposit. /</span><br />
          <span style="font-family: EmbArialItalic;">Protected by PIDM up to RM250,000 for each depositor.)</span>
        </div>
    </#if>
  </header>

  <main style="font-size: 11px;">
    <table class="transaction-table">
      <thead style="vertical-align: top;">
        <tr>
          <th class="transaction-table-header" style="width: 70px; max-width: 70px;">TARIKH<br /><span
              style="font-family: EmbArialItalic;font-weight: normal;">DATE</span></th>
          <th class="transaction-table-header">
            KETERANGAN<br /><span style="font-family: EmbArialItalic;font-weight: normal;">DESCRIPTION</span>
          </th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">DEBIT<br /><span
              style="font-family: EmbArialItalic;font-weight: normal;">DEBIT</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">(${contextVariables.header.currencyType!}) </span></th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">KREDIT<br /><span
              style="font-family: EmbArialItalic;font-weight: normal;">CREDIT</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">
              (${contextVariables.header.currencyType!})
            </span></th>
          <th class="transaction-table-header" style="width: 100px; max-width: 100px;">BAKI<br /><span
              style="font-family: EmbArialItalic;font-weight: normal;">BALANCE</span><br /><span
              style="font-family: EmbArial;font-weight: normal;">
              (${contextVariables.header.currencyType!})
            </span></th>
        </tr>
      </thead>
      <tbody>
        <#if contextVariables.accountDto??>
          <tr>
            <td class="break" colspan="4"
              style="text-align: left; padding-left: 90px; padding-top: 2px; padding-bottom: 2px;">
              ${contextVariables.accountDto.description?default("No Description Available")} <br />
            </td>
            <td class="break" style="text-align: right;border-left: hidden;padding-right: 10px;">
              ${contextVariables.accountDto.runningBalance?default("0.00")}
            </td>
          </tr>
        </#if>
        <#list contextVariables.statements as row>
          <tr>
            <td class="break" style="vertical-align: top;padding: 5px;">${row.trxDate!}</td>
            <td class="break" style="text-align: left;vertical-align: top;padding: 5px;">
              <#list row.description?split("|") as sValue>
                <#if sValue?trim?length gt 0>
                  ${sValue}<#if sValue?has_next><br /></#if>
                </#if>
              </#list>
            </td>
            <td class="break" style="text-align: right;vertical-align: top;padding: 5px;">
              ${row.transactionAmountForDebit!}</td>
            <td class="break" style="text-align: right;vertical-align: top;padding: 5px;">
              ${row.transactionAmountForCredit!}</td>
            <td class="break" style="text-align: right;vertical-align: top;padding: 5px;">
              ${row.runningBalance!}</td>
          </tr>
        </#list>
      </tbody>
    </table>

    <div style="page-break-inside: avoid;">
      <div class="container" style="page-break-inside: avoid;">
        <div class="section-title">RINGKASAN AKAUN / SUMMARY OF ACCOUNT</div>
        <div class="summary">
          <table>
            <tr>
              <td style="width: 167px; text-align: left;font-family: EmbArialBold; font-weight: normal;">TOTAL DEBIT
              </td>
              <td style="width: 70px; text-align: right;">${contextVariables.header.noOfDebit!}</td>
              <td style="width: 100px; text-align: right;padding-right: 4px;">${contextVariables.header.amountOfDebit!}
              </td>
              <td></td>
            </tr>
            <tr>
              <td style="width: 167px; text-align: left;font-family: EmbArialBold; font-weight: normal;">TOTAL CREDIT
              </td>
              <td style="width: 70px; text-align: right">${contextVariables.header.noOfCredit!}</td>
              <td style="width: 100px; text-align: right; padding-right: 4px;">
                ${contextVariables.header.amountOfCredit!}</td>
            </tr>
            <tr>
              <td style="width: 167px; text-align: left;font-family: EmbArialBold; font-weight: normal;">
                MONTHLY AVERAGE &#160;( ${contextVariables.header.currencyType!} &#160;&#160;)
              </td>
              <td style="width: 70px; text-align: right"></td>
              <td style="width: 100px; text-align: right">
                <#if contextVariables.header.monthlyAverage?string?contains("-")>
                  ${contextVariables.header.monthlyAverage}
                  <#else>
                    ${contextVariables.header.monthlyAverage}&#160;
                </#if>
              </td>
            </tr>
          </table>
        </div>
        <#if contextVariables.header.message?has_content>
          <div class="section-title">MESEJ / MESSAGES</div>
          <div class="messages">
            <table>
              <tr>
                <td>
                  <#compress>
                    <#if contextVariables.header.message??>
                      <#list contextVariables.header.message?split("|") as sValue>
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
      <div class="notes">
        Sekiranya anda mendapati sebarang perbezaan, sila maklumkan kepada pihak
        Bank di dalam tempoh 14 hari daripada tarikh penyata ini. Jika tiada
        perbezaan, penyata ini akan dianggap betul.<br />
        <span style="font-family: EmbArialItalic; font-weight: normal;">If you note any discrepancies, please advise the
          Bank within 14 days
          from the date of this statement, otherwise this account statement is
          considered to be correct.</span><br />
        Untuk pertanyaan, ajukan kepada / <span style="font-family: EmbArialItalic; font-weight: normal;">For enquiries,
          please channel to:</span><br />
        Jabatan Khidmat Pelanggan <span style="font-family: EmbArialItalic; font-weight: normal;">(Customer Care
          Department)</span>, Tingkat 17, Menara
        Bank Islam, No 22, Jalan Perak, 50450 Kuala Lumpur. <br />Tel: 03-26 900 900 /
        Faks: 03-2782 1337. Emel / <span style="font-family: EmbArialItalic; font-weight: normal;">Email:</span>
        <span class="overlap-underline">contactcenter@bankislam.com.my</span>
      </div>
    </div>
  </main>
</body>
</html>