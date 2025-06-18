<!DOCTYPE html>
<html lang="en">
<head>
    <title>15 Days Reminder</title>
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
        }

        header {
            text-align: left;
            position: running(header);
            width: 677px;
            margin-left: 7.5px;
            margin-top: 30px;
        }

        .headerData {
            margin-left: 10px;
            display: inline-block;
            vertical-align: middle;
            line-height: 1.2;
        }

        .confidential-label {
            margin-top: 5px;
            margin-left: 5px;
            line-height: 1.2;
        }

        .bankIslamLogo {
            vertical-align: middle;
            margin-left: 5px;
            width: 216px;
            height: 50px;
            display: inline-block;
        }

        .customerInfo {
            height: 120px;
            max-height: 120px;
            margin-top: 50px;
        }

        .accountInfoTable {
            width: 100%;
            border-collapse: collapse;
            margin-top: 80px;
        }

        .accountInfoTable td {
            vertical-align: top;
        }

        .firstColWidth {
            width: 20%;
        }

        .secondColWidth {
            text-align: center;
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
            padding-top: 11px;
        }
    </style>
</head>
<body style="margin-top: 0px;">
    <header>
        <div>
            <img src="${contextVariables.bankIslamLogo!}" alt="bank_islam_logo" class="bankIslamLogo" />
            <p class="headerData">
                Jika tidak sampai, sila kembalikan kepada :-<br />
                <span>
                    P.O. Box 12176, 50724 Kuala Lumpur, Malaysia
                </span>
            </p>
        </div>
        <div>
            <p class="confidential-label">
                SULIT &amp; PERSENDIRIAN<br />
                Untuk dibuka oleh Penerima sahaja
            </p>
        </div>
    </header>

    <main>
        <div class="customerInfo">
            John Doe<br />
            Doe<br />
            123 Main Street<br />
            Apartment 4B<br />
            Springfield<br />
            USA
        </div>
        <table class="accountInfoTable">
            <tr>
                <td class="firstColWidth">No. Akaun/Account No</td>
                <td class="secondColWidth">:</td>
                <td class="break">12345678910</td>
            </tr>
            <tr>
                <td class="firstColWidth">Tarikh/Date</td>
                <td class="secondColWidth">:</td>
                <td class="break">5/01/2024</td>
            </tr>
        </table>
        <div class="paddingTopDiv">Tuan/Puan,<span style="margin-left: 420px;">"TANPA PRASANGKA"</span></div>
        <div class="paddingTopDiv fontBold"><u>PERINGATAN TUNGGAKAN (PEMBIAYAAN TWQ BUSINESS FINANCING-i)</u></div>
        <div class="paddingTopDiv">Perkara diatas adalah dirujuk.</div>
        <div class="paddingTopDiv">Akaun pembiayaan tuan/puan telah tertunggak sebanyak RM 4,671.42 setakat 20/01/2024.</div>
        <div class="paddingTopDiv">Sila selesaikan tunggakan tersebut dengan kadar segera.</div>
        <div class="paddingTopDiv">Pihak Bank Islam berhak mendebit akaun simpanan/semasa tuan/puan sebagai bayaran untuk
            menyelesaikan keseluruhan atau sebahagian tunggakan tersebut.</div>
        <div class="paddingTopDiv">Sebarang pertanyaan, sila hubungi Unit Susulan di talian 03-27821451.</div>
        <div class="paddingTopDiv">Sila abaikan peringatan ini jika bayaran keseluruhan tunggakan telah dibuat. Apa-aра
            bayaran yang diterima adalah atas dasar tanpa prasangka.</div>
        <div class="paddingTopDiv">Terima Kasih.</div>
        <div class="paddingTopDiv">Bagi Perusahaan Kecil dan Sederhana (PKS), anda boleh merujuk kepada Skim Penyelesaian Pinjaman
            Kecil (SDRS) yang kini diuruskan oleh Agensi Kaunseling dan Pengurusan Kredit (AKPK) untuk
            perkhidmatan penstrukturan semula hutang, serta pendidikan dan khidmat nasihat kewangan.
            Mereka boleh dihubungi melalui 03-26167766 atau saluran dalam taliannya di www.akpk.org.my atau
            cawangannya di seluruh negara.<br/>(Surat ini adalah cetakan berkomputer dan tidak memerlukan tandatangan)<br/>
            BIMB015200124LNI521P</div>
        <div class="paddingTopDiv">Dear Sir,</div>
        <div class="paddingTopDiv fontBold"><u>REMINDER ON AMOUNT IN ARREARS (Financing TWQ BUSINESS FINANCING-i)</u>
        </div>
        <div class="paddingTopDiv">The above matter refers.</div>
        <div class="paddingTopDiv">Your financing has been in arrears for RM 4,671.42 as at 20/01/2024.</div>
        <div class="paddingTopDiv">Kindly arrange to settle the arrears immediately.</div>
        <div class="paddingTopDiv">Bank Islam reserve the right to debit your saving / current account as part /full
            arrears payment of the financing amount, if any.</div>
        <div class="paddingTopDiv">For any enquiries, please contact Collection Unit at 03-27821451.</div>
        <div class="paddingTopDiv">Kindly ignore this reminder if payment has been made. All payments accepted is on
            without prejudice basis.
        </div>
        <div class="paddingTopDiv">Thank You.</div>
        <div class="paddingTopDiv">For Small and Medium Enterprises (SME), you may refer to Small Debt Resolution Scheme (SDRS) which is currently managed by Agensi Kaunseling dan Pengurusan Kredit (AKPK)for debt restructuring
            services, as well as financial education and advisory. They can be contactedat 03-26167766 or through its online channels at www.akpk.org.my or its branches throughout the country.<br/>
            Note: In the event of any inconsistency of the two version above, the English
            version shall prevail.</div>
        <div class="paddingTopDiv">(This letter is auto generated and no signature is required)<br/>
            BIMB015200124LNI521P</div>
    </main>
</body>
</html>