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
  <main style="font-size: 11px;">
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