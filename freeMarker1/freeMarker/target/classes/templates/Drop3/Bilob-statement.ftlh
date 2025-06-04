<!DOCTYPE html>
<html lang="en">
<head>
  <title>BILOB Statement</title>
  <meta charset="utf-8" />
  <style type="text/css">
    @page {
      size: A4;
      margin-left: 50px;
      margin-right: 50px;
      margin-top: 86mm;
      margin-bottom: 44mm;

      @top-left {
        content: element(header);
      }

      @bottom-left {
        content: element(footer);
      }
    }

    body {
      font-family: EmbArial;
      font-size: 8pt;
    }

    header {
      text-align: left;
      position: running(header);
      width: 677px;
      margin-left: 7.5px;
      margin-top: 40px;
    }

    table {
      -fs-table-paginate: paginate;
    }

    tr {
      page-break-inside: avoid;
    }

    footer {
      position: running(footer);
      width: 677px;
      margin-left: 7.5px;
      margin-top: -80px;
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

    .transaction-table {
      border-collapse: collapse;
      width: 100%;
      margin-left: 0.5px;
      border: 1px solid #7c8484;
      height: 620px;
    }

    .transaction-table td {
      padding-right: 7px;
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
      vertical-align: top;
    }

    .transaction-table-header {
      background-color: #7c8484;
      border: 1px solid #7c8484;
      font-family: EmbArialBold;
      font-weight: normal;
      text-align: center;
      padding: 8px;
      color: #fff;
    }

    .container {
      margin-top: 8px;
    }

    .box {
      display: inline-block;
      text-align: center;
      border: 1px solid #7c8484;
      padding: 5px 0px;
      vertical-align: top;
    }

    .page-info::after {
      content: counter(page)
    }

    .break {
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
    }

    .fontItalic {
      font-family: EmbArialItalic;
    }

    .fontBold {
      font-family: EmbArialBold;
      font-weight: normal;
    }

    .alignTextLeft {
      text-align: left;
    }

    .totalTitle{
      text-align: left; 
      padding-left: 40px;
    }

    .alignTextRight {
      text-align: right;
    }

    .colorAndBgColor{
      background-color: #7c8484; 
      color: #fff;
    }

    .headerTable{
      margin-top: 43px;
      border-collapse: collapse;
      width: 100%;
    }

    .customerInfo{
      min-height: 120px;
      max-height: 120px; 
      border: 1px solid #7c8484; 
      border-radius: 15px;
      padding-left: 30px;
    }

    .topBorderNone{
      border-top: none;
    }

    .tableFooterMsg{
      padding: 0px 60px; 
      text-align: justify;
    }
  </style>
</head>
<body style="margin-top: 0px;">
  <header>
    <div class="logo-left">
      <img src="${contextVariables.bankIslamLogo!}" alt="bank_islam_logo"
        style="width: 216px; height: 50px;text-align: left;" />
    </div>
    <div class="logo-right" style="margin-top: -6px; margin-right: -30px;">
      <img src="${contextVariables.statementLogo!}" alt="statement_logo"
        style="width: 90px; height: 65px;display: inline-block;vertical-align: middle;margin-top: 5px;margin-left: 400px;" />
    </div>
  
    <table class="headerTable">
      <tr>
        <td style="width: 53%;">
          <div class="fontBold customerInfo">
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
        <td class="alignTextRight">
          <span class="fontBold">PENYATA AKAUN SEMASA</span><br />
          <span class="fontItalic">CURRENT ACCOUNT STATEMENT</span>
        </td>
      </tr>
    </table>
    <div class="container">
      <div>
        <div class="box fontBold colorAndBgColor" style="width: 25%;">
          NOMBOR AKAUN<br /><span class="fontItalic">ACCOUNT NO.</span></div>
        <div class="box fontBold colorAndBgColor"
          style="width: 42.4%;">
          CAWANGAN<br /><span class="fontItalic">BRANCH</span></div>
        <div class="box fontBold colorAndBgColor"
          style="width: 15%;">
          TARIKH<br /><span class="fontItalic">DATE</span></div>
        <div class="box fontBold colorAndBgColor"
          style="width: 15%;">
          MUKA SURAT<br /><span class="fontItalic">PAGE</span></div>
      </div>
      <div>
        <div class="box break fontBold topBorderNone" style="width: 25%;">1540104056654664655</div>
        <div class="box break fontBold topBorderNone" style="width: 42.4%;">Cawangan Pesisir Labuan</div>
        <div class="box break fontBold topBorderNone" style="width: 15%;">31/07/2014</div>
        <div class="box page-info break fontBold topBorderNone" style="width: 15%;"></div>
      </div>
    </div>
  </header>

  <footer>
    <div class="footer">
      <div style="border: 0.5px solid #7c8484;"></div>
      <div style="border: 1.5px solid #7c8484; margin-top: 2px;"></div>
      <div>
        Jumlah dan baki yang tercatat di atas akan dianggap betul sekiranya Bank tidak diberitahu atas sebarang
        pembetulan dalam tempoh 14 hari dari tarikh penyata ini.<br />
        <span class="fontItalic">The Figures and balance shown above will be considered correct unless
          the Bank is notified of any discrepancy within 14 days from the date of this statement.</span><br />
        Sila rujuk kod di belakang mukasurat ini.<br />
        <span class="fontItalic">Please refer to the codes at the back of this page.</span>
      </div>
    </div>
  </footer>

  <main>
    <table class="transaction-table">
      <thead style="vertical-align: top;">
        <tr>
          <th class="transaction-table-header" style="width: 10%;">TARIKH<br /><span class="fontItalic">DATE</span></th>
          <th class="transaction-table-header" style="width: 15%;">KOD<br /><span class="fontItalic">CODE</span></th>
          <th class="transaction-table-header" style="width: 30%;">NO.DOKUMEN <br /><span class="fontItalic">DOCUMENT NO.</span></th>
          <th class="transaction-table-header" style="width: 15%;">PENGELUARAN<br /><span class="fontItalic">WITHDRAWAL</span></th>
          <th class="transaction-table-header" style="width: 15%;">SIMPANAN<br /><span class="fontItalic">DEPOSIT</span></th>
          <th class="transaction-table-header" style="width: 15%;">BAKI<br /><span class="fontItalic">BALANCE</span></th>
        </tr>
      </thead>
      <tbody class="fontBold">
        <tr>
          <td></td>
          <td></td>
          <td style="text-align: left; padding-left: 30px; padding-top: 7px;">BAL B/F</td>
          <td></td>
          <td></td>
          <td class="alignTextRight" style="padding-top: 7px;">12875.90</td>
        </tr>
        <#list contextVariables.statements! as row>
          <tr>
            <td class="alignTextRight">${row.trxDate!}</td>
            <td class="alignTextRight">
              ${row.transactionAmountForDebit!}
            </td>
            <td class="alignTextRight">
              ${row.description!}
            </td>
            <td class="alignTextRight">
              ${row.transactionAmountForCredit!}</td>
            <td class="alignTextRight">
              ${row.runningBalance!}</td>
            <td class="alignTextRight">
              ${row.runningBalance!}</td>
          </tr>
        </#list>
        <tr>
          <td colspan="3" class="totalTitle">TOTAL OF DEBIT ITEMS</td>
          <td class="alignTextLeft">38</td>
          <td class="alignTextRight">728,524.81</td>
          <td></td>
        </tr>
        <tr>
          <td colspan="3" class="totalTitle">TOTAL OF CREDIT ITEMS</td>
          <td class="alignTextLeft">2</td>
          <td class="alignTextRight">728,524.81</td>
          <td></td>
        </tr>
        <tr>
          <td colspan="3" class="totalTitle">TOTAL OF LOCAL CREDIT</td>
          <td class="alignTextLeft">38</td>
          <td class="alignTextRight">728,524.81</td>
          <td></td>
        </tr>
        <tr>
          <td colspan="3" class="totalTitle">TOTAL OF OC &amp; OCP CREDITS</td>
          <td class="alignTextLeft">38</td>
          <td class="alignTextRight">728,524.81</td>
          <td></td>
        </tr>
        <tr>
          <td colspan="3" class="totalTitle">MONTHLY AVERAGE ( EUR )</td>
          <td class="alignTextLeft">38</td>
          <td class="alignTextRight">728,524.81</td>
          <td></td>
        </tr>
        <tr>
          <td colspan="3" class="totalTitle">OD PROFIT CHARGED</td>
          <td class="alignTextLeft">38</td>
          <td class="alignTextRight">728,524.81</td>
          <td></td>
        </tr>
        <tr>
          <td colspan="3" class="totalTitle">MISCELLANEOUS COST</td>
          <td class="alignTextLeft">38</td>
          <td class="alignTextRight">728,524.81</td>
          <td></td>
        </tr>
        <tr>
          <td colspan="3" class="totalTitle">COMPENSATION CHARGES</td>
          <td class="alignTextLeft">38</td>
          <td class="alignTextRight">728,524.81</td>
          <td></td>
        </tr>
        <tr>
          <td colspan="6">
            <div class="alignTextLeft">
              <span style="padding-left: 20px;">MESSAGE</span><br/>
              <div class="tableFooterMsg">Kindly take note  of your new account number as we have migrated into new system.</div>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </main>
</body>
</html>