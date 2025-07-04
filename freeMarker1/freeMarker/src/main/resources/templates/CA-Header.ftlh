<!DOCTYPE html>
<html lang="en">
<head>
  <title>Current Account Statement</title>
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
      border: 1px solid;
      padding-bottom: 15px;
      padding-top: 3px;
      font-weight: normal;
      font-family: EmbArialBold;
    }

    #common-td-header-width{
      width: 100px; 
      max-width: 100px;
    }

    #common-td-body-width{
      text-align: right;
      vertical-align: top;
      padding: 5px;
    }

    .page-info::after {
      content: counter(page) " of " counter(pages);
    }

    .break {
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
    }

    .font-italic {
      font-family: EmbArialItalic;
      font-weight: normal;
    }

    .font-normal{
      font-family: EmbArial;
    }

    .font-bold{
      font-family: EmbArialBold;
      font-weight: normal;
    }

    .font-italic-bold{
      font-family: EmbArialItalicBold;
      font-weight: normal;
    }

    .common-div{
      margin-top: 10px;
      padding-left: 8px;

    }

    .info-table{
      font-weight: normal;
      border-spacing: 0;
      border-collapse: collapse;
      margin-top: 20px;
      display: inline-block;
      font-size: 11px;
      font-family: EmbArial;
      line-height: 1.2;
    }

    #info-first-col{
      padding: 0;
      font-family: EmbArialBold;
      font-weight: normal;
    }

    #info-third-col{
      padding: 0;
      text-align: right;
      font-family: EmbArialBold;
      font-weight: normal;
      vertical-align: bottom;
      padding-right: 10px;
    }

    .customer-details-table{
      margin-top: 30px;
      border-collapse: collapse;
      width: 100%;
      font-size: 11px;
      font-family: EmbArial;
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
    <table class="customer-details-table">
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
        <td style="text-align: justify; padding-left: 40px;padding-bottom:5px;">
            <table class="info-table">
              <tr>
                <th class="not-bold" id="info-first-col">
                  TARIKH PENYATA <br /><span class="font-italic">STATEMENT DATE</span>
                </th>
                <td class="padding-td">:</td>
                <td class="break" id="info-third-col">
                  ${contextVariables.statementDate!}</td>
              </tr>
              <tr>
                <th class="not-bold" id="info-first-col">
                  HALAMAN <br />
                  <span class="font-italic">PAGE</span>
                </th>
                <td class="padding-td">:</td>
                <td class="page-info" id="info-third-col" style="padding-top: 10px;">
                </td>
              </tr>
              <tr>
                <th class="not-bold" id="info-first-col" style="width: 10px;">
                  NOMBOR AKAUN <br />
                  <span class="font-italic">ACCOUNT NUMBER</span>
                </th>
                <td class="padding-td">:</td>
                <td class="break" id="info-third-col" style="width: 170px;">
                  ${contextVariables.header.customerAccountNumber!}
                </td>
              </tr>
              <tr>
                <th class="not-bold" id="info-first-col">
                  CAWANGAN <br /><span class="font-italic">BRANCH</span>
                </th>
                <td class="padding-td">:</td>
                <td class="break" id="info-third-col">
                  ${contextVariables.header.branchName!}</td>
              </tr>
            </table>              
        </td>
      </tr>
    </table>
    <#if contextVariables.header.gainFlag?? && contextVariables.header.gainFlag?lower_case=='y'>
    <div class="common-div">
      <span class="font-bold">PENYATA AKAUN /</span> <span
        class="font-italic-bold">ACCOUNT STATEMENT</span><br />
          <span>AKAUN SEMASA /</span> <span style="font-family: EmbArialItalic;">CURRENT ACCOUNT</span><br />
      <span>(Tidak dilindungi oleh PIDM. / <span style="font-family: EmbArialItalic; font-weight: normal;">Not
          protected by PIDM.</span>)</span>
    </div>
    <#else>
      <div class="common-div">
        <span class="font-bold">PENYATA AKAUN /</span> <span
          class="font-italic-bold">ACCOUNT STATEMENT</span><br />
            <span>AKAUN SEMASA /</span> <span class="font-italic">CURRENT ACCOUNT</span><br />
        <span>(Dilindungi oleh PIDM setakat RM250,000 bagi setiap pendeposit. /</span><br />
        <span class="font-italic">Protected by PIDM up to RM250,000 for each depositor.)</span>
      </div>
  </#if>
  </header>

  <main style="font-size: 11px;">
    <table class="transaction-table">
      <thead style="vertical-align: top;">
        <tr>
          <th class="transaction-table-header" style="width: 70px; max-width: 70px;">TARIKH<br /><span
              class="font-italic">DATE</span></th>
          <th class="transaction-table-header">
            KETERANGAN<br /><span class="font-italic">DESCRIPTION</span>
          </th>
          <th class="transaction-table-header" id="common-td-header-width">DEBIT<br /><span
            class="font-italic">DEBIT</span><br /><span
              class="font-normal">(${contextVariables.header.currencyType!})</span></th>
          <th class="transaction-table-header" id="common-td-header-width">KREDIT<br /><span
            class="font-italic">CREDIT</span><br /><span class="font-normal">(${contextVariables.header.currencyType!})</span></th>
          <th class="transaction-table-header" id="common-td-header-width">BAKI<br /><span
            class="font-italic">BALANCE</span><br /><span class="font-normal">(${contextVariables.header.currencyType!})</span></th>
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
            <td class="break" id="common-td-body-width">${row.trxDate!}</td>
            <td class="break" style="text-align: left;vertical-align: top;padding: 5px;">
              <#list row.description?split("|") as sValue>
                <#if sValue?trim?length gt 0>
                  ${sValue}<#if sValue?has_next><br /></#if>
                </#if>
              </#list>
            </td>
            <td class="break" id="common-td-body-width">
              ${row.transactionAmountForDebit!}</td>
            <td class="break" id="common-td-body-width">
              ${row.transactionAmountForCredit!}</td>
            <td class="break" id="common-td-body-width">
              ${row.runningBalance!}</td>
          </tr>
        </#list>
      </tbody>
    </table>
  </main>
</body>
</html>