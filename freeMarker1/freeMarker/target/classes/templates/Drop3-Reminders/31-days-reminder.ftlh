<!DOCTYPE html>
<html lang="en">
<head>
    <title>31 Days Reminder</title>
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
            width: 25%;
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
        <div class="paddingTopDiv">Sungguhpun beberapa peringatan telah diberikan, akaun pembiayaan tuan/puan masih lagi
            tertunggak sebanyak
            RM 9,805.12 setakat 05/01/2024.</div>
        <div class="paddingTopDiv">Sila selesaikan tunggakan tersebut dengan kadar segera.</div>
        <div class="paddingTopDiv">Sekiranya gagal, pihak Bank Islam berhak menamatkan pembiayaan tersebut dan mengambil
            tindakan
            undang-undang terhadap tuan/puan bagi menuntut keseluruhan baki pembiayaan.</div>
        <div class="paddingTopDiv">Pihak kami juga berhak mendebit akaun simpanan/semasa tuan/puan sebagai bayaran untuk
            menyelesaikan
            keseluruhan atau sebahagian tunggakan tersebut.</div>
        <div class="paddingTopDiv">Sebarang pertanyaan, sila hubungi Unit Susulan di talian 03-27267853/7864.</div>
        <div class="paddingTopDiv">Sila abaikan peringatan ini jika bayaran keseluruhan tunggakan telah dibuat. Apa-apa
            bayaran yang diterima
            adalah atas dasar tanpa prasangka.</div>
        <div class="paddingTopDiv">Terima Kasih.</div>
        <div class="paddingTopDiv">Bagi Perusahaan Kecil dan Sederhana (PKS), anda boleh merujuk kepada Skim
            Penyelesaian Pinjaman Kecil
            (SDRS)
            yang kini diuruskan oleh Agensi Kaunseling dan Pengurusan Kredit (AKPK) untuk perkhidmatan penstrukturan
            semula hutang, serta pendidikan dan khidmat nasihat kewangan.<br /> Mereka b dihubungi melaiui 03-26167766
            atau saluran dalam taliannya di www.akpk.org.my atau cawangannya di seluruh negara.<br />(Surat ini adalah
            cetakan berkomputer dan tidak memerlukan tandatangan)<br />BIMB0150LNI522P</div>
        <div class="paddingTopDiv">Dear Sir,</div>
        <div class="paddingTopDiv fontBold"><u>REMINDER ON ARREARS PAYMENT (Financing TWQ BUSINESS FINANCING-i)</u>
        </div>
        <div class="paddingTopDiv">Despite numerous reminders, your financing still in arrears amounting RM 9,805.12 as
            at 05/01/2024.</div>
        <div class="paddingTopDiv">Kindly arrange to settle the said arrears immediately.</div>
        <div class="paddingTopDiv">Bank Islam reserves the right to terminate the financing agreement (s) and proceed
            with legal action
            against
            you to recover the balance outstanding financing amount.</div>
        <div class="paddingTopDiv">Bank Islam also reserve the right to debit your saving / current account balances as
            part / full payment for the financing arrears, if any.</div>
        <div class="paddingTopDiv">For any enquiries, please contact Collection Unit at 03-27267853/7864.</div>
        <div class="paddingTopDiv">Kindly ignore this reminder if payment has been made. All payment accepted is on
            without prejudice basis.
        </div>
        <div class="paddingTopDiv">Thank You.</div>
        <div class="paddingTopDiv">For Small and Medium Enterprises (SME), you may refer to Small Debt Resolution Scheme
            (SDRS) which is
            currently managed by Agensi Kaunseling dan Pengurusan Kredit (AKPK)for debt restructuring services, as well
            as financial education and advisory. They can be contacted at 03-26167766 or through its online channels at
            www.akpk.org.my or its branches throughout the country.<br />
            Note: In the event of any inconsistency of the two version above, the English version
            shall prevail.</div>
        <div class="paddingTopDiv">(This letter is auto generated and no signature is
            required)<br />BIMB015050124LNI522P</div>
    </main>
</body>
</html>