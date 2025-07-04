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
      font-size: 11px;
    }

    .container {
      width: 100%;
      border: 1px solid;
      page-break-inside: avoid;
    }

    .section-title {
      background-color: #000;
      color: #fff;
      text-align: center;
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
      margin-top: 2px;
      line-height: 1;
      text-align: justify;
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
    
    #first-col{
      width: 167px; 
      text-align: left;
      font-family: EmbArialBold; 
      font-weight: normal;
    }

    #second-col{
      width: 70px; 
      text-align: right;
    }

    #third-col{
      width: 100px; 
      text-align: right;
      padding-right: 4px;
    }

    .font-italic{
      font-family: EmbArialItalic; 
      font-weight: normal;
    }
  </style>
</head>
<body>
  <main>
    <div style="page-break-inside: avoid;">
      <div class="container">
        <div class="section-title">RINGKASAN AKAUN / SUMMARY OF ACCOUNT</div>
        <div class="summary">
          <table>
            <tr>
              <td id="first-col">TOTAL DEBIT
              </td>
              <td id="second-col">${contextVariables.header.noOfDebit!}</td>
              <td id="third-col">${contextVariables.header.amountOfDebit!}
              </td>
              <td></td>
            </tr>
            <tr>
              <td id="first-col">TOTAL CREDIT
              </td>
              <td id="second-col">${contextVariables.header.noOfCredit!}</td>
              <td id="third-col">
                ${contextVariables.header.amountOfCredit!}</td>
            </tr>
              <tr>
                <td id="first-col">
                  TOTAL CHEQUE (FLOAT)
                </td>
                <td id="second-col"></td>
                <td id="third-col">${contextVariables.header.totalCheque}
                </td>
              </tr>
            <tr>
              <td id="first-col">
                MONTHLY AVERAGE &#160;( ${contextVariables.header.currencyType!} &#160;&#160;)
              </td>
              <td id="second-col"></td>
              <td id="third-col">
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
        <span class="font-italic">If you note any discrepancies, please advise the
          Bank within 14 days
          from the date of this statement, otherwise this account statement is
          considered to be correct.</span><br />
        Untuk pertanyaan, ajukan kepada / <span class="font-italic">For enquiries,
          please channel to:</span><br />
        Jabatan Khidmat Pelanggan <span class="font-italic">(Customer Care
          Department)</span>, Tingkat 17, Menara
        Bank Islam, No 22, Jalan Perak, 50450 Kuala Lumpur. <br />Tel: 03-26 900 900 /
        Faks: 03-2782 1337. Emel / <span class="font-italic">Email:</span>
        <span class="overlap-underline">contactcenter@bankislam.com.my</span>
      </div>
    </div>
  </main>
</body>
</html>