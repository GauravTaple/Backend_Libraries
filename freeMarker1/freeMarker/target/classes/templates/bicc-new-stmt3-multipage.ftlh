<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>BICC Statements STMT3</title>
  <style>
    body {
      font-family: EmbArial;
      font-size: 11px;
    }
    @page {
      size: A4;
      font-family: EmbArial;
      margin-top: 38mm;
      margin-bottom: 26mm;
      @bottom-right {
        font-family: EmbArial;
        content: "Page " counter(page) " of " counter(pages);
        font-size: 11px;
        text-align: right;
        padding-bottom: 60px;
        padding-right: 20px;
      }
      @top-left {
        content: element(header);
      }
      @bottom-center {
        content: element(footer);
      }
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
    .footer {
      position: running(footer);
    }
    .header {
      overflow: hidden;
    }
    header {
      text-align: left;
      position: running(header);
      font-size: 10px;
      font-family: EmbArial;
    }
    .break {
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
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
    .address {
      font-size: 9px;
      margin-top: 10px;
      float: left;
    }
    .name {
      font-size: 14px;
      font-weight: normal;
      font-family: EmbArialBold;
      text-align: right;
      float: right;
      margin-top: 10px;
    }
    .subname {
      font-weight: normal;
      font-family: EmbArialItalic;
      margin-top: 2px;
      text-align: right;
      font-weight: 400;
      padding-right: 5px;
    }
    .message-box {
      border: 1px solid #0a0808;
      padding: 10px;
      height: 100px;
      margin-top: 2px;
      width: 45%;
      border-radius: 10px;
      float: right;
      margin-bottom: 10px;
    }
    .message-head {
      font-weight: normal;
      font-family: EmbArialBold;
    }
    .message-body {
      font-weight: normal;
      font-family: EmbArialBold;
      margin-top: 10px;
    }
    .section1 {
      clear: both;
      font-size: 10px;
    }
    .card-i {
      border: 1px solid;
      padding: 5px;
      font-weight: normal;
      font-family: EmbArialBold;
    }
    .card-i-table {
      text-align: center;
      margin-top: 5px;
    }
    .card-i-table-child-head {
      display: inline-block;
      width: 32%;
      margin-right: -4px;
    }
    .card-i-table-child-head:last-child {
      margin-right: 0;
    }
    .card-i-table-child-body {
      display: inline-block;
      width: 32%;
      border-bottom: 1px solid;
      margin-right: 10px;
    }
    .card-i-table-child-body:last-child {
      margin-right: 0;
    }
    .balance-table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 10px;
    }
    .balance-table-head {
      border: 1px solid;
      text-align: center;
      padding: 2px;
      font-weight: normal;
      box-sizing: border-box;
      font-family: EmbArialBold;
    }
    .balance-table-body {
      border: 1px solid;
      text-align: center;
      padding: 3px;
      box-sizing: border-box;
      word-wrap: break-word;
      white-space: normal;
      overflow-wrap: break-word;
      width: 120px;
      max-width: 120px;
      font-size: 12px;
    }
    .notice-head {
      font-size: 13.5px;
      font-weight: normal;
      font-family: EmbArialBold;
      border: 1px solid;
      padding: 4px 8px;
    }
    .notice-head-span {
      font-style: italic;
    }
    .notice-body {
      border: 1px solid;
      border-top: none;
      padding: 2px 8px;
      font-size: 13px;
      word-wrap: break-word;
    }
    .notice-bottom {
      padding: 4px 8px;
      font-size: 11px;
      font-weight: normal;
      font-family: EmbArialBold;
      border: 0.5px solid;
      margin-top: 5px;
    }
    .page-break {
      page-break-before: always;
    }
    .custom-table,
    .custom-table th,
    .custom-table td {
      border: 0.5px solid;
      border-collapse: collapse;
    }
    .normal-font {
      font-weight: normal;
    }
    .justify {
      text-align: justify;
    }
    #table-body-none {
      border: none !important;
      vertical-align: top;
    }
    .page-info::after {
      content: "Page " counter(page) " of " counter(pages);
    }
    .fontItalicBold {
      font-weight: normal;
      font-family: EmbArialItalicBold;
    }
    .fontItalic {
      font-weight: normal;
      font-family: EmbArialItalic;
    }
    #linkColor {
      color: blue;
    }
  </style>
</head>

<body class="justify" style="line-height: 1.1;">
  <header style="margin-top: 15px;padding-left: 10px;padding-right: 10px;">
    <div class=" header">
      <div class="logo-left">
        <img src="${contextVariables.bankIslamLogo!}" alt="bank_islam_logo"
          style="width: 216px; height: 50px;text-align: left;" />
      </div>
      <div class="logo-right" style="margin-top: -6px; margin-right: -30px;">
        <img src="${contextVariables.statementLogo!}" alt="statement_logo"
          style="width: 90px; height: 65px;display: inline-block;vertical-align: middle;margin-top: 10px;margin-left: 400px;" />
      </div>
    </div>
    <div class="header" style="margin-top: -5px;">
      <div class="address">
        Pusat Kad Bank Islam /<span class="fontItalic"> Bank Islam Card Centre</span><br />
        Bank Islam Malaysia Berhad 198301002944 (98127-X)<br />
        Aras 24 Menara Bank Islam, No. 22 Jalan Perak, 50450 Kuala Lumpur<br />
        Tel: 03-26 900 900&#160; Faks: 03-2726 7606 <br />
        Laman Web: www.bankislam.com
      </div>
      <div class="name">
        PENYATA AKAUN
        <div class="subname" style="margin-right: -5px;">ACCOUNT STATEMENT</div>
      </div>
    </div>
  </header>

  <footer>
    <div class="footer" style="margin-bottom: 80px; text-align: center;">
      <span style="text-align: center; font-size: 10px;">SILA LIHAT MUKA SEBELAH UNTUK MAKLUMAT LANJUT /
        <span class="fontItalic">TURN OVERLEAF FOR MORE INFORMATION</span>
      </span>
      <div style="text-align: left;margin-left: 2px;margin-top: 10px;">
        ${contextVariables.name!}
      </div>
    </div>
  </footer>

  <!-- Section 01 : Card -->
  <section class="section1">
    <div style="margin-top: 35px; margin-left: -1px;">
      <p class="justify"
        style="font-size: 12px;margin-top: -10px;margin-bottom: 0;max-height: 90px;min-height: 120px;height: 120px;">
        <span>
          <#compress>
            <#if contextVariables.address??>
              <#list contextVariables.address?split("| ") as sValue>
                 ${sValue}<#if sValue?has_next><br /></#if>
              </#list>
            </#if>
          </#compress>
        </span>
      </p>
    </div>
    <div class="message-box" style="margin-top: -120px; font-size: 11px;">
                <div class="message-head">
                  MESEJ / <span class="fontItalicBold">MESSAGE</span>
                  <div class="message-body" style="text-align: left;">
                    ${contextVariables.message!}
                  </div>
                </div>
    </div>
    <div class="card-i" style="font-size: 14px;padding-left: 15px;margin-top: 10px;">KAD-i BANK ISLAM /<span
        class="fontItalicBold">BANK ISLAM CARD-i</span></div>
    <div class="card-i-table normal-font" style="font-family: EmbArialBold;">
      <div class="card-i-table-child-head">
        Tarikh Penyata / <span class="fontItalicBold"> Statement Date</span>
      </div>
      <div class="card-i-table-child-head">
        Tarikh Matang /<span class="fontItalicBold"> Payment Due Date</span>
      </div>
      <div class="card-i-table-child-head normal-font" style="font-family: EmbArialBold; margin-left: 20px;">
        Had Pembiayaan (RM) / <span class="fontItalicBold">Financing Limit (RM)</span>
      </div>
    </div>
    <div class="card-i-table" style="font-size: 12px;">
      <div class="card-i-table-child-body">${contextVariables.processingDate!}</div>
      <div class="card-i-table-child-body">${contextVariables.latestDueDate!}</div>
      <div class="card-i-table-child-body">${contextVariables.financingLimit!}</div>
    </div>
    <table class="balance-table">
      <tr>
        <td class="balance-table-head">
          Baki Terdahulu (RM) <br />
          <span class="fontItalicBold"> Previous Balance (RM)</span>
        </td>
        <td class="balance-table-head">
          Bayaran (RM) <br />
          <span class="fontItalicBold"> Payment (RM)</span>
        </td>
        <td class="balance-table-head">
          Amaun Tertunggak (RM) <br />
          <span class="fontItalicBold"> Overdue Amount (RM)</span>
        </td>
        <td class="balance-table-head">
          Baki Semasa (RM) <br />
          <span class="fontItalicBold"> Current Balance (RM)</span>
        </td>
        <td class="balance-table-head">
          Bayaran Minimum (RM) <br />
          <span class="fontItalicBold"> Minimum Payment (RM)</span>
        </td>
      </tr>
      <tr>
        <td class="balance-table-body">${contextVariables.previousBalance!}</td>
        <td class="balance-table-body" style="width: 100px; max-width: 100px;">${contextVariables.payment!}</td>
        <td class="balance-table-body">${contextVariables.overDueAmount!}</td>
        <td class="balance-table-body">${contextVariables.subTotal!}</td>
        <td class="balance-table-body">${contextVariables.amountDue!}</td>
      </tr>
    </table>
  </section>
  <div style="margin-top: 2px; height: 283px; max-height: 283px;">
    <#if contextVariables.month=="12">
      <div style="margin-top: 2px;">
        <table style="width: 100%; border-collapse: collapse;font-size: 12px;">
          <thead>
            <tr>
              <th colspan="3"
                style="padding: 4px; font-weight: normal; text-align: center; font-family: EmbArialBold;border: 1px solid;">
                SUMMARY OF YEARLY STATEMENT 2023
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td style="border: 1px solid;padding: -4px;text-align: left;padding-left: 3px;">Jika tiada sebarang
                transaksi niaga dan bayaran
                bulanan anda... / If you make no additional charges using this card and each month you pay...
              </td>
              <td style="border: 1px solid;padding: -4px;text-align: left;padding-left: 3px;">Anda akan menyelesaikan
                bayaran baki yang tertera di
                penyata kad ini dalam... / <span class="fontItalic"> You will pay off the balance shown on this
                  statement in about... </span>
              </td>
              <td style="border: 1px solid;padding: -4px;text-align: left;padding-left: 3px;">Dan jumlah anggaran caj
                kewangan yang perlu dibayar adalah... /
                <span class="fontItalic">And you will end up paying an estimated total of profit of </span>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid; padding: -4px;text-align: left;padding-left: 3px;">Hanya bayaran minima
                bulanan /
                <span class="fontItalic"> Pay only the minimum payment of RMXXX </span>
              </td>
              <td style="border: 1px solid; padding: -4px; text-align: center;">
                <span>${contextVariables.processingDateE21!}</span> tahun/year
                <span>${contextVariables.latestDateE21!}</span> bulan/months
              </td>
              <td style="border: 1px solid; padding: -4px; text-align: center;">RM
                <span>${contextVariables.paymentMinAmtE21!}</span>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid; padding: -4px;text-align: left;padding-left: 3px;">Bayaran minima bulanan +
                Amaun tetap RM50 bulanan /
                <span class="fontItalic">
                  Minimum payment due + fixed amount of RM50 monthly</span>
              </td>
              <td style="border: 1px solid; padding: -4px; text-align: center;">
                <span>${contextVariables.processingDateE22!}</span> tahun/year
                <span>${contextVariables.latestDateE22!}</span> bulan/months
              </td>
              <td style="border: 1px solid; padding: -4px; text-align: center;">RM
                ${contextVariables.paymentMinAmtE22!}
                <br /><span>(Penjimatan / Saving
                  = RM ${contextVariables.svgAmtE23!})</span>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div style="margin: 1px;">
        Jadual diatas menunjukkan anggaran pengiraan tempoh pembayaran dan jumlah caj kewangan yang perlu dibayar.
        Contoh pengiraan berdasarkan pada caj kewangan 17.5% setahun /
        <span class="fontItalic">The table above illustrates an estimated calculation for total repayment periods and
          total profit incurred.Example shown is based on profit rate of 17.5%</span>
      </div>
      <div style="font-family: EmbArial; margin-top: 2px;" class="normal-font">
        <table class="custom-table" style="width: 100%;">
          <tr>
            <td colspan="3"
              style="border: 1px solid; width: 100%;padding-bottom: 3px;text-align: left;padding-left: 3px;">Maklumat
              penggunaan Kad Kredit anda dalam tempoh 12 bulan terakhir / <span class="fontItalic">Information on your
                usage of this Credit Card
                for the past 12 months.</span>
            </td>
          </tr>
          <tr>
            <td style="border: 1px solid; width: 60px;padding: 2px;text-align: left; ">Jumlah Pembiayaan yang Digunakan
              / <span class="fontItalic">Total Financing Utilized *</span></td>
            <td colspan="2" style="border: 1px solid;  text-align:right; padding-right: 3px; width: 130px;">
              RM ${contextVariables.ttlCrUtilE24!}</td>
          </tr>
          <tr>
            <td style="border: 1px solid; padding: 2px;  width: 60px;text-align: left;">Jumlah Caj Kewangan yang
              Dikenakan /
              <span class="fontItalic">Total Profit Charges</span>
            </td>
            <td colspan="2" style="border: 1px solid; text-align:right; padding-right: 3px; width:130px;">
              RM ${contextVariables.ttlPftChargeE25!}
            </td>
          </tr>
          <tr>
            <td style="border: 1px solid; padding: 2px;  width: 60px;text-align: left;">Jumlah Fi dan Caj yang Dikenakan
              / <span class="fontItalic"> Total Fee &amp; Charges Imposed </span></td>
            <td colspan="2" style="border: 1px solid; text-align:right; padding-right: 3px;  width: 130px;">RM
              ${contextVariables.ttlFeeCharge26!}</td>
          </tr>
        </table>
      </div>
      <#else>
        <img src="${contextVariables.promotionalImage!}" alt="promo image" style="width: 682px; height: 295px;" />
    </#if>
  </div>
  <section>
    <div style="margin-top: 14px;">
      <div class="notice-head">
        NOTIS: JIKA HANYA MEMBUAT BAYARAN MINIMUM /
        <span class="notice-head-span">NOTICE: IF PAYING ONLY MINIMUM PAYMENT</span>
      </div>
      <div class="notice-body" style="text-align: left;">
        Jika anda hanya membuat bayaran minimum setiap bulan, jumlah keuntungan dan tempoh yang diambil untuk
        menjelaskan keseluruhan baki yang belum
        dijelaskan akan bertambah. Sila rujuk muka surat sebelah atau kalkulator kad kredit yang terdapat di laman
        sesawang kami untuk maklumat lanjut.<br />
        <span class="fontItalic"> If you make only the minimum payment each period, it will take you longer to pay off
          your balance including profit payable.
          Please refer to the back page or the credit card calculator available on our website for more
          information.</span>
      </div>
      <div class="notice-bottom">
        <#if contextVariables.month=="12">
          ${contextVariables.messageB20!}
          <#else>
            SILA LAYARI WWW.BANKISLAM.COM UNTUK MENDAPATKAN MAKLUMAT TERKINI BERKENAAN TERMA DAN SYARAT KAD KREDIT-I
            BANK ISLAM.
        </#if>
      </div>
    </div>
  </section>
  <!-- Section 04 : Payment Advice -->
  <section style="margin-top: 5px;">
    <div style="position: relative; text-align: left;">
      <span style="padding: 4px 8px; font-size: 11px; font-family: EmbArialBold; border: 1px solid;"
        class="normal-font">
        ARAHAN PEMBAYARAN / <span class="fontItalicBold">PAYMENT ADVICE</span>
      </span>
      <span style="margin-left:110px;">
        <img src="${contextVariables.bankIslamLogo!}" alt="bank_islam_logo"
          style="vertical-align: middle;width: 180px; height: 35px;display: inline-block;margin-left: 70px;" />
      </span>
      <span style="margin-left: 50px;">
        <img src="${contextVariables.statementLogo!}" alt="statement_logo"
          style="width: 50px;height: 50px;display: inline-block;vertical-align: middle; margin-top: 10px;margin-left: -40px;" />
      </span>
    </div>
    <div style="margin-top: -24px; ">
      <p style="font-size: 11px;">${contextVariables.name!}</p>
    </div>
    <div style="width: 105%; margin-top: -9px; font-size: 10px; text-align: start;">
      <div style="display: inline-block; width: 49.7%; box-sizing: border-box;">
        <table style="width: 100%; border-collapse: collapse; border: none;">
          <th style="border: none;"></th>
          <tr>
            <td style="width: 51%; border: none; padding-bottom: 3.5px;">No. Rujukan Pembayaran / <span
                class="fontItalic">Payment Ref No.</span></td>
            <td style="border: 1.2px solid; width: 36%; text-align: right; padding: 3px 0px; padding-right: 2px;   font-size: 11px;">
              ${contextVariables.paymentRefNo!}</td>
          </tr>
          <tr>
            <td style="width: 51%;  border: none; padding-bottom: 3px;">Tarikh Penyata / <span
                class="fontItalic">Statement Date</span></td>
            <td style="border: 1.2px solid ; width: 36%; text-align: right; padding: 3px 0px; padding-right: 2px;  font-size: 11px;">
              ${contextVariables.processingDate!}</td>
          </tr>
          <tr>
            <td style="width: 51%;  border: none; padding-bottom: 3px;">Tarikh Matang / <span class="fontItalic">Payment
                Due Date</span></td>
            <td style="border: 1.2px solid; width: 36%; text-align: right; padding: 3px 0px; padding-right: 2px;  font-size: 11px;">
              ${contextVariables.latestDueDate!}</td>
          </tr>
          <tr>
            <td style="width: 51%; font-weight: normal; font-family: EmbArial;  border: none; padding-bottom: 3px;">Baki
              Semasa / <span class="fontItalic"> Current Balance (RM)</span></td>
            <td style="border: 1.2px solid; width: 36%; text-align: right; padding: 3px 0px; padding-right: 2px;  font-size: 11px;">
              ${contextVariables.subTotal!}</td>
          </tr>
          <tr>
            <td style="width: 51%;  border: none; padding-bottom: 3px;">Bayaran Minimum / <span class="fontItalic">
                Minimum Payment (RM)</span></td>
            <td style="border: 1.2px solid; width: 36%; text-align: right; padding: 3px 0px; padding-right: 2px;  font-size: 11px;">
              ${contextVariables.amountDue!}</td>
          </tr>
        </table>
      </div>
      <div style="display: inline-block; width: 49.7%; box-sizing: border-box;">
        <table style="width: 90%; border-collapse: collapse; border: none;">
          <th style="border: none;"></th>
          <tr>
            <td style="width: 51%; border: none; padding-bottom: 7px;">Bank / <span class="fontItalic"> Bank </span>
            </td>
            <td style="border: 1.2px solid; width: 36%; text-align: right; padding: 3px 10px;font-size: 11px;"></td>
          </tr>
          <tr>
            <td style="width: 51%;  border: none; padding-bottom: 5px;">Tempat / <span class="fontItalic">Place </span>
            </td>
            <td style="border: 1.2px solid; width: 36%; text-align: right; padding: 3px 10px;font-size: 11px;"> </td>
          </tr>
          <tr>
            <td style="width: 51%;  border: none; padding-bottom: 7px;">No. Cek / <span class="fontItalic">Cheque
                No.</span></td>
            <td style="border: 1.2px solid; width: 36%; text-align: right; padding: 3px 10px;font-size: 11px;"></td>
          </tr>
          <tr>
            <td style="width: 51%;  border: none; padding-bottom: 5px;">Amaun Cek / <span class="fontItalic">Cheque
                Amount (RM) </span></td>
            <td style="border: 1.2px solid; width: 36%; text-align: right; padding: 3px 10px;font-size: 11px;"></td>
          </tr>
          <tr>
            <td style="width: 51%;  border: none; padding-bottom: 5px;">Amaun Bayaran / <span class="fontItalic">Payment
                Amount (RM) </span></td>
            <td style="border: 1.2px solid; width: 36%; text-align: right; padding: 3px 10px;font-size: 11px;"></td>
          </tr>
        </table>
      </div>
    </div>
  </section>
  <div style="border: 0.3px solid; width: 100%; margin-top: 5px;"></div>
  <div class="page-break"></div>

  <#if contextVariables.businessCard! !="02">
    <div class="no-header-footer" style="margin-top: 2px;">
      <div style="text-align: center; margin-bottom: -11px; font-family: EmbArialBold;font-size: 7.5pt;">
        <p>MAKLUMAT PENTING KAD KREDIT-i</p>
      </div>
      <table style="font-weight: normal; font-size:7.5pt; line-height: 0.9;" class="normal-font custom-table">
        <tr>
          <th style="width: 5%;"> 
            <div style="padding-left: 3px; font-family: EmbArialBold; text-align: left;" class="normal-font">TEMPOH
              <br />BEBAS
              CAJ<br />KEUNTUNGAN
            </div>
          </th>
          <th style="width: 45%;">
            <div style="margin-left: 5px; margin-top: -10px; margin-bottom: -7px; margin-right:3px ;">
              <p style="font-family: EmbArial;" class="normal-font"> <span
                  style="font-family: EmbArialBold;text-align: justify; "> 20 hari tempoh bebas caj keuntungan
                </span>iaitu tiada caj
                keuntungan ke atas transaksi pembelian runcit mulai dari tarikh pengesahan transaksi tersebut sekiranya
                baki semasa bulan terdahulu dijelaskan dengan sepenuhnya.
                Tidak terpakai untuk transaksi pengeluaran tunai dan pindahan baki.</p>
            </div>
          </th>
          <th style="width: 50%;" rowspan="5">
            <div style="margin-left: 3px; margin-right: 3px;" class="normal-font">
              <span style="font-family:EmbArialBold ;">Peringatan:</span><span>Pembayaran hendaklah dibuat</span><span
                style="font-family:EmbArialBold ;"> SEBELUM TARIKH MATANG</span>
              <div style="font-family: EmbArial; padding-top: 5px;" class="normal-font">
                <span style="font-family: EmbArialBold; text-decoration: underline;line-height: 1;">
                  PENGIRAAN BAYARAN MINIMUM
                </span>
                <br />
                <span style="font-weight: normal;font-family: EmbArialBold;">
                  Bayaran minimum setiap bulan oleh anda sebagai Ahli Kad adalah seperti
                  yang berikut:
                </span>
              </div>
              <div style="font-weight: normal;font-family: EmbArialBold;line-height: 1;">
                <div>a) 5% dari Baki Penyata (tidak termasuk Program Ansuran Bulanan dan Baki Qard) atau RM50, mana–mana
                  yang lebih tinggi; dan</div>
                <div>b) Baki Qard (jika ada); dan</div>
                <div>c) Bayaran Minimum Tertunggak (jika ada); dan</div>
                <div>d) Program Ansuran Bulanan (jika ada); dan</div>
                <div>e) Baki akaun jika baki akaun kurang dari RM50.</div>
              </div>
              <div class="fontItalicBold" style="padding-top: 5px;">Nota:</div>
              <div style="padding-left: 10px;padding-right: 10px;font-family: EmbArialItalic;">
                <div style="margin-bottom: 2px;">
                  <span style="font-size: 10px;  vertical-align: middle;">&#8226;</span>
                  <span style="vertical-align: middle;font-weight: normal;font-family:EmbArialItalicBold; margin-left: 3px;">Program
                    Ansuran Bulanan-</span><span> merujuk kepada Program Pindahan
                    <span style="margin-left: 11px;">Baki,GoFlexi,GoCash dan Pelan Bayaran Mudah
                    </span></span>
                </div>
                <div style="margin-bottom: 2px;">
                  <span style="font-size: 10px; margin-right: 3px; vertical-align: middle;">&#8226;</span>
                  <span style="vertical-align: middle;font-weight: normal;font-family:EmbArialItalicBold">Baki
                    Qard-</span><span> Bermaksud mana-mana transaksi yang diluluskan yang<span style="margin-left: 11px;">menyebabkan pengunaan kad kredit melebihi had
                      pembiayaan</span><span style="margin-left: 11px;">melalui permohonan Ahli Kad dan dengan budi
                      bicara bank.Baki</span><span style="margin-left: 11px;">Qard boleh dikira dengan menolak amaun
                      Baki Penyata dengan</span><span style="margin-left: 11px;">had pembiayaan.</span></span>
                </div>
                <div>
                  <span style="font-size: 10px; margin-right: 0px; vertical-align: middle;">&#8226;</span>
                  <span style="vertical-align: middle;font-weight: normal;font-family:EmbArialItalicBold">Bayaran
                    Minimum Tertunggak-</span><span> Bermaksud jumlah bayaran<span style="margin-left: 11px;">minimum bulan sebelumnya yang masih belum dilunaskan.</span></span>
                </div>
              </div>
              <div style="font-family:EmbArial; margin-top: 3px;padding-bottom: 3px;" class="normal-font"><span
                  style="font-family:EmbArialBold; text-decoration: underline;line-height: 1;">Contoh illustrasi di mana:</span><br />
                <span style="padding: 3px 0px; letter-spacing: -0.3px;">Caj Keuntungan adalah 17.5% setahun,30 hari sebulan dan tiada transaksi baru.</span>
              </div>
              <div>
                <div>
                  <table
                    style="width: 300px; border-collapse: collapse; text-align: center; margin: 1.5px;"
                    class="normal-font custom-table">
                    <tr>
                      <th style="border: 0.5px solid; font-family: EmbArialBold;" class="normal-font">
                        Baki<br />Semasa
                      </th>
                      <th colspan="2" style="border: 0.5px solid;  font-family:EmbArialBold;" class="normal-font">
                        RM 3,000
                      </th>
                      <th colspan="2" style="border: 0.5px solid;  font-family:EmbArialBold;" class="normal-font">
                        RM 5,000
                      </th>
                      <th colspan="2" style="border: 0.5px solid;  font-family:EmbArialBold;" class="normal-font">
                        RM 10,000
                      </th>
                    </tr>
                    <tr>
                      <th style="border: 0.5px solid;  font-family: EmbArial;line-height: 1;" class="normal-font">
                        Bayaran(RM)
                      </th>
                      <th style="border: 0.5px solid;  font-family: EmbArial;" class="normal-font">
                        <div style="text-decoration: underline; line-height: 1.1;padding-bottom: 1px;"> Minimum RM150<br />untuk<br />bulan pertama</div>
                      </th>
                      <th style="border: 0.5px solid; font-family: EmbArial;" class="normal-font">
                        RM250** setiap bulan
                      </th>
                      <th style="border: 0.5px solid;" class="normal-font">
                        <div style="text-decoration: underline; line-height: 1.1;padding-bottom: 1px;"> Minimum RM250<br />untuk<br /> bulan pertama</div>
                      </th>
                      <th style="border: 0.5px solid; " class="normal-font">
                        RM350** setiap bulan
                      </th>
                      <th style="border: 0.5px solid;" class="normal-font">
                        <div style="text-decoration: underline;line-height: 1.1;padding-bottom: 1px;"> Minimum<br />RM500<br />
                          untuk<br /> bulan pertama</div>
                      </th>
                      <th style="border: 0.5px solid;" class=" normal-font">
                        RM650** setiap bulan
                      </th>
                    </tr>
                    <tr>
                      <td style="border: 0.5px solid; padding-bottom: 3px;">Tempoh<br /> Bayaran<br /> (Bulan)</td>
                      <td style="border: 0.5px solid;">55</td>
                      <td style="border: 0.5px solid;">14</td>
                      <td style="border: 0.5px solid;">69</td>
                      <td style="border: 0.5px solid;">17</td>
                      <td style="border: 0.5px solid;">88</td>
                      <td style="border: 0.5px solid;">18</td>
                    </tr>
                    <tr>
                      <td style="border: 0.5px solid;padding-bottom: 3px;">Jumlah Caj<br /> Keuntungan<br /> (RM)</td>
                      <td style="border: 0.5px solid;">1014.42</td>
                      <td style="border: 0.5px solid;">322.16</td>
                      <td style="border: 0.5px solid;">1837.97</td>
                      <td style="border: 0.5px solid;">647.84</td>
                      <td style="border: 0.5px solid;">3896.83</td>
                      <td style="border: 0.5px solid;">1407.60</td>
                    </tr>
                    <tr>
                      <td style="border: 0.5px solid;padding-bottom: 3px;">Jumlah Keseluruhan (RM)</td>
                      <td style="border: 0.5px solid;">4014.42</td>
                      <td style="border: 0.5px solid;">3322.16</td>
                      <td style="border: 0.5px solid;">6837.97</td>
                      <td style="border: 0.5px solid;">5647.84</td>
                      <td style="border: 0.5px solid;">13896.83</td>
                      <td style="border: 0.5px solid;">11407.60</td>
                    </tr>
                  </table>
                </div>
                <div style="margin-top: 1px; margin-left: 3px;">
                  <span style="font-family: EmbArialBold; text-decoration: underline; letter-spacing: -0.1px;" class="normal-font">**Bayaran
                    bulan terakhir adalah kurang daripada nilai yang dipaparkan</span>
                </div>
                <div style="font-family: EmbArial;padding-top: 4px;" class="normal-font"><span
                    style="font-family:EmbArialBold ; text-decoration: underline;line-height: 1;">PERUNTUKAN PEMBAYARAN</span><br />
                  Daripada pembayaran yang diterima, Bank Islam akan memperuntukkan
                  pembayaran berkenaan untuk menyelesaikan baki semasa berdasarkan
                  kepada kadar keuntungan, dengan mengutamakan item-item yang mempunyai
                  kadar keuntungan yang tertinggi kepada yang terendah.</div>
                <div style="font-family: EmbArial;padding-top: 4px;" class="normal-font"><span
                    style="font-family:EmbArialBold ; text-decoration: underline;line-height: 1;">KETEPATAN PENYATA</span><br />
                  Sila semak penyata akaun Kad Kredit-i anda dan sekiranya terdapat sebarang
                  kesilapan/percanggahan, anda dikehendaki untuk maklumkan kepada Bank
                  Islam secara bertulis dalam masa empat belas (14) hari dari tarikh penyata.
                  Jika tidak, penyata tersebut dianggap tepat dan sah.</div>
                <div style="font-family: EmbArial;padding-top: 3px;" class="normal-font"><span
                    style="font-family:EmbArialBold ; text-decoration: underline;line-height: 1;">KEHILANGAN ATAU KECURIAN
                    KAD</span><br />
                  Sila maklumkan kepada Bank dengan serta-merta apabila mengetahui Kad
                  Kredit-i anda telah hilang, dicuri, urus niaga tanpa kebenaran telah berlaku
                  atau PIN mungkin terjejas atau menerima mesej pesanan ringkas (SMS)
                  mengenai transaksi tanpa kebenaran telah berlaku dengan menghubungi
                  talian 03-26 900 900 dan disusuli dengan surat pengesahan secara bertulis
                  berserta laporan polis. Sekiranya kehilangan/kecurian kad berlaku di luar
                  negara, sila hubungi MasterAssist Travel Assistance Service dan/atau Visa
                  Emergency Assistance untuk bantuan.</div>
                <div style="font-family: EmbArial;padding-top: 3px;" class="normal-font"><span
                    style="font-family:EmbArialBold ; text-decoration: underline;line-height: 1;">PERTUKARAN MAKLUMAT</span><br />
                  Anda hendaklah memaklumkan Bank Islam secara bertulis untuk sebarang
                  pertukaran maklumat yang berkenaan seperti nombor telefon dan alamat surat
                  menyurat dan lain-lain untuk memastikan sebarang makluman akan dapat
                  disalurkan secara efektif.</div>
                <div style="font-family: EmbArial; margin-left: 10px;padding-top: 5px;" class="normal-font">
                  <div style="font-family: EmbArialBold; text-decoration: underline; margin-left: -10px;line-height: 1;">LIABILITI
                    AKIBAT TRANSAKSI YANG TIDAK DISAHKAN</div>
                  <div>
                    <span style="margin-left: 1px; font-family: EmbArialBold;">i.</span><span>Anda akan
                      bertanggungjawab ke atas transaksi tanpa kebenaran</span><span style="margin-left: 8px;">yang
                      memerlukan pengesahan PIN jika anda:</span>
                  </div>
                </div>
                <div style="font-family: EmbArial; margin-left: 15px; line-height: 1;padding-top: 2px;"
                  class="normal-font">
                  <div style="display: inline-block; margin-top: -4px;">
                    <div>
                    </div>
                    <span style="font-size: 10px; margin-right: 9px; vertical-align: middle;">&#8226;</span>
                    <span style="vertical-align: middle;">bertindak melakukan penipuan;</span>
                  </div>
                  <div style="display: inline-block; margin-top: -4px; line-height: 1;">
                    <span style="font-size: 10px; margin-right: 9px; vertical-align: middle;">&#8226;</span>
                    <span style="vertical-align: middle;">lewat memaklumkan kepada Bank Islam sebaik sahaja selepas</span>
                    <span style="vertical-align: middle; display: block; margin-left: 15px;">mendapati kehilangan atau penggunaan Kad
                      Kredit-i anda tanpa kebenaran;</span>
                  </div>
                  <div style="display: inline-block; margin-top: -1px;">
                    <span style="font-size: 10px; margin-right: 7px; vertical-align: middle;">&#8226;</span>
                    <span >mendedahkan butir-butir Kad Kredit-i atau PIN anda kepada orang</span>
                    <span style="margin-left: 15px;">lain secara sukarela;</span>
                  </div>
                  <div style="display: inline-block; margin-top: -2px; line-height: 0.9;">
                    <span style="font-size: 10px; margin-right: 9px; vertical-align: middle;">&#8226;</span>
                    <span style="vertical-align: middle;">menulis/merekodkan PIN anda di atas Kad Kredit-i, atau apa-apa</span>
                    <span style="vertical-align: middle; display: block; margin-left: 15px;">sahaja yang disimpan di kawasan
                      berdekatan dengan Kad Kredit-i anda.</span>
                  </div>
                </div>
              </div>
              <div style="font-family: EmbArial; margin-left: 15px;line-height: 1;">
                  <span style="margin-left: -8px;font-family: EmbArialBold;">ii.</span>
                  <span style="margin-left: -2px;">Anda akan bertanggungjawab ke atas transaksi tanpa kebenaran</span>
                  <span style="display: inline-block; margin-right: 20px;margin-left: 5px;">
                    bagi transaksi dengan kad yang memerlukan pengesahan tandatangan atau penggunaan kad ciri tanpa
                    sentuh, jika anda:
                  </span>
                  <div style="display: flex; align-items: flex-start;">
                    <span style="font-size: 10px; margin-right: 9px;">&#8226;</span>
                    <span>bertindak melakukan penipuan;</span>
                  </div>
                  <div style="display: flex; align-items: flex-start;">
                    <span style="font-size: 10px; margin-right: 8px;">&#8226;</span>
                    <span>lewat memaklumkan kepada Bank Islam sebaik sahaja selepas</span>
                    <span style="margin-left: 16px;">mendapati kehilangan atau penggunaan Kad Kredit-i anda tanpa</span>
                    <span style="margin-left: 16px;">kebenaran;</span>
                  </div>
                  <div style="display: flex; align-items: flex-start;">
                    <span style="font-size: 10px; margin-right: 4px;">&#8226;</span>
                    <span>meninggalkan Kad Kredit-i anda atau apa sahaja yang
                      <span style="margin-left: 16px;">mengandungi Kad Kredit-i anda dalam keadaan tanpa
                        pengawasan</span>
                      <span style="margin-left: 16px;">,di tempat-tempat yang boleh dilihat dan boleh diakses oleh orang
                      </span>
                      <span style="margin-left: 16px;">lain; membenarkan orang lain menggunakan Kad Kredit-i anda</span>
                      <span style="margin-left: 16px;">secara sukarela.</span></span>
                  </div>
                  <div style="display: flex; align-items: flex-start;">
                    <span style="font-size: 10px; margin-right: 8px;">&#8226;</span>
                    <span>membenarkan orang lain menggunakan Kad Kredit-i anda secara <span style="margin-left: 16px;">sukarela.</span></span>
                  </div>
                </div>     
              <div style="font-family: EmbArial; margin-top: 5px;">
                <ul style="list-style-position: inside; padding: 0; margin: 0;">
                  <li> <span style="margin-left: 5px;">Untuk perkara yang berkaitan dengan Kad Kredit-i Bank Islam
                      <span style="padding-left: 19px;">Mastercard atau Visa anda, sila hubungi:</span></span></li>
                </ul>
              </div>
              <div style="font-family: EmbArial; margin-left: 19px;" class="normal-font">
                <span style="font-family: EmbArialBold;">Pusat Kad Bank Islam,</span><br />
                <span style="font-family: EmbArialBold;">Aras 24, Menara Bank Islam, No 22 Jalan Perak,</span><br />
                <span style="font-family: EmbArialBold;">50450 Kuala Lumpur</span><br />
                <span style="line-height: 1.1;">E-mel: <u>bicc.customer.service@bankislam.com.my</u></span><br />
                <span>Tel.: 03-26 900 900</span><br />
                <span>Fax: 03-2726 7606</span>
              </div>
              <div style="font-family: EmbArial; margin-top: 3px;">
                <ul style="list-style-position: inside; padding: 0; margin: 0;">
                  <li> <span style="margin-left: 5px;">Untuk pertanyaan mengenai sektor kewangan, sila hubungi Bank</span>
                    <span style="margin-left: 19px;">Negara Malaysia melalui:</span>
                  </li>
                </ul>
              </div>
              <div style="font-family: EmbArial; margin-left: 19px; padding-bottom: 3px;" class="normal-font">
                <span style="font-family: EmbArialBold;">Pusat Perkhidmatan Pelanggan BNMLINK,</span><br />
                <span style="font-family: EmbArialBold;">Tingkat Bawah, Blok D, Jalan Dato’ Onn,</span><br />
                <span style="font-family: EmbArialBold;">50480 Kuala Lumpur</span><br />
                <span>E-mel: <span style="text-decoration: underline;line-height: 1.1;">
                    bnmtelelink@bnm.gov.my</span></span><br />
                <span>Tel.: 1-300-88-5465 (Isnin – Jumaat : 9:00am–5:00pm)</span><br />
                <span>Fax: 03-2174 1515</span>
              </div>
            </div>
          </th>
        </tr>
        <tr>
          <th>
            <div style="margin: 5px; font-family: EmbArialBold; text-align: left;" class="normal-font">
              MAKLUMAT<br />KADAR CAJ<br />KEUNTUNGAN</div>
          </th>
          <th>
            <div style="margin-left: 5px;font-family:EmbArialBold; padding-top: 2px;" class="normal-font">
              <div> <span>i)</span><span style="margin-left: 5px;"> Transaksi Runcit</span><br />
                <span style="margin-left: 3.5px; font-family:EmbArialItalicBold ;"> [(Baki–Pembayaran)x Caj Keuntungan
                  Tahunan] x</span>
                <span style="margin-left: 48px;  font-family:EmbArialItalicBold ;"> [(Jumlah hari-20) / 365]</span>
              </div>
              <div style="padding-top: 8px;"> <span>ii)</span><span style="margin-left: 5px;">Transaksi Pengeluaran Tunai</span><br />
                <span style="margin-left: 3.5px;  font-family:EmbArialItalicBold ;"> [(Baki–Pembayaran)x Caj Keuntungan
                  Tahunan] x</span><br />
                <span style="margin-left: 56px;  font-family:EmbArialItalicBold ;">[Jumlah hari / 365]</span>
              </div>
              <br/>
              <span><span>iii)</span><span style="margin-left: 5px;">Transaksi Runcit</span></span>
            </div>
            <div style="margin-top: 10px; margin: 5px;">
              <table class="normal-font custom-table">
                <tr>
                  <td> <span style="font-family: EmbArialBold;margin-left: 3px;" class="normal-font">13.5%</span>
                    <span style="font-family: EmbArial;margin-left: 3px;">setahun:</span>
                  </td>
                  <td style="font-family: EmbArial; padding-left: 3px; padding-right: 3px; padding-bottom: 3px;"
                    class="normal-font">Jika
                    bayaran minimum dibuat oleh anda sebelum atau pada tarikh matang selama 12 bulan berturut-turut.
                  </td>
                </tr>
                <tr>
                  <td> <span style="font-family: EmbArialBold; margin-left: 3px;" class="normal-font">16.0% </span>
                    <span style="font-family: EmbArial; margin-left: 3px;">setahun:</span>
                  </td>
                  <td style="font-family: EmbArial; padding-left: 3px; padding-right: 3px;padding-bottom: 3px;"
                    class="normal-font">Jika
                    bayaran minimum dibuat oleh anda
                    sebelum atau pada tarikh matang sebanyak 10 atau 11 kali dalam tempoh 12 bulan.</td>
                </tr>
                <tr>
                  <td> <span style="font-family: EmbArialBold; margin-left: 3px;" class="normal-font">17.5% </span>
                    <span style="font-family: EmbArial; margin-left: 3px;">setahun:</span>
                  </td>
                  <td style="font-family: EmbArial; padding-left: 3px; padding-right: 3px;padding-bottom: 3px;"
                    class="normal-font">
                    Jika bayaran minimum dibuat oleh anda sebelum atau pada tarikh matang selama 9 kali atau kurang
                    dalam tempoh 12 bulan.
                  </td>
                </tr>
              </table>
              <div style="font-family:EmbArialBold; padding-top: 4px;" class="normal-font"> <span>iv)</span><span
                  style="margin-left: 5px;">Pengeluaran Tunai &amp; Pindahan ke akaun Bank</span>
                  <span style="margin-left: 17px;">Islam</span>
                <span style="font-family:EmbArial;" class="normal-font">- 18% setahun</span>
              </div>
            </div>
          </th>
        </tr>
        <tr>
          <th>
            <div style="margin-left: 5px;font-family:EmbArialBold ;" class="normal-font">FI DAN CAJ</div>
          </th>
          <th>
            <div style="margin-top: 1px;">
              <div style="font-family: EmbArialBold;" class="normal-font"><span>i)</span> <span
                  style="margin-left: 5px;">Yuran Tahunan</span></div>
              <table style="text-align: center; width: 98%;margin-top: 4px;margin-left: 2px;" class="normal-font custom-table">
                <tr>
                  <td rowspan="2" style="font-family:EmbArialBold ;">Jenis Kad</td>
                  <td colspan="2" style="font-family:EmbArialBold ;padding: 2px;">Mastercard</td>
                </tr>
                <tr>
                  <td style="font-family:EmbArialBold;width: 31%;">Utama(RM)</td>
                  <td style="font-family:EmbArialBold;">Tambahan(RM)</td>
                </tr>
                <tr>
                  <td style="padding-bottom: 3px;">World</td>
                  <td style="padding-bottom: 3px;">777</td>
                  <td style="padding-bottom: 3px;">333</td>
                </tr>
                <tr>
                  <td style="padding-bottom: 3px;">World<br />Premier<br />Wealth</td>
                  <td>Dikecualikan</td>
                  <td>Dikecualikan</td>
                </tr>
                <tr>
                  <td style="padding-bottom: 3px;">Platinum</td>
                  <td style="padding-bottom: 3px;">388</td>
                  <td style="padding-bottom: 3px;">150</td>
                </tr>
                <tr>
                  <td style="padding-bottom: 3px;">Platinum (Inspire)</td>
                  <td style="padding-bottom: 3px;">Dikecualikan</td>
                  <td style="padding-bottom: 3px;">Dikecualikan</td>
                </tr>
                <tr>
                  <td style="padding-bottom: 3px;">Emas</td>
                  <td style="padding-bottom: 3px;">130</td>
                  <td style="padding-bottom: 3px;">60</td>
                </tr>
                <tr>
                  <td style="font-family:EmbArialBold ;">Jenis Kad</td>
                  <td colspan="2" style="font-family:EmbArialBold ;">VISA</td>
                </tr>
                <tr>
                  <td style="padding-bottom: 3px;">Infinite</td>
                  <td style="padding-bottom: 3px;">777</td>
                  <td style="padding-bottom: 3px;">333</td>
                </tr>
                <tr>
                  <td style="padding-bottom: 3px;">Platinum</td>
                  <td style="padding-bottom: 3px;">388</td>
                  <td style="padding-bottom: 3px;">150</td>
                </tr>
                <tr>
                  <td style="padding-bottom: 3px;">Emas</td>
                  <td style="padding-bottom: 3px;">130</td>
                  <td style="padding-bottom: 3px;">60</td>
                </tr>
              </table>
            </div>
            <div style="margin-left: 5px;">
              <div style="font-family: EmbArialBold; margin-top: 4px;" class="normal-font">
                <span>ii)</span>
                <span style="margin-left: 2px;">Permintaan Salinan Penyata</span><br />
              <div style="display: inline-block; margin-top: -10px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;"> RM5.00
                  bagi setiap salinan penyata</span>
              </div>
              </div>
              <div style="font-family: EmbArialBold;padding-top: 4px;" class="normal-font">
                <span>iii)</span>
                <span style="margin-left: 1px;">Permintaan Draf Jualan</span><br />
              <div style="display: inline-block; margin-top: -10px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;"> RM5.00
                  bagi setiap salinan Draf Jualan</span>
              </div><br />
              <div style="display: inline-block; margin-top: -10px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                  RM15.00 bagi setiap Draf Jualan Asal</span>
              </div>
              </div>
              <div class="normal-font" style="padding-top: 4px;">
                <span style="margin-left: 1px; font-family: EmbArialBold; ">iv)</span>
                <span style="padding-left: 0px; font-family: EmbArialBold;">Caj Pengeluaran Tunai</span>
                <div style="margin-left: 20px; margin-top: 15px;">
                  <div style="display: inline-block; margin-top: -15px;padding-right: 5px;">
                    <span style="font-size: 10px; margin-left: -10px; vertical-align: middle;">&#8226;</span>
                    <span style="padding-left: 2px; font-family: EmbArial; display: inline; vertical-align: middle;">2.5%
                      daripada nilai pengeluaran tunai atau RM12.00 (mana-mana yang lebih tinggi) di ATM Bank
                      Islam.</span>
                  </div>
                  <br />
                  <div style="display: inline-block; margin-top: -7px;padding-right: 5px;">
                    <span style="font-size: 10px; margin-left: -10px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">3%
                      daripada nilai pengeluaran tunai atau RM50 (mana-mana yang lebih tinggi) di ATM MEPS atau
                      bank-bank lain</span>
                  </div>
                </div>
              </div>
              <div style="font-family: EmbArialBold;padding-top: 4px;" class="normal-font">
                <span>v)</span><span style="margin-left: 5px;">Caj Penggantian Kad</span><br />
              <div style="display: inline-block; margin-top: 1px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                  RM50 untuk semua jenis kad</span>
              </div>
              </div>
              <div class="normal-font" style="padding-top: 4px;">
                <span style="margin-left: 1px; font-family: EmbArialBold; ">vi)</span>
                <span style="padding-left: 0px; font-family: EmbArialBold;">Penukaran bagi Transaksi Luar Negara</span>
                <div style="margin-left: 20px; margin-top: 10px;">
                  <div style="display: inline-block; margin-top: -10px;padding-right: 5px;">
                    <span style="font-size: 10px; margin-left: -10px; vertical-align: middle;">&#8226;</span>
                    <span
                      style="margin-left: 2px; font-family: EmbArial; display: inline; vertical-align: middle;text-align: justify;">Kadar
                      pertukaran seperti yang ditentukan oleh Mastercard International atau Visa International atau
                      mana-mana pemilik jenama lain yang mana
                      Bank merupakan ahlinya, ditambah fi penukaran 1.25% oleh Bank pada amaun Ringgit Malaysia yang
                      ditukar.</span>
                  </div>
                </div>
              </div>
              <div class="normal-font" style="padding-top: 4px;">
                <span style="margin-left: 1px; font-family: EmbArialBold; ">vii)</span>
                <span style="padding-left: -1px; font-family: EmbArialBold;">Caj Ganti Rugi Atas Kelewatan Pembayaran
                </span><br />
                <span style="padding-left: 22px;letter-spacing: -0.2px;" class="fontItalic">(Selaras Dengan Garis Panduan Kad Kredit-i BNM)
                </span>
                <div style="margin-left: 20px;">
                  <div style="display: inline-block;padding-right: 5px;">
                    <span style="font-size: 10px; margin-left: -10px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 4px; font-family: EmbArial; display: inline; vertical-align: middle;">1%
                      ke atas jumlah baki semasa atau minimum<span style="margin-left: 3px;">RM5.00, yang mana lebih tinggi, tertakluk pada</span>
                      <span style="margin-left: 3px;">maksimum RM 50.00</span></span>
                  </div>
                </div>
              </div>
              <div style="font-family: EmbArialBold;padding-top: 4px;" class="normal-font">
                <span>viii)</span>
                <span style="margin-left: -2px;">Cukai Perkhidmatan</span><br />
              <div style="display: inline-block; margin-top: 1px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span
                  style="margin-left: 8px; font-family: EmbArial; display: inline; vertical-align: middle;">
                  RM25 untuk setiap kad</span>
              </div>
              </div>
              <br />
            </div>
          </th>
        </tr>
        <tr>
          <th>
            <div style="margin-left: 5px;font-family: EmbArialBold; text-align: left;" class="normal-font">
              PILIHAN CARA PEMBAYARAN
            </div>
          </th>
          <th>
            <div style="margin-left: 5px;">
              <div style="font-family: EmbArialBold;padding-top: 2px;" class="normal-font"><span>i)</span>
                <span style="margin-left: 10px;">Wang Tunai -</span> <span style="font-family: EmbArial;">
                  Melalui kaunter atau Mesin Deposit</span><br />
                <span style="margin-left: 17px; font-family: EmbArial;">Tunai di cawangan-cawangan Bank Islam.</span>
              </div>
              <div style="margin-right: 5px;">
                <div style="font-family: EmbArialBold;padding-top: 5px;" class="normal-font">
                  <span>ii)</span>
                  <span style="margin-left: 7px;">Cek* -</span>
                  <span style="font-family: EmbArial;">Atas nama</span>
                  <span class="fontItalicBold">“Pusat Kad Bank Islam untuk</span><br />
                  <span style="font-family:  EmbArialItalicBold; margin-left: 17px;">
                     nama penuh Pemegang Kad Utama”.
                  </span>
                <div style="margin-left: 17px; font-family: EmbArial; text-align: justify;" class="normal-font"> Sila
                  nyatakan nombor-nombor kad anda dibelakang cek
                  serta amaun pembayaran bagi setiap kad. Poskan
                  cek tersebut ke Pusat Kad Bank Islam, Bank Islam
                  Malaysia Berhad, P.O.Box 13296, 50806 Kuala
                  Lumpur atau masukkannya di mesin cek deposit di
                  mana-mana cawangan Bank Islam.</div>
                </div>
                <div style="font-family: EmbArialBold;padding-top: 5px;" class="normal-font"><span>iii)</span>
                  <span style="margin-left: 2px;">Arahan Tetap –</span> <span
                    style="font-family: EmbArial;text-align: justify;">
                    Melalui akaun Bank Islam anda.
                    <span style="margin-left: 18px; letter-spacing: -0.2px;">Sila pastikan baki di dalam akaun adalah mencukupi</span>
                    <span style="margin-left: 18px;"></span>
                  </span>
                </div>
                <div style="font-family: EmbArialBold; padding-top: 5px;" class="normal-font"><span>iv)</span>
                  <span style="margin-left: 3px;">Pindahan Wang melalui Perbankan
                  </span> <br /><span style="margin-left: 18px; font-family: EmbArial;">
                    Internet - GIRO antara Bank (IBG) /</span><span
                    style="margin-left: 18px;font-family: EmbArial;">DuitNow</span><br />
                </div>
                <div style="font-family: EmbArialBold;padding-top: 5px;" class="normal-font"><span>v)</span>
                  <span style="margin-left: 5px;">Pindahan Wang melalui mesin ATM Bank</span><br />
                  <span style="margin-left: 17px; font-family: EmbArial;">
                    <span style="font-family: EmbArialBold;" class="normal-font">Islam</span> - GIRO antara Bank
                    (IBG) / DuitNow</span>
                </div>
                <div class="fontItalic" style="padding: 5px 0px;"><span class="fontItalicBold">*Peringatan:</span> Sila beri masa yang mencukupi
                  untuk proses penghantaran serta penjelasan cek anda dan jangan kirimkan wang tunai melalui pos.</div>
              </div>
            </div>
          </th>
        </tr>
        <tr>
          <th style="font-family: EmbArialBold;" class="normal-font" colspan="2">
            <div style="padding-left: 7px;padding-right: 7px;">
              Untuk Lembaran Pendedahan Produk dan Terma dan Syarat Kad Kredit-i Bank Islam, sila layari laman web Bank
              Islam di www.bankislam.com
            </div>
          </th>
        </tr>
      </table>
      <div class="page-info" style="text-align: right;margin-top: 2px;font-size:11px;padding-right: 20px;"></div>
    </div>
    <#else>
      <div class="no-header-footer" style="margin-top: 10px;">
        <div style="text-align: center; margin-bottom: -10px; font-family: EmbArialBold;">
          <p>MAKLUMAT PENTING KAD KREDIT-i BISNES BANK ISLAM</p>
        </div>
        <table style="font-weight: normal; font-size:7.5pt;line-height: 0.9;" class="normal-font custom-table">
          <tr>
            <th style="width: 10%;">
              <div style="margin: 5px; font-family: EmbArialBold; text-align: left;" class="normal-font">TEMPOH
                <br />BEBAS CAJ<br />KEUNTUNGAN
              </div>
            </th>
            <th style="width: 40%;">
              <div style="margin-left: 5px; margin-top: -7px; margin-bottom: -7px; margin-right:3px ;">
                <p style="font-family: EmbArial;" class="normal-font"> <span
                    style="font-family: EmbArialBold;text-align: justify; "> 20 hari tempoh bebas caj keuntungan
                  </span>iaitu tiada caj keuntungan ke atas transaksi pembelian runcit mulai dari tarikh pengesahan
                  transaksi tersebut sekiranya baki semasa bulan terdahulu dijelaskan dengan sepenuhnya.</p>
              </div>
            </th>
            <th style="width: 50%; " rowspan="6">
              <div style="margin-left: 3px; margin-right: 3px;padding-top: 5px;" class="normal-font">
                <span style="font-family:EmbArialBold ;">Peringatan:</span><span style="word-spacing: -5px;">Pembayaran
                  hendaklah dibuat</span>
                <span style="font-family:EmbArialBold ;">SEBELUM TARIKH MATANG</span>
                <div style="font-family: EmbArial; margin-top: 7px;" class="normal-font">
                  <span style="font-family: EmbArialBold; text-decoration: underline;">BAYARAN MINIMUM</span>
                  <div style="font-weight: normal;font-family: EmbArialBold;margin-top: 4px;">
                    5% dari jumlah baki penyata atau minimum RM50.00, mana-mana yang lebih tinggi. <span
                      style="font-family: EmbArial;">Pengiraan adalah seperti berikut:</span>
                  </div>
                </div>
                <div style="border: 1px solid;font-weight: normal;font-family: EmbArialBold;margin-top: 5px;">
                  <div style="text-align: center;padding: 4px;">(Jumlah Baki Penyata x 5%) + Bayaran Minimum Tertunggak
                    (jika<br />ada)</div>
                </div>
                <div style="margin-top: 5px;"><span style="font-weight: normal;font-family: EmbArialBold;">Jumlah Baki
                    Penyata</span> = adalah
                  jumlah baki yang masih belum dilunaskan pada tarikh pemprosesan Penyata.</div>
                <p><span style="font-weight: normal;font-family: EmbArialBold;">Bayaran Minimum Tertunggak</span> =
                  adalah jumlah bayaran minimum bulan sebelumnya yang masih belum dilunaskan.</p>
                <p><span style="font-weight: normal;font-family: EmbArialBold;"><u>Contoh illustrasi di
                      mana:</u></span><br />
                  Caj Keuntungan adalah 17.5% setahun, 30 hari sebulan dan tiada transaksi baru.</p>
                <div>
                  <div>
                    <table
                      style="width: 300px; border-collapse: collapse; text-align: center; margin: 1.5px;line-height: 1.1;"
                      class="normal-font custom-table">
                      <tr>
                        <th style="border: 0.5px solid;font-family: EmbArialBold;"
                          class="normal-font">
                          Baki<br />Semasa
                        </th>
                        <th colspan="2" style="border: 0.5px solid; font-family:EmbArialBold;"
                          class="normal-font">
                          RM 3,000
                        </th>
                        <th colspan="2" style="border: 0.5px solid; font-family:EmbArialBold;"
                          class="normal-font">
                          RM 5,000
                        </th>
                        <th colspan="2" style="border: 0.5px solid; font-family:EmbArialBold;"
                          class="normal-font">
                          RM 10,000
                        </th>
                      </tr>
                      <tr>
                        <th style="border: 0.5px solid; text-align: left; padding-left: 5px;"
                          class="normal-font">
                          Bayaran<br />(RM)
                        </th>
                        <th style="border: 0.5px solid;  font-family: EmbArial;"
                          class="normal-font">
                          <div style="text-decoration: underline;padding-bottom: 2px;"> Minimum RM150 untuk bulan
                            pertama</div>
                        </th>
                        <th style="border: 0.5px solid; font-family: EmbArial;" class="normal-font">
                          RM250 setiap bulan<br />**<br />
                        </th>
                        <th style="border: 0.5px solid;" class="normal-font">
                          <div style="text-decoration: underline;padding-bottom: 2px;"> Minimum RM250 untuk bulan
                            pertama</div>
                        </th>
                        <th style="border: 0.5px solid;" class="normal-font">
                          RM350 setiap bulan<br />**<br />
                        </th>
                        <th style="border: 0.5px solid;" class="normal-font">
                          <div style="text-decoration: underline; padding-bottom: 2px;"> Minimum RM500 untuk<br />bulan
                            pertama</div>
                        </th>
                        <th style="border: 0.5px solid;" class=" normal-font">
                          RM650 setiap<br />bulan<br />**<br />
                        </th>
                      </tr>
                      <tr>
                        <td style="border: 0.5px solid; padding: 8px 5px;text-align: left;">Tempoh
                          Bayaran<br />(Bulan)</td>
                        <td style="border: 0.5px solid;">55</td>
                        <td style="border: 0.5px solid;">14</td>
                        <td style="border: 0.5px solid;">69</td>
                        <td style="border: 0.5px solid;">17</td>
                        <td style="border: 0.5px solid;">88</td>
                        <td style="border: 0.5px solid;">18</td>
                      </tr>
                      <tr>
                        <td style="border: 0.5px solid; padding: 10px 5px;text-align: left;">Jumlah
                          Caj Keuntungan (RM)</td>
                        <td style="border: 0.5px solid;">1014.42</td>
                        <td style="border: 0.5px solid;">322.16</td>
                        <td style="border: 0.5px solid;">1837.97</td>
                        <td style="border: 0.5px solid;">647.84</td>
                        <td style="border: 0.5px solid;">3896.83</td>
                        <td style="border: 0.5px solid;">1407.60</td>
                      </tr>
                      <tr>
                        <td style="border: 0.5px solid; padding: 10px 5px;text-align: left;">Jumlah
                          Keseluruhan (RM)</td>
                        <td style="border: 0.5px solid;">4014.42</td>
                        <td style="border: 0.5px solid;">3322.16</td>
                        <td style="border: 0.5px solid;">6837.97</td>
                        <td style="border: 0.5px solid;">5647.84</td>
                        <td style="border: 0.5px solid;">13896.83</td>
                        <td style="border: 0.5px solid;">11407.60</td>
                      </tr>
                    </table>
                  </div>
                  <div style="margin-top: 1px; margin-left: 3px;">
                    <span style="font-family: EmbArialBold; text-decoration: underline;" class="normal-font">**Bayaran
                      bulan terakhir adalah kurang daripada nilai yang dipaparkan</span>
                  </div>
                  <p style="font-family: EmbArial;margin-top: 13px;" class="normal-font"><span
                      style="font-family:EmbArialBold ; text-decoration: underline;line-height: 1;">PERUNTUKAN PEMBAYARAN</span><br />
                    Daripada pembayaran yang diterima, Bank Islam akan memperuntukkan pembayaran berkenaan untuk
                    menyelesaikan baki semasa berdasarkan kepada kadar keuntungan, dengan mengutamakan item-item yang
                    mempunyai kadar keuntungan yang tertinggi kepada yang terendah.</p>
                  <p style="font-family: EmbArial;margin-top: 13px;" class="normal-font"><span
                      style="font-family:EmbArialBold ; text-decoration: underline;line-height: 1;">KETEPATAN PENYATA</span><br />
                    Sila semak penyata akaun anda dan sekiranya terdapat sebarang kesilapan/percanggahan, anda
                    dikehendaki untuk maklumkan kepada Bank Islam secara bertulis dalam masa empat belas (14) hari dari
                    tarikh penyata. Jika tidak, penyata tersebut dianggap tepat dan sah.</p>
                  <p style="font-family: EmbArial;margin-top: 13px;" class="normal-font"><span
                      style="font-family:EmbArialBold ; text-decoration: underline;line-height: 1;">KEHILANGAN ATAU KECURIAN
                      KAD</span><br />
                    Sila maklumkan kepada Bank dengan serta-merta apabila mengetahui Kad Kredit-i anda telah hilang,
                    dicuri, urus niaga tanpa kebenaran telah berlaku atau PIN mungkin terjejas atau menerima mesej
                    pesanan ringkas (SMS) mengenai transaksi tanpa kebenaran telah berlaku dengan menghubungi talian
                    03-26 900 900 dan disusuli dengan surat pengesahan secara bertulis beserta laporan polis. Sekiranya
                    kehilangan/kecurian kad berlaku di luar negara, sila hubungi Visa Emergency Assistance untuk
                    bantuan.</p>
                  <p style="font-family: EmbArial;margin-top: 13px;" class="normal-font"><span
                      style="font-family:EmbArialBold ; text-decoration: underline;line-height: 1;">PERTUKARAN MAKLUMAT</span><br />
                    Anda hendaklah memaklumkan Bank Islam secara bertulis untuk sebarang pertukaran maklumat yang
                    berkenaan seperti nombor telefon dan alamat surat menyurat dan lain-lain untuk memastikan sebarang
                    makluman akan dapat disalurkan secara efektif.</p>
                  <div style="font-family: EmbArial; margin-left: 10px; margin-top: 13px;" class="normal-font">
                    <div style="font-family: EmbArialBold; text-decoration: underline; margin-left: -10px;line-height: 1;">LIABILITI
                      AKIBAT TRANSAKSI YANG TIDAK DISAHKAN</div>
                    <div>
                      <span style="margin-left: -5px; font-family: EmbArialBold;">i.</span><span style="padding-left: 7px;">Anda akan
                        bertanggungjawab ke atas transaksi tanpa kebenaran</span><span style="margin-left: 9px;">yang
                        memerlukan pengesahan PIN jika anda:</span>
                    </div>
                  </div>
                  <div style="font-family: EmbArial; margin-left: 15px; padding: 5px; line-height: 1.3;"
                    class="normal-font">
                    <div style="display: inline-block; margin-top: -4px;">
                      <div>
                      </div>
                      <span style="font-size: 10px; margin-right: 9px; vertical-align: middle;">&#8226;</span>
                      <span style="vertical-align: middle;">bertindak melakukan penipuan;</span>
                    </div>
                    <br />
                    <div style="display: inline-block; margin-top: -4px; line-height: 1;">
                      <span style="font-size: 10px; margin-right: 9px; vertical-align: middle;">&#8226;</span>
                      <span style="vertical-align: middle;">lewat memaklumkan kepada Bank Islam sebaik sahaja selepas
                      </span>
                      <span style="vertical-align: middle; display: block; margin-left: 15px;">mendapati kehilangan atau
                        penggunaan Kad
                        Kredit-i anda tanpa kebenaran;</span>
                    </div>
                    <div style="display: inline-block; margin-top: -4px;">
                      <span style="font-size: 10px; margin-right: 7px; vertical-align: middle;">&#8226;</span>
                      <span>mendedahkan butir-butir atau PIN anda kepada orang lain
                        secara</span><span style="margin-left: 15px;">sukarela;</span>
                    </div>
                    <div style="display: inline-block; margin-top: -4px; line-height: 1;">
                      <span style="font-size: 10px; margin-right: 9px; vertical-align: middle;">&#8226;</span>
                      <span style="vertical-align: middle;">menulis/merekodkan PIN anda di atas Kad Kredit-i, atau
                      </span>
                      <span style="vertical-align: middle; display: block; margin-left: 15px;"> apa-apa sahaja yang
                        disimpan di kawasan
                        berdekatan dengan Kad Kredit-i anda.</span>
                    </div>
                  </div>
                </div>
                <div style="font-family: EmbArial; margin-left: 15px;line-height: 1;">
                  <span style="margin-left: -12px;font-family: EmbArialBold;">ii.</span>
                  <span style="margin-left: -2px;">Anda akan bertanggungjawab ke atas transaksi tanpa kebenaran </span>
                  <span style="display: inline-block; margin-right: 20px;">
                    bagi transaksi dengan kad yang memerlukan pengesahan tandatangan atau penggunaan kad ciri tanpa
                    sentuh, jika anda:
                  </span>
                  <div style="display: flex; align-items: flex-start;">
                    <span style="font-size: 10px; margin-right: 9px;">&#8226;</span>
                    <span>bertindak melakukan penipuan;</span>
                  </div>
                  <div style="display: flex; align-items: flex-start;">
                    <span style="font-size: 10px; margin-right: 8px;">&#8226;</span>
                    <span>lewat memaklumkan kepada Bank Islam sebaik sahaja selepas</span>
                    <span style="margin-left: 16px;">mendapati kehilangan atau penggunaan Kad Kredit-i anda tanpa</span>
                    <span style="margin-left: 16px;">kebenaran;</span>
                  </div>
                  <div style="display: flex; align-items: flex-start;">
                    <span style="font-size: 10px; margin-right: 4px;">&#8226;</span>
                    <span>meninggalkan Kad Kredit-i anda atau apa sahaja yang
                      <span style="margin-left: 16px;">mengandungi Kad Kredit-i anda dalam keadaan tanpa
                        pengawasan</span>
                      <span style="margin-left: 16px;">,di tempat-tempat yang boleh dilihat dan boleh diakses oleh orang
                      </span>
                      <span style="margin-left: 16px;">lain; membenarkan orang lain menggunakan Kad Kredit-i anda</span>
                      <span style="margin-left: 16px;">secara sukarela.</span></span>
                  </div>
                </div>
                <br />
              </div>
            </th>
          </tr>
          <tr>
            <th>
              <div style="margin: 5px; font-family: EmbArialBold; text-align: left;" class="normal-font">
                MAKLUMAT<br />KADAR CAJ<br />KEUNTUNGAN</div>
            </th>
            <th style=" margin: 5px;">
              <p style="padding-left: 5px;margin-bottom: 10px;" class="normal-font">Transaksi Runcit:</p>
              <div style="margin-top: 10px; margin: 5px;">
                <table class="normal-font custom-table" style="border-spacing: 3px;">
                  <tr>
                    <td style="padding-bottom: 5px;"> <span style="font-family: EmbArialBold;margin-left: 3px;"
                        class="normal-font">13.5%</span>
                      <span style="font-family: EmbArial;margin-left: 3px;">setahun:</span>
                    </td>
                    <td style="font-family: EmbArial; padding: 0px 7px;  padding-bottom: 5px;" class="normal-font">
                      Dengan
                      pelunasan bayaran minimum bagi 12 bulan berturut-turut</td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 5px;"> <span style="font-family: EmbArialBold; margin-left: 3px;"
                        class="normal-font">16.0% </span>
                      <span style="font-family: EmbArial; margin-left: 3px;">setahun:</span>
                    </td>
                    <td style="font-family: EmbArial; padding: 0px 7px; padding-bottom: 5px;" class="normal-font">Dengan
                      pelunasan bayaran minimum bagi 10 atau 11 kali bayaran untuk 12 bulan terakhir</td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 5px;"> <span style="font-family: EmbArialBold; margin-left: 3px;"
                        class="normal-font">17.5% </span>
                      <span style="font-family: EmbArial; margin-left: 3px;">setahun:</span>
                    </td>
                    <td style="font-family: EmbArial; padding: 0px 7px;  padding-bottom: 5px;" class="normal-font">
                      Dengan perlunasan minimum bagi 9 kali atau kurang untuk 12 bulan terakhir
                    </td>
                  </tr>
                </table>
                <br />
                <div class="normal-font">Formula yang digunakan untuk pengiraan Caj Keuntungan adalah seperti berikut:
                </div>
                <div style="font-weight: normal;font-family: EmbArialItalicBold;margin-top: 5px;">[(Baki–Pembayaran) x
                  Caj Keuntungan
                  Tahunan] x [(Jumlah hari-20) / 365]</div>
              </div>
            </th>
          </tr>
          <tr>
            <th>
              <div style="margin-left: 5px;font-family:EmbArialBold ;" class="normal-font">FI DAN CAJ</div>
            </th>
            <th>
              <div style="margin-left: 5px;padding: 2px;">
                <div style="font-family: EmbArialBold;" class="normal-font">
                  <span>i.</span>
                  <span style="margin-left: 6px;line-height: 1;">Yuran Tahunan</span><br />
                  <div style="display: inline-block; margin-top: -10px;">
                    <span style="font-size: 10px; margin-left: 15px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                      RM777 (waived)</span>
                  </div>
                </div>
                <div style="font-family: EmbArialBold; margin-top: 5px;" class="normal-font">
                  <span>ii.</span>
                  <span style="margin-left: 5px;">Permintaan Penyata Tambahan</span><br />
                  <div style="display: inline-block; margin-top: -10px;">
                    <span style="font-size: 10px; margin-left: 16px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                      RM5.00 bagi setiap salinan penyata</span>
                  </div>
                </div>
                <div style="font-family: EmbArialBold;padding-top: 5px;" class="normal-font">
                  <span>iii.</span>
                  <span style="margin-left: 3px;">Permintaan Draf Jualan</span><br />
                  <div style="display: inline-block; margin-top: -10px;">
                    <span style="font-size: 10px; margin-left: 17px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                      RM5.00
                      bagi setiap salinan Draf Jualan</span>
                  </div><br />
                  <div style="display: inline-block; margin-top: -10px;">
                    <span style="font-size: 10px; margin-left: 17px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                      RM15.00 bagi setiap Draf Jualan Asal</span>
                  </div>
                </div>
                <div style="font-family: EmbArialBold;padding-top: 5px;line-height: 1.2;" class="normal-font">
                  <span>iv.</span><span style="margin-left: 5px;">Caj Penggantian Kad</span><br />
                  <div style="display: inline-block; margin-top: -4px;">
                    <span style="font-size: 10px; margin-left: 17px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                      RM50 untuk semua jenis kad</span>
                  </div>
                </div>
                <div class="normal-font" style="margin-top: 5px;padding-top: 2px;">
                  <span style="margin-left: 1px; font-family: EmbArialBold; ">v.</span>
                  <span style="padding-left: 4px; font-family: EmbArialBold;">Transaksi Luar
                    Negara</span>
                  <div style="margin-left: 20px; margin-top: 10px;">
                    <div style="display: inline-block; margin-top: -10px;padding-right: 5px;">
                      <span style="font-size: 10px; margin-left: -3px; vertical-align: middle;">&#8226;</span>
                      <span
                        style="margin-left: 2px; font-family: EmbArial; display: inline; vertical-align: middle;text-align: justify;">Kadar
                        pertukaran wang asing adalah ditentukan<span style="margin-left: 4px;">oleh Visa Worldwide pada
                          tarikh penerimaan</span><span style="margin-left: 4px;">dan/atau
                          pemprosessan transaksi oleh Bank</span><span style="margin-left: 4px;">Islam.</span></span>
                    </div>
                  </div>
                </div>
                <div style="font-family: EmbArialBold;padding-top: 5px;" class="normal-font">
                  <span>vi.</span>
                  <span style="margin-left: 3px;">Cukai Perkhidmatan</span><br />
                  <div style="display: inline-block; margin-top: -10px;">
                    <span style="font-size: 10px; margin-left: 17px; vertical-align: middle;">&#8226;</span>
                    <span
                      style="margin-left: 7px; font-family: EmbArial; display: inline; vertical-align: middle; margin-top: 5px;">
                      RM25 untuk setiap kad</span>
                  </div>
                </div>
              </div>
            </th>
          </tr>
          <tr>
            <th>
              <div style="margin-left: 5px;font-family: EmbArialBold; text-align: left;" class="normal-font">
                CAJ TETAP
              </div>
            </th>
            <th>
              <div style="padding: 3px 5px;">
                <span class="normal-font">Caj Gantirugi Atas Kelewatan Pembayaran <span style="font-family: EmbArialItalic;">(Selaras Dengan Garis Panduan Kad
                  Kredit-i BNM)</span></span><br />
                <div style="padding-left: 5px;">
                  <span style="font-size: 10px; margin-left: -5px; vertical-align: middle;">&#8226;</span>
                  <span style="margin-left: 3px; font-family: EmbArial; display: inline; text-align: justify;"
                    class="normal-font">1% ke atas jumlah baki semasa atau minimum<span
                      style="margin-left: 7px;">RM5.00, mana-mana yang lebih tinggi, tertakluk</span><span
                      style="margin-left: 7px;">pada maksimum RM 50.00</span></span>
                </div>
              </div>
            </th>
          </tr>
          <tr>
            <th>
              <div style="margin-left: 5px;font-family: EmbArialBold; text-align: left;" class="normal-font">
                PILIHAN CARA PEMBAYARAN
              </div>
            </th>
            <th>
              <div style="margin-left: 5px;">
                <div style="font-family: EmbArialBold;padding-top: 2px;" class="normal-font"><span
                    style="font-size: 10px;">&#8226;</span>
                  <span style="margin-left: 6px;">Wang Tunai -</span> <span style="font-family: EmbArial;">
                    Melalui kaunter atau Mesin Deposit</span><br />
                  <span style="margin-left: 14px; font-family: EmbArial;">
                    Tunai di cawangan-cawangan Bank Islam.</span>
                </div>
                <div style="margin-right: 5px;">
                  <div style="font-family: EmbArialBold; padding-top: 5px;" class="normal-font">
                    <span style="font-size: 10px;">&#8226;</span>
                    <span style="margin-left: 7px;">Cek* -</span>
                    <span style="font-family: EmbArial;">Atas nama “Pusat Kad Bank Islam untuk <span
                        style="font-family: EmbArialItalic; margin-left: 12px; letter-spacing: 0.1px;">&lt;nama penuh Syarikat&gt;". </span>
                      <span>Sila nyatakan nombor</span> <span style="padding-left: 15px;">-nombor kad anda dibelakang
                        cek serta amaun</span><span style="padding-left: 15px;">pembayaran bagi setiap kad. Poskan cek
                      </span><span style="padding-left: 15px;">tersebut ke Pusat Kad Bank Islam, Bank Islam </span><span
                        style="padding-left: 15px;">Malaysia
                        Berhad, P.O.Box 13296,50806 Kuala </span> <span style="margin-left: 15px;">Lumpur atau
                        masukkannya di mesin cek deposit </span><span style="margin-left: 15px;">di mana-mana cawangan
                        Bank Islam.</span></span>
                  </div>
                  <div style="font-family: EmbArialBold;padding-top: 5px;" class="normal-font"><span
                      style="font-size: 10px;">&#8226;</span>
                    <span style="margin-left: 7px;letter-spacing: -0.1px;">Arahan Tetap –</span><span
                      style="font-family: EmbArial;text-align: justify;letter-spacing: -0.1px;">
                      Melalui akaun Bank Islam anda.Sila<span style="padding-left: 15px;">pastikan baki di dalam akaun
                        adalah mencukupi.</span>
                    </span>
                  </div>
                  <div style="font-family: EmbArialBold;padding-top: 5px;" class="normal-font"><span
                      style="font-size: 10px;">&#8226;</span>
                    <span style="margin-left: 5px;">Pindahan Wang </span><span
                      style="font-family: EmbArial;">melalui</span> <span>Perbankan Internet -<span
                        style="padding-left: 14px;letter-spacing: -0.1px;">GIRO antara Bank (IBG)/Pindahan Segera (IBFT)</span>
                    </span>
                  </div>
                  <div class="fontItalic" style="padding: 7px 0px;"><span class="fontItalicBold"> *Peringatan:</span>
                    Sila
                    beri masa yang mencukupi
                    untuk proses penghantaran serta penjelasan cek anda dan jangan kirimkan wang tunai melalui pos.
                  </div>
                </div>
              </div>
            </th>
          </tr>
          <tr>
            <th style="font-family: EmbArialBold;" class="normal-font" colspan="2">
              <div style="font-family: EmbArial; margin-top: 0px;">
                <ul style="list-style-position: inside; padding: 0; margin: 0;">
                  <li> <span style="margin-left: 7px;">Untuk perkara yang berkaitan dengan Kad Kredit-i Bisnes Bank
                    </span> <span style="margin-left: 21px;">Islam anda, sila hubungi:</span></li>
                </ul>
              </div>
              <div style="font-family: EmbArial; margin-left: 21px;" class="normal-font">
                <span style="font-family: EmbArialBold;">Pusat Kad Bank Islam,</span><br />
                <span style="font-family: EmbArialBold;">Aras 24, Menara Bank Islam, No 22 Jalan Perak,</span><br />
                <span style="font-family: EmbArialBold;">50450 Kuala Lumpur</span><br />
                <span>Emel: <u id="linkColor">bicc.customer.service@bankislam.com.my </u></span><br /><br />
                <span>Tel.: 03-26 900 900</span><span style="margin-left: 20px;">Fax: 03-2726 7606</span>
              </div>
              <div style="font-family: EmbArial; margin-top: 7px;">
                <ul style="list-style-position: inside; padding: 0; margin: 0; line-height: 1.5;">
                  <li> <span style="margin-left: 8px;">Untuk maklumat perbankan umum, layarilah <span
                        style="text-decoration: underline;" id="linkColor">www.bankinginfo.com.my</span></span></li>
                </ul>
              </div>
              <p style="font-family: EmbArial; margin-top: 7px;">
              <ul style="list-style-position: inside; padding: 0; margin: 0;">
                <li> <span style="margin-left: 8px;">Untuk pertanyaan mengenai sektor kewangan, sila hubungi Bank
                  </span><span style="margin-left: 21px;">Negara Malaysia melalui:</span></li>
              </ul>
              </p>
              <p style="font-family: EmbArial; margin-left: 22px;" class="normal-font">
                <span style="font-family: EmbArialBold;">Pusat Perkhidmatan Pelanggan BNMLINK,Tingkat Bawah,
                </span><br />
                <span style="font-family: EmbArialBold;">Blok D, Jalan Dato’ Onn, 50480 Kuala Lumpur</span><br />
                <span style="line-height: 1.1;">Emel: <span style="text-decoration: underline;" id="linkColor">
                    bnmtelelink@bnm.gov.my</span></span><br />
                <span>Tel.: 1-300-88-5465 (Isnin – Jumaat : 9:00am– 5:00pm)</span><br />
                <span>Fax: 03-2174 1515</span>
              </p>
            </th>
          </tr>
        </table>
        <div class="page-info" style="text-align: right;margin-top: 10px;font-size:11px;padding-right: 20px;"></div>
      </div>
  </#if>
  <div class="page-break"></div>

  <!-- Section 01 : Card -->
  <section style="clear: both; font-size: 12px; margin-top: 0px;">
    <table style="width: 100%; border-collapse: collapse; text-align: left;" class="normal-font">
      <thead>
        <div style="width: 590%;margin-bottom: 10px;margin-top: 0px;">
          <div style="border: 1.5px solid; padding: 5px; font-size: 14px; font-family:EmbArialBold;padding-left: 15px;"
            class="normal-font">
            KAD-i BANK ISLAM / <span class="fontItalicBold">BANK ISLAM CARD-i</span>
          </div>
          <div style="margin-top: 10px; text-align: left;">
            <div style="display: inline-block; width: 33%; margin-right: -4px; font-family:EmbArialBold ;"
              class="normal-font">
              Tarikh Penyata <br /> <span class="fontItalicBold"> Statement Date</span>
            </div>
            <div style="display: inline-block; width: 33%; font-family:EmbArialBold ; margin-right: -4px;"
              class="normal-font">
              Tarikh Matang <br /><span class="fontItalicBold"> Payment Due Date</span>
            </div>
            <div style="display: inline-block; width: 33%; font-family: EmbArialBold; margin-right: 0;"
              class="normal-font">
              Had Pembiayaan (RM) <br /><span class="fontItalicBold"> Financing Limit (RM)</span>
            </div>
          </div>
          <div style="margin-top: 5px; text-align: left;">
            <div
              style="display: inline-block; width: 30%; border-bottom: 1px solid; margin-right: 15px; text-align: center; font-size: 12px;"
              class="break">
              <span>${contextVariables.processingDate!}</span>
            </div>
            <div
              style="display: inline-block; width: 30%; border-bottom: 1px solid; margin-right: 15px; text-align: center;font-size: 12px;"
              class="break">
              <span>${contextVariables.latestDueDate!}</span>
            </div>
            <div
              style="display: inline-block; width: 33%; border-bottom: 1px solid; margin-right: 0; text-align: center;font-size: 12px;"
              class="break">
              <span>${contextVariables.financingLimit!}</span>
            </div>
          </div>
          <div style="margin-top: 5px; text-align: left;">
            <div style="display: inline-block; width: 33%; font-family: EmbArialBold; margin-right: -4px;"
              class="normal-font">
              Keuntungan Dicaj Bulan Ini (RM) <br />
              <span class="fontItalicBold"> Profit Charged For This Month (RM)</span>
            </div>
          </div>
          <div style="margin-top: 5px; text-align: left;">
            <div
              style="display: inline-block; width: 30%; border-bottom: 1px solid; text-align: center;font-size: 12px;"
              class="break">
              ${contextVariables.profitCharge!}</div>
          </div>
        </div>
        <tr>
          <th
            style="padding: 5px; font-family: EmbArialBold; border-left: 1.5px solid;  border-bottom: 1.5px solid;border-top: 1.5px solid;width: 100px;max-width: 100px;padding-left:10px;"
            class="normal-font">
            Tarikh Urusniaga<br />
            <span class="fontItalicBold">Transaction Date</span>
          </th>
          <th
            style="padding: 5px; font-family: EmbArialBold; border-bottom: 1.5px solid;border-top: 1.5px solid;width: 80px;max-width: 80px;"
            class="normal-font">
            Tarikh Pos<br />
            <span class="fontItalicBold">Posting Date</span>
          </th>
          <th style="padding: 5px; font-family: EmbArialBold; border-bottom: 1.5px solid;border-top: 1.5px solid"
            class="normal-font">Deskripsi Transaksi<br />
            <span class="fontItalicBold">Transaction Description</span>
          </th>
          <th
            style="padding: 5px; text-align: right; font-family: EmbArialBold;  border-bottom: 1.5px solid;  border-right: 1.5px solid;border-top: 1.5px solid;width: 100px; max-width: 100px;padding-right: 10px;"
            class="normal-font">
            Amaun (RM)<br /><span class="fontItalicBold">Amount (RM)</span>
          </th>
        </tr>
      </thead>
      <tbody id="table-body-none">
        <tr>
          <td></td>
          <td></td>
          <td style="padding: 5px;" id="table-body-none " class="break">${contextVariables.txnPreviousBalanceTitle!}</td>
          <td style="padding: 5px; text-align: right;padding-right: 10px;" id="table-body-none " class="break">${contextVariables.txnPreviousBalance!}</td>
        </tr>
        <#list contextVariables.retailDetails! as retailDetail>
          <tr id="table-body-none">
            <td style=" padding: 5px;padding-left:10px;" id="table-body-none " class="break">
              ${retailDetail.transactionDate!}</td>
            <td style="padding: 5px;" id="table-body-none " class="break">
              ${retailDetail.postingDate!}</td>
            <td style="padding: 5px;" id="table-body-none " class="break">${retailDetail.description!}</td>
            <td style="padding: 5px; text-align: right;padding-right: 10px;" id="table-body-none " class="break">
              ${retailDetail.amount!}${retailDetail.amountSign!}</td>
          </tr>
        </#list>
      
        <#list contextVariables.transactions!?keys as customerKey>
          <tr>
            <td></td>
            <td></td>
            <td style="padding: 5px; font-family: EmbArialItalicBold;" id="table-body-none" class="break">
              ${customerKey}
            </td>
            <td></td>
          </tr>
        
          <#list contextVariables.transactions[customerKey] as transaction>
            <tr id="table-body-none">
              <td style="padding: 5px; padding-left:10px;" class="break">
                ${transaction.transactionDate!}
              </td>
              <td style="padding: 5px;" class="break">
                ${transaction.postingDate!}
              </td>
              <td style="padding: 5px;" class="break">
               <span style="white-space: pre-wrap;">${transaction.description!}</span>
              </td>
              <td style="padding: 5px; text-align: right; padding-right: 10px;" class="break">
                ${transaction.amount!}${transaction.amountSign!}
              </td>
            </tr>
          </#list>
        </#list>

        <tr>
          <td style="padding: 5px; border: none;"></td>
          <td style="padding: 5px; border: none;"></td>
          <td
            style="padding: 5px; border: none; font-family: EmbArialBold;word-wrap: break-word;white-space: normal;overflow-wrap: break-word;"
            class="normal-font">
            ${contextVariables.subTotalTittle!}</td>
          <td style="padding: 5px; text-align: right; border: 1px solid;padding-right: 10px;" class="break">
            ${contextVariables.subTotal!}
          </td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td>
            <#if contextVariables.messageSecondDetail?has_content>
              <div style="font-size: 12px;">
                "${contextVariables.messageSecondDetail!}"
              </div>
            </#if>
          </td>
          <td></td>
        </tr>
      </tbody>
      <tbody>
        <tr>
          <th colspan="4">
            <table
              style="width: 100%; border-collapse: collapse; border: 0.5px solid;margin-top: 20px;font-weight: normal;font-family: EmbArial;font-size: 11.5px;">
              <tr>
                <th style="border-bottom: 0.5px solid;font-weight: normal;font-family: EmbArialBold;">
                  <div style="text-align: center; padding:5px 50px; font-size: 10pt;">KAD KREDIT-i MASTERCARD MASTERCARD
                    CREDIT CARD-i
                    (TRUPOINTS)</div>
                </th>
                <th
                  style="border-bottom: 0.5px solid;border-left: 0.5px solid;font-weight: normal;font-family: EmbArialBold;">
                  <div style="text-align: center;padding:5px 90px; font-size: 10pt;">KAD KREDIT-i VISA VISA CREDIT
                    CARD-i (CASH BACK)
                  </div>
                </th>
              </tr>
              <tr>
                <td style="width: 50%;">
                  <li style="margin-bottom: 15px;list-style: none;padding-left: 20px;margin-top: 10px;">
                    1)&#160;&#160;&#160;&#160;Nikmati penebusan TruPoints dengan segera melalui <span
                      style="padding-left: 25px;">aplikasi "Pay with Rewards"</span><br />
                    <span class="fontItalic"><span style="padding-left: 25px;">Enjoy instant
                        redemptions of TruPoints via the "Pay
                      </span><span style="padding-left: 25px;">with Rewards" app</span></span>
                  </li>
                  <li style="margin-bottom: 10px;list-style: none;padding-left: 20px;margin-top: 10px;">
                    2)&#160;&#160;&#160;&#160;Muat turun aplikasi dan semak TruPoints terkini anda<span
                      style="padding-left: 25px;">sekarang. Imbas QR dan mula memuat turun.</span><br />
                    <span class="fontItalic"><span style="padding-left: 25px;">Download the app and
                        check your total TruPoints
                      </span><span style="padding-left: 25px;">now. Scan the QR code and start downloading</span></span>
                  </li>
                  <div style="text-align: center;">
                    <div style="display: inline-block; text-align: center;">
                      <img src="${contextVariables.androidScanner!}" alt="android_image"
                        style="width:130px;height:115px;" />
                      <p style="margin-top: 7px;">Android</p>
                    </div>
                    <div style="display: inline-block;  text-align: center;margin-left: 15px;margin-right: -15px;">
                      <img src="${contextVariables.iosScanner!}" alt="ios_image" style="width:130px;height:115px;" />
                      <p style="margin-top: 7px;">iOS</p>
                    </div>
                  </div>
                  <li style="margin-bottom: 15px;list-style: none;padding-left: 20px;margin-top: -5px;">
                    3)&#160;&#160;&#160;&#160;Layari https://trurewards.bankislam.com untuk<span
                      style="padding-left: 25px;">pendaftaran akaun TruRewards,</span><br />
                    <span><span style="padding-left: 25px;">semakan baki TruPoints
                        terkini dan untuk lebih pilihan
                      </span><span style="padding-left: 25px;">penebusan.</span><br /><span style="padding-left: 25px;"
                        class="fontItalic">Visit https://trurewards.bankislam.com to register your</span>
                      <span style="padding-left: 25px;" class="fontItalic">TruRewards Account,</span><br />
                      <span style="padding-left: 25px;" class="fontItalic">to check for latest TruPoints balance and for
                        more</span>
                      <span style="padding-left: 25px;" class="fontItalic">redemption options.</span>
                    </span>
                  </li>
                  <li style="margin-bottom: 15px;list-style: none;padding-left: 20px;margin-top: 10px;">
                    4)&#160;&#160;&#160;&#160;Untuk maklumat lanjut serta Terma dan Syarat,<br /><span
                      style="padding-left: 25px;">sila layari https://www.bankislam.com/personal-</span><br />
                    <span><span style="padding-left: 25px;">banking/bank-islam-cards/trurewards-<br />
                      </span><span style="padding-left: 25px;">loyalty-programme/</span><br /><span
                        style="padding-left: 25px;" class="fontItalic">Visit
                        https://www.bankislam.com/personal-<br /></span>
                      <span style="padding-left: 25px;"
                        class="fontItalic">banking/bank-islam-cards/trurewards-</span><br />
                      <span style="padding-left: 25px;" class="fontItalic">loyalty-programme/</span><br />
                      <span style="padding-left: 25px;" class="fontItalic">for further details and Terms &amp;
                        Conditions</span>
                    </span>
                  </li>
                </td>
                <td style="border-left: 0.5px solid;vertical-align: top;">
                  <li
                    style="margin-bottom: 15px;list-style: none;padding-left: 10px;margin-top: 10px;padding-right: 5px;">
                    1)&#160;&#160;&#160;&#160;Nikmati Pulangan Tunai apabila anda berbelanja untuk<span
                      style="padding-left: 25px;">pembelian runcit dan atas talian dalam transaksi</span><br />
                    <span style="padding-left: 25px;">domestik dan luar negara.</span>
                    <span class="fontItalic"><br /><span style="padding-left: 25px;">Enjoy Cash Back when you spend for
                        retail and
                        online</span><span style="padding-left: 25px;">purchases in domestic and overseas
                        transaction.</span> </span>
                  </li>
                  <li
                    style="margin-bottom: 15px;list-style: none;padding-left: 10px;margin-top: 10px;padding-right: 5px;">
                    2)&#160;&#160;&#160;&#160;Pulangan Tunai akan ditunjukkan dalam penyata<span
                      style="padding-left: 25px;">bulanan Kad Kredit-i anda yang seterusnya.</span><br />
                    <span class="fontItalic"><span style="padding-left: 25px;">Cash Back will be
                        reflected in your subsequent
                      </span><span style="padding-left: 25px;">monthly Credit Card-i statement</span></span>
                  </li>
                  <li
                    style="margin-bottom: 15px;list-style: none;padding-left: 10px;margin-top: 10px;padding-right: 5px;">
                    3)&#160;&#160;&#160;&#160;Layari https://www.bankislam.com/personal-<br /><span
                      style="padding-left: 25px;">banking/bank-islam-cards/cash-back-program/ untuk</span><br />
                    <span style="padding-left: 25px;">maklumat lanjut dan Terma &amp; Syarat<br />
                    </span><span class="fontItalic"><span style="padding-left: 25px;">Visit
                        https://www.bankislam.com/personal-</span><br /><span
                        style="padding-left: 25px;">banking/bank-islam-cards/cash-back-program/ for</span><span
                        style="padding-left: 25px;">more details and full Terms &amp; Conditions</span></span>
                  </li>
                </td>
              </tr>
            </table>
            <div style="page-break-inside: avoid;">
              <p style="font-weight: normal; font-family: EmbArialBold;font-size: 14px;">RINGKASAN PELAN ANSURAN /
                SUMMARY OF INSTALMENT PLAN</p>
              <table style="width: 100%; border-collapse: collapse; margin-top: 10px;" class="normal-font custom-table">
                <tr>
                  <td
                    style="border: 0.5px solid; text-align: left; font-family: EmbArialBold; padding: 5px;width: 170px; max-width: 170px;vertical-align: top;">
                    Pelan /Program Ansuran<br /><span class="fontItalic">Instalment
                      Program/Plan</span>
                  </td>
                  <td
                    style="border: 0.5px solid; text-align: left; font-family: EmbArialBold;padding: 5px; width: 100px; max-width: 100px;vertical-align: top;">
                    Jumlah Amaun Prinsipal (RM)<br /><span class="fontItalic">Total Principal
                      Amount (RM)</span>
                  </td>
                  <td
                    style="border: 0.5px solid; text-align: left; font-family: EmbArialBold; padding: 5px;vertical-align: top; width:70px;max-width: 70px;">
                    Tempoh Ansuran<br /><span class="fontItalic">Instalment Tenure</span>
                  </td>
                  <td
                    style="border: 0.5px solid; text-align: left; font-family: EmbArialBold; padding: 5px;vertical-align: top; width:120px;max-width: 120px;">
                    Bayaran Ansuran Bulanan (RM)<br /><span class="fontItalic">Monthly Instalment
                      Payment
                      (RM)</span>
                  </td>
                  <td
                    style="border: 0.5px solid; text-align: left; font-family: EmbArialBold; padding: 5px;vertical-align: top;width:50px;max-width: 50px;">
                    Bulan yang belum dibilkan<br /><span class="fontItalic">Month Unbilled</span>
                  </td>
                  <td
                    style="border: 0.5px solid; text-align: center; font-family: EmbArialBold; padding: 5px;vertical-align: top;width:100px;max-width: 100px;">
                    Prinsipal yang belum dibilkan (RM)<br /><span class="fontItalic">Unbilled Principal(RM)</span>
                  </td>
                </tr>
                <tbody>
                  <#if contextVariables.installmentPlan?has_content>
                    <#list contextVariables.installmentPlan! as summaryInstallmentPlan>
                      <tr>
                        <td style="border: 0.5px solid; text-align: left; padding:1px 4px;border-bottom:hidden;"
                          class="break">
                          ${summaryInstallmentPlan.installmentProgram!}
                        </td>
                        <td style="border: 0.5px solid; text-align: center; padding:1px 4px;border-bottom:hidden"
                          class="break">
                          ${summaryInstallmentPlan.totalPrincipalAmount!}${summaryInstallmentPlan.totalPrincipalAmountSign!}
                        </td>
                        <td style="border: 0.5px solid; text-align: center; padding:1px 4px;border-bottom:hidden"
                          class="break">
                          ${summaryInstallmentPlan.installmentTenure!}
                        </td>
                        <td style="border: 0.5px solid; text-align: center; padding:1px 4px;border-bottom:hidden"
                          class="break">
                          ${summaryInstallmentPlan.monthlyInstallmentPayment!}${summaryInstallmentPlan.monthlyInstallmentPaymentSign!}
                        </td>
                        <td style="border: 0.5px solid; text-align: center; padding:1px 4px;border-bottom:hidden"
                          class="break">
                          ${summaryInstallmentPlan.monthUnBilled!}</td>
                        <td style="border: 0.5px solid; text-align: center; padding:1px 4px;border-bottom:hidden"
                          class="break">
                          ${summaryInstallmentPlan.unBilledPrinciple!}${summaryInstallmentPlan.unBilledPrincipleSign!}
                        </td>
                      </tr>
                    </#list>
                    <#else>
                      <tr>
                        <td style="border: 0.5px solid; text-align: center; padding: 12px;">
                        </td>
                        <td style="border: 0.5px solid; text-align: center; padding: 12px;">
                        </td>
                        <td style="border: 0.5px solid; text-align: center; padding: 12px;">
                        </td>
                        <td style="border: 0.5px solid; text-align: center; padding: 12px;">
                        </td>
                        <td style="border: 0.5px solid; text-align: center; padding: 12px;">
                        </td>
                        <td style="border: 0.5px solid; text-align: center; padding: 12px;">
                        </td>
                      </tr>
                  </#if>
                </tbody>
              </table>
            </div>
          </th>
        </tr>
      </tbody>
    </table>
  </section>
</body>
</html>