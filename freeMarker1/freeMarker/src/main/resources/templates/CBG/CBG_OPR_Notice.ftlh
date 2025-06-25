<!DOCTYPE html>
<html lang="en">
<head>
    <title>CBG - OPR NOTICE</title>
    <meta charset="utf-8" />
    <style type="text/css">
        @page {
            size: A4;
            margin-left: 70px;
            margin-right: 70px;
            margin-top: 30mm;
            @top-left {
                content: element(header);
            }
        }

        body {
            font-family: EmbArial;
            font-size: 8pt;
            line-height: 1.1;
            text-align: justify;
        }

        header {
            text-align: left;
            position: running(header);
            width: 677px;
            margin-left: 7.5px;
            margin-top: 30px;
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

        .bankLogo {
            vertical-align: middle;
            margin-left: 5px;
            width: 216px;
            height: 50px;
            display: inline-block;
        }

        .stmtLogo {
            width: 90px;
            height: 65px;
            margin-top: 5px;
            margin-left: 360px;
        }

        .customerInfo {
            height: 120px;
            max-height: 120px;
            margin-top: 50px;
        }

        .accountInfoTable {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .accountInfoTable td {
            vertical-align: top;
            border: 1px solid;
            width: 25%;
            text-align: center;
            padding: 3px;
        }

        .fontBold {
            font-family: EmbArialBold;
            font-weight: normal;
        }

        .break {
            word-wrap: break-word;
            white-space: normal;
            overflow-wrap: break-word;
        }

        .paddingTopDiv {
            padding-top: 15px;
        }

        .fontItalic {
            font-family: EmbArialItalic;
        }

        ol.custom-counter {
            counter-reset: item;
            padding-left: 0;
        }

        ol.custom-counter li {
            list-style: none;
            position: relative;
            padding-left: 20px;
        }

        ol.custom-counter li::before {
            counter-increment: item;
            content: counter(item) ")";
            position: absolute;
        }

        .page-break {
            page-break-before: always;
            break-before: page;
        }

        .alignCenter {
            text-align: center;
        }
    </style>
</head>
<body style="margin-top: 0px;">
    <header>
        <div class="logo-left">
            <img src="${contextVariables.bankIslamLogo!}" alt="bank_islam_logo" class="bankLogo" />
        </div>
        <div class="logo-right">
            <img src="${contextVariables.statementLogo!}" alt="statement_logo" class="stmtLogo" />
        </div>
    </header>

    <main>
        <div>
            <div class="customerInfo">
                ${contextVariables.item.customerName!}<br />
                ${contextVariables.item.add1!}<br />
                <#compress>
                    <#if contextVariables.item.address??>
                        <#list contextVariables.item.address?split("|") as sValue>
                            <#if sValue?trim?length gt 0>
                                ${sValue}<#if sValue?has_next><br /></#if>
                            </#if>
                        </#list>
                    </#if>
                </#compress>
            </div>
            <div style="margin-top: 40px;">Assalamualaikam / Salam Sejahtera</div>
            <div class="paddingTopDiv">Tuan/Puan,</div>
            <div class="paddingTopDiv fontBold">PELARASAN AMAUN BAYARAN/ANSURAN BULANAN</div>
            <div class="paddingTopDiv fontBold">No. Akaun Pembiayaan : ${contextVariables.item.customerAccountNumber!}
            </div>
            <div class="paddingTopDiv">Merujuk kepada perubahan Kadar Asas Standard (KAS)/Kadar Asas (KA)/Kadar
                Pembiayaan Asas (KPA) kami pada ${contextVariables.item.installmentDate!}, amaun bayaran/ansuran bulanan bagi akaun
                pembiayaan anda akan diselaraskan seperti jadual di bawah:</div>
            <table class="accountInfoTable">
                <tr>
                    <td></td>
                    <td class="fontBold">KAS / KA / KPA</td>
                    <td class="fontBold">Kadar Keuntungan<br />Efektif</td>
                    <td class="fontBold">Amaun Bayaran /<br />Ansuran Bulanan</td>
                </tr>
                <tr>
                    <td>Terdahulu</td>
                    <td class="break">${contextVariables.item.bfrPrevious!} setahun</td>
                    <td class="break">${contextVariables.item.effectiveProfitRatePrevious!} setahun</td>
                    <td class="break">RM ${contextVariables.item.instalmentPrevious!}</td>
                </tr>
                <tr>
                    <td>Baharu</td>
                    <td class="break">${contextVariables.item.bfrNew!} setahun</td>
                    <td class="break">${contextVariables.item.effectiveProfitRateNew!} setahun</td>
                    <td class="break">RM ${contextVariables.item.instalmentNew!}</td>
                </tr>
                <tr>
                    <td colspan="3">Perbezaan terhadap Amaun Bayaran/Ansuran Bulanan</td>
                    <td class="break">RM ${contextVariables.item.differenceInstalment!}</td>
                </tr>
            </table>
            <div class="paddingTopDiv">Amaun bayaran/ansuran bulanan baharu akan berkuatkuasa dari
                ${contextVariables.item.effectFromDate!} sehingga tarikh yang akan dimaklumkan kelak.</div>
            <div class="paddingTopDiv">Oleh kerana tarikh berkuatkuasa KAS/KA/KPA kami yang baharu adalah lebih awal
                daripada amaun bayaran/ansuran bulanan yang baharu, perbezaan di antara amaun bayaran/ansuran bulanan
                yang baharu dan amaun bayaran/ansuran bulanan semasa yang dibayar selepas tarikh kuatkuasa KAS/KA/ KPA yang
                baharu akan dikumpulkan dan perlu dibayar pada tarikh akhir pembiayaan atau ketika penyelesaian penuh
                amaun pembiayaan, yang mana terdahulu (jika berkenaan). Amaun keuntungan akan dikira secara harian berdasarkan
                kepada baki kos semasa amaun pembiayaan dan kadar keuntungan efektif.</div>
            <div class="paddingTopDiv">Sila ambil maklum ke atas perkara-perkara berikut:</div>
            <ol class="custom-counter">
                <li>
                    <div class="fontBold">Sekiranya kaedah Bayaran/Ansuran Bulanan adalah melalui PEMOTONGAN GAJI</div>
                    <div>Anda dengan ini bersetuju untuk memberi keizinan kepada Bank Islam untuk memaklumkan kepada
                        majikan anda berkenaan pelarasan amaun bayaran/ansuran bulanan. Walau bagaimanapun, sila maklumkan
                        kepada majikan anda berkenaan pelarasan amaun bayaran/ansuran bulanan tersebut bagi mengelakkan sebarang
                        kekurangan pada bayaran/ansuran bulanan.</div>
                </li>
                <br />
                <li>
                    <div class="fontBold">Sekiranya Bayaran/Ansuran Bulanan adalah melalui kaedah-kaedah yang lain</div>
                    <div>Sila pastikan pembayaran adalah berdasarkan kepada amaun bayaran/ansuran bulanan baharu seperti
                        di atas.</div>
                </li>
                <br />
                <li>
                    <div class="fontBold">Sekiranya akaun pembiayaan tersebut telah ditamatkan atau di bawah tindakan undang-undang</div>
                    <div>Pengeluaran notis ini adalah tanpa prejudis ke atas hak-hak Bank untuk menuntut sebagaimana
                        yang diperuntukkan di dalam perjanjian pembiayaan dan perubahan amaun bayaran/ansuran yang dinyatakan
                        di atas adalah tidak terpakai.</div>
                </li>
            </ol>
            <div>Syarat-syarat dan terma-terma lain adalah tidak berubah.</div>
            <div class="paddingTopDiv">Sekiranya tuan/puan menghadapi kekangan kewangan untuk meneruskan bayaran ansuran
                bulanan, sila layari laman sesawang Bank Islam (https://www.bankislam.com) : 
                <span class="fontItalic">BANK ISLAM > NEED ASSISTANCE? > FINANCING SUPPORT &amp; ASSISTANCE</span> untuk bantuan dan sokongan.
            </div>
            <div class="paddingTopDiv">Sebagai alternatif, tuan/puan juga boleh melayari laman sesawang Agensi
                Kaunseling dan Pengurusan Kredit (AKPK) untuk menyertai program AKPK. Sila hubungi Pusat Panggilan &amp; Khidmat
                Pelanggan kami di 03-26 900 900 sekiranya anda memerlukan maklumat lanjut.</div>
            <div class="paddingTopDiv">Terima Kasih.</div>
            <div class="paddingTopDiv">BANK ISLAM MALAYSIA BERHAD (198301002944 (98127-X))</div>
            <div class="paddingTopDiv fontItalic alignCenter">Ini adalah cetakan komputer dan tidak perlu ditandatangani</div>
        </div>

        <div class="page-break"></div>

        <div>
            <div class="customerInfo">
                ${contextVariables.item.customerName!}<br />
                ${contextVariables.item.add1!}<br />
                <#compress>
                    <#if contextVariables.item.address??>
                        <#list contextVariables.item.address?split("|") as sValue>
                            <#if sValue?trim?length gt 0>
                                ${sValue}<#if sValue?has_next><br /></#if>
                            </#if>
                        </#list>
                    </#if>
                </#compress>
            </div>
            <div style="margin-top: 40px;">Assalamualaikam / Greetings</div>
            <div class="paddingTopDiv">Dear Sir / Madam,</div>
            <div class="paddingTopDiv fontBold">REVISION OF MONTHLY PAYMENT/INSTALMENT</div>
            <div class="paddingTopDiv fontBold">Financing Account No. : ${contextVariables.item.customerAccountNumber!}</div>
            <div class="paddingTopDiv">With the revision of our Standardised Base Rate (SBR) / Base Rate (BR) / Base
                Financing Rate (BFR) on ${contextVariables.item.installmentDate!}, your monthly payment/instalment will be
                adjusted as follows:</div>
            <table class="accountInfoTable">
                <tr>
                    <td></td>
                    <td class="fontBold">SBR / BR /<br />BFR</td>
                    <td class="fontBold">Effective Profit Rate</td>
                    <td class="fontBold">Monthly Payment<br />/Instalment</td>
                </tr>
                <tr>
                    <td>Previous</td>
                    <td class="break">${contextVariables.item.bfrPrevious!} p.a.</td>
                    <td class="break">${contextVariables.item.effectiveProfitRatePrevious!} p.a.</td>
                    <td class="break">RM ${contextVariables.item.instalmentPrevious!}</td>
                </tr>
                <tr>
                    <td>New</td>
                    <td class="break">${contextVariables.item.bfrNew!} p.a.</td>
                    <td class="break">${contextVariables.item.effectiveProfitRateNew!} p.a.</td>
                    <td class="break">RM ${contextVariables.item.instalmentNew!}</td>
                </tr>
                <tr>
                    <td colspan="3">Difference in Monthly Payment/Instalment</td>
                    <td class="break">RM ${contextVariables.item.differenceInstalment!}</td>
                </tr>
            </table>
            <div class="paddingTopDiv">The new monthly payment/instalment will take effect from
                ${contextVariables.item.effectFromDate!} until further notice.</div>
            <div class="paddingTopDiv">As the effective date of the revised Bank's SBR/BR/BFR is earlier than the new
                monthly payment/instalment, the differences between new monthly payment/instalment and existing
                monthly payment/instalment paid after the effective date of the SBR/BR/BFR will be
                accumulated and is payable at the end of financing tenure or upon full settlement of the
                financing amount, whichever is earlier (if applicable). The Bank shall accrue the profit
                amount based on the prevailing cost outstanding and effective profit rate on a daily basis.</div>
            <div class="paddingTopDiv">Please take note on the following:</div>
            <ol class="custom-counter">
                <li>
                    <div class="fontBold">If your Monthly Payment/Instalment is by SALARY DEDUCTION</div>
                    <div>You hereby agree to give consent for us to advise your employer on the new monthly
                        payment/instalment amount. Nonetheless, please advise your employer on the new monthly
                        payment/instalment to avoid any short payment.</div>
                </li>
                <br />
                <li>
                    <div class="fontBold">If your Monthly Payment/Instalment is by other payment methods</div>
                    <div>Please ensure to pay according to the above new monthly payment/instalment amount.</div>
                </li>
                <br />
                <li>
                    <div class="fontBold">If your Financing Account has been terminated or under legal proceeding</div>
                    <div>This notice is issued without prejudice to the Bank's rights to recover under the
                        financing agreement and the above revised payment/instalment amount shall not be
                        applicable.</div>
                </li>
            </ol>
            <div>All other existing terms and conditions shall remain unchanged.</div>
            <div class="paddingTopDiv">If you are facing financial constraints to continue servicing the monthly
                instalment, kindly access Bank Islam's website (https://www.bankislam.com) :
                <span class="fontItalic">BANK ISLAM > NEED ASSISTANCE? > FINANCING SUPPORT &amp; ASSISTANCE</span> for
                support and assistance.
            </div>
            <div class="paddingTopDiv">Alternatively, you may also access 'Agensi Kaunseling dan Pengurusan Kredit'
                (AKPK) website to enroll in AKPK programme.Please call our Contact Centre &amp; Customer Care at 03-26 900 900
                should you require further information or clarification.</div>
            <div class="paddingTopDiv">Thank you.</div>
            <div class="paddingTopDiv">BANK ISLAM MALAYSIA BERHAD (198301002944 (98127-X))</div>
            <div class="paddingTopDiv fontItalic alignCenter">This is a computer generated and does not require any signature</div>
        </div>
    </main>
</body>
</html>