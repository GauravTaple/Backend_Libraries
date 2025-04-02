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
            margin-bottom:  0mm;

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
            font-size: 12px;
            font-weight: normal;
            font-family: EmbArialBold;
        }

        .message-body {
            font-size: 12px;
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
            padding: 8px;
            box-sizing: border-box;
            word-wrap: break-word;
            white-space: normal;
            overflow-wrap: break-word;
            width: 120px;
            max-width: 120px;
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

        #tableHeaderColor {
            background-color: lightblue;
        }

        #tableFentColor {
            background-color: #E3EFF9;
        }

        #linkColor {
            color: blue;
        }
    </style>
</head>

<body class="justify" style="line-height: 1.1;">






    <#if contextVariables.day !="02">
        <div class="no-header-footer" style="margin-top: 10px;">
            <div style="text-align: center; margin-bottom: -11px; font-family: EmbArialBold;">
                <p>MAKLUMAT PENTING KAD KREDIT-i</p>
            </div>
            <table style="font-weight: normal; font-size:11px;" class="normal-font custom-table">
                <tr>
                    <td style="width: 10%;">TEMPOH BEBAS CAJ KEUNTUNGAN</td>
                    <td style="width: 30%;">20 hari tempoh bebas caj keuntungan iaitu tiada caj keuntungan ke atas
                        transaksi pembelian runcit mulai dari tarikh pengesahan transaksi tersebut sekiranya baki semasa
                        bulan terdahulu dijelaskan dengan sepenuhnya.
                    </td>
                    <td style="width: 45%;">Peringatan: Pembayaran hendaklah dibuat SEBELUM TARIKH MATANG

                        BAYARAN MINIMUM
                        5% dari jumlah baki penyata atau minimum RM50.00, mana-mana yang lebih tinggi. Pengiraan adalah
                        seperti berikut:</td>
                </tr>
                <tr>
                    <td>MAKLUMAT KADAR CAJ
                        KEUNTUNGAN </td>
                    <td>Transaksi Runcit:

                        13.5% setahun:
                        Dengan pelunasan bayaran minimum bagi 12 bulan berturut-turut
                        16.0% setahun:
                        Dengan pelunasan bayaran minimum bagi 10 atau 11 kali bayaran untuk 12 bulan terakhir
                        17.5% setahun:
                        Dengan perlunasan minimum bagi 9 kali atau kurang untuk 12 bulan terakhir

                        Formula yang digunakan untuk pengiraan Caj Keuntungan adalah seperti berikut:
                        [(Baki–Pembayaran) x Caj Keuntungan Tahunan] x [(Jumlah hari-20) / 365]</td>
                </tr>
                <tr>
                    <td>FI DAN CAJ</td>
                    <td> i. Yuran Tahunan
                        • RM777 (waived)

                        ii. Permintaan Penyata Tambahan
                        • RM5.00 bagi setiap salinan penyata

                        iii. Permintaan Draf Jualan
                        • RM5.00 bagi setiap salinan Draf Jualan
                        • RM15.00 bagi setiap Draf Jualan Asal

                        iv. Caj Penggantian Kad
                        • RM50 untuk semua jenis kad

                        v. Transaksi Luar Negara
                        • Kadar pertukaran wang asing adalah ditentukan oleh Visa Worldwide pada tarikh penerimaan
                        dan/atau pemprosessan transaksi oleh Bank Islam.

                        vi. Cukai Perkhidmatan
                        • RM25 setiap kad

                    </td>
                </tr>
                <tr>
                    <td>CAJ TETAP</td>
                    <td>Caj Gantirugi Atas Kelewatan Pembayaran (Selaras Dengan Garis Panduan Kad Kredit-i BNM)
                        ◦ 1% ke atas jumlah baki semasa atau minimum RM5.00, mana-mana yang lebih tinggi, tertakluk pada
                        maksimum RM 50.00</td>
                </tr>

                <tr>
                    <td>PILIHAN CARA PEMBAYARAN</td>
                    <td> • Wang Tunai - Melalui kaunter atau Mesin Deposit Tunai di cawangan-cawangan Bank Islam.
                        • Cek* - Atas nama “Pusat Kad Bank Islam untuk nama penuh Syarikat”. Sila nyatakan nombor-nombor
                        kad anda dibelakang cek serta amaun pembayaran bagi setiap kad. Poskan cek tersebut ke Pusat Kad
                        Bank Islam, Bank Islam Malaysia Berhad, P.O.Box 13296, 50806 Kuala Lumpur atau masukkannya di
                        mesin cek deposit di mana-mana cawangan Bank Islam.
                        • Arahan Tetap – Melalui akaun Bank Islam anda. Sila pastikan baki di dalam akaun adalah
                        mencukupi.
                        • Pindahan Wang melalui Perbankan Internet -GIRO antara Bank (IBG)/Pindahan Segera (IBFT)

                        *Peringatan: Sila beri masa yang mencukupi untuk proses penghantaran serta penjelasan cek anda
                        dan jangan kirimkan wang tunai melalui pos.
                    </td>
                </tr>
                <tr>
                    <td> • Untuk perkara yang berkaitan dengan Kad Kredit-i Bisnes Bank Islam anda, sila hubungi:
                        Pusat Kad Bank Islam,
                        Aras 24, Menara Bank Islam, No 22 Jalan Perak,
                        50450 Kuala Lumpur
                        Emel: bicc.customer.service@bankislam.com.my
                        Tel.: 03-26 900 900 Fax: 03-2726 7606

                        • Untuk maklumat perbankan umum, layarilah www.bankinginfo.com.my

                        • Untuk pertanyaan mengenai sektor kewangan, sila hubungi Bank Negara Malaysia melalui:
                        Pusat Perkhidmatan Pelanggan BNMLINK, Tingkat Bawah,
                        Blok D, Jalan Dato’ Onn, 50480 Kuala Lumpur
                        Emel: bnmtelelink@bnm.gov.my
                        Tel.: 1-300-88-5465 (Isnin – Jumaat : 9:00am– 5:00pm)
                        Fax: 03-2174 1515</td>
                        <td>jnfnskfj</td>
                </tr>




            </table>
        </div>
        <#else>
            <div class="no-header-footer" style="margin-top: 40px;">
                <div style="text-align: center; margin-bottom: -7px; font-family: EmbArialBold;">
                    <p>MAKLUMAT PENTING KAD KREDIT-i BISNES BANK ISLAM</p>
                </div>
                <table style="font-weight: normal; font-size:7px;" class="normal-font custom-table">
                    <tr>
                        <th style="width: 15%;">
                            <div style="margin: 5px; font-family: EmbArialBold; text-align: left;" class="normal-font">
                                TEMPOH
                                <br />BEBAS CAJ<br />KEUNTUNGAN
                            </div>
                        </th>
                        <th style="width: 40%;">
                            <div style="margin-left: 5px; margin-top: -7px; margin-bottom: -7px; margin-right:3px ;">
                                <p style="font-family: EmbArial;" class="normal-font"> <span
                                        style="font-family: EmbArialBold;text-align: justify; "> 20 hari tempoh bebas
                                        caj keuntungan
                                    </span>iaitu tiada caj keuntungan ke atas transaksi pembelian runcit mulai dari
                                    tarikh pengesahan
                                    transaksi tersebut sekiranya baki semasa bulan terdahulu dijelaskan dengan
                                    sepenuhnya.</p>
                            </div>
                        </th>
                        <th style="width: 45%;" rowspan="6">
                            <div style="margin-left: 5px; margin-right: 5px; margin-top: -35px; " class="normal-font">
                                <span style="font-family:EmbArialBold ;">Peringatan:</span><span> Pembayaran hendaklah
                                    dibuat</span>
                                <span style="font-family:EmbArialBold ;">SEBELUM TARIKH MATANG</span>
                                <p style="font-family: EmbArial;" class="normal-font">
                                    <span style="font-family: EmbArialBold; text-decoration: underline;">BAYARAN
                                        MINIMUM</span>
                                    <br />
                                    <span style="font-weight: normal;font-family: EmbArialBold;">
                                        5% dari jumlah baki penyata atau minimum RM50.00, mana-mana yang lebih tinggi.
                                        <span style="font-family: EmbArial;">Pengiraan adalah seperti berikut:</span>
                                    </span>
                                </p>
                                <div style="border: 1px solid;font-weight: normal;font-family: EmbArialBold;">
                                    <div style="text-align: center;padding: 8px;">(Jumlah Baki Penyata x 5%) + Bayaran
                                        Minimum Tertunggak
                                        (jika<br />ada)</div>
                                </div>
                                <p><span style="font-weight: normal;font-family: EmbArialBold;">Jumlah Baki
                                        Penyata</span> = adalah
                                    jumlah baki yang masih belum dilunaskan pada tarikh pemprosesan Penyata.</p>
                                <p><span style="font-weight: normal;font-family: EmbArialBold;">Bayaran Minimum
                                        Tertunggak</span> =
                                    adalah jumlah bayaran minimum bulan sebelumnya yang masih belum dilunaskan.</p>
                                <p><span style="font-weight: normal;font-family: EmbArialBold;"><u>Contoh illustrasi di
                                            mana:</u></span><br />
                                    Caj Keuntungan adalah 17.5% setahun, 30 hari sebulan dan tiada transaksi baru.</p>
                                <div>
                                    <div>
                                        <table
                                            style="width: 80%; border-collapse: collapse; text-align: center; margin: 1.5px;"
                                            class="normal-font custom-table">
                                            <tr>
                                                <th style="border: 0.5px solid; padding: 10px 5px; font-family: EmbArialBold;"
                                                    id="tableHeaderColor" class="normal-font">
                                                    Baki<br />Semasa
                                                </th>
                                                <th colspan="2"
                                                    style="border: 0.5px solid; padding: 10px 5px;  font-family:EmbArialBold;"
                                                    id="tableHeaderColor" class="normal-font">
                                                    RM 3,000
                                                </th>
                                                <th colspan="2"
                                                    style="border: 0.5px solid; padding: 10px 5px;  font-family:EmbArialBold;"
                                                    id="tableHeaderColor" class="normal-font">
                                                    RM 5,000
                                                </th>
                                                <th colspan="2"
                                                    style="border: 0.5px solid; padding: 10px 5px;  font-family:EmbArialBold;"
                                                    id="tableHeaderColor" class="normal-font">
                                                    RM 10,000
                                                </th>
                                            </tr>
                                            <tr>
                                                <th style="border: 0.5px solid; padding: 8px 5px; text-align: left;"
                                                    id="tableFentColor" class="normal-font">
                                                    Bayaran<br />(RM)
                                                </th>
                                                <th style="border: 0.5px solid; padding: 8px 4px;  font-family: EmbArial;"
                                                    id="tableFentColor" class="normal-font">
                                                    <div style="text-decoration: underline;"> Minimum RM150 untuk bulan
                                                        pertama</div>
                                                </th>
                                                <th style="border: 0.5px solid; padding: 8px 4px; font-family: EmbArial;"
                                                    id="tableFentColor" class="normal-font">
                                                    RM250<br />**<br />setiap bulan
                                                </th>
                                                <th style="border: 0.5px solid; padding: 8px 4px;" id="tableFentColor"
                                                    class="normal-font">
                                                    <div style="text-decoration: underline;"> Minimum RM250 untuk bulan
                                                        pertama</div>
                                                </th>
                                                <th style="border: 0.5px solid; padding: 8px 4px;" id="tableFentColor"
                                                    class="normal-font">
                                                    RM350<br />**<br />setiap bulan
                                                </th>
                                                <th style="border: 0.5px solid; padding: 8px 4px;" id="tableFentColor"
                                                    class="normal-font">
                                                    <div style="text-decoration: underline;"> Minimum RM500
                                                        untuk<br />bulan pertama</div>
                                                </th>
                                                <th style="border: 0.5px solid; padding: 8px 4px;" id="tableFentColor"
                                                    class=" normal-font">
                                                    RM650<br />**<br />setiap<br />bulan
                                                </th>
                                            </tr>
                                            <tr>
                                                <td style="border: 0.5px solid; padding: 8px 5px;text-align: left;"
                                                    id="tableFentColor">Tempoh
                                                    Bayaran<br />(Bulan)</td>
                                                <td style="border: 0.5px solid; padding: 8px 5px;">55</td>
                                                <td style="border: 0.5px solid; padding: 8px 5px;">14</td>
                                                <td style="border: 0.5px solid; padding: 8px 5px;">69</td>
                                                <td style="border: 0.5px solid; padding: 8px 5px;">17</td>
                                                <td style="border: 0.5px solid; padding: 8px 5px;">88</td>
                                                <td style="border: 0.5px solid; padding: 8px 5px;">18</td>
                                            </tr>
                                            <tr>
                                                <td style="border: 0.5px solid; padding: 10px 5px;text-align: left;"
                                                    id="tableFentColor">Jumlah
                                                    Caj Keuntungan (RM)</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">1014.42</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">322.16</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">1837.97</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">647.84</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">3896.83</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">1407.60</td>
                                            </tr>
                                            <tr>
                                                <td style="border: 0.5px solid; padding: 10px 5px;text-align: left;"
                                                    id="tableFentColor">Jumlah
                                                    Keseluruhan (RM)</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">4014.42</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">3322.16</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">6837.97</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">5647.84</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">13896.83</td>
                                                <td style="border: 0.5px solid; padding: 10px 8px;">11407.60</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="margin-top: 1px; margin-left: 3px;">
                                        <span style="font-family: EmbArialBold; text-decoration: underline;"
                                            class="normal-font">**Bayaran
                                            bulan terakhir adalah kurang daripada nilai yang dipaparkan</span>
                                    </div>
                                    <p style="font-family: EmbArial;margin-top: 13px;" class="normal-font"><span
                                            style="font-family:EmbArialBold ; text-decoration: underline;">PERUNTUKAN
                                            PEMBAYARAN</span><br />
                                        Daripada pembayaran yang diterima, Bank Islam akan memperuntukkan pembayaran
                                        berkenaan untuk
                                        menyelesaikan baki semasa berdasarkan kepada kadar keuntungan, dengan
                                        mengutamakan item-item yang
                                        mempunyai kadar keuntungan yang tertinggi kepada yang terendah.</p>
                                    <p style="font-family: EmbArial;margin-top: 13px;" class="normal-font"><span
                                            style="font-family:EmbArialBold ; text-decoration: underline;">KETEPATAN
                                            PENYATA</span><br />
                                        Sila semak penyata akaun anda dan sekiranya terdapat sebarang
                                        kesilapan/percanggahan, anda
                                        dikehendaki untuk maklumkan kepada Bank Islam secara bertulis dalam masa empat
                                        belas (14) hari dari
                                        tarikh penyata. Jika tidak, penyata tersebut dianggap tepat dan sah.</p>
                                    <p style="font-family: EmbArial;margin-top: 13px;" class="normal-font"><span
                                            style="font-family:EmbArialBold ; text-decoration: underline;">KEHILANGAN
                                            ATAU KECURIAN
                                            KAD</span><br />
                                        Sila maklumkan kepada Bank dengan serta-merta apabila mengetahui Kad Kredit-i
                                        anda telah hilang,
                                        dicuri, urus niaga tanpa kebenaran telah berlaku atau PIN mungkin terjejas atau
                                        menerima mesej
                                        pesanan ringkas (SMS) mengenai transaksi tanpa kebenaran telah berlaku dengan
                                        menghubungi talian
                                        03-26 900 900 dan disusuli dengan surat pengesahan secara bertulis beserta
                                        laporan polis. Sekiranya
                                        kehilangan/kecurian kad berlaku di luar negara, sila hubungi Visa Emergency
                                        Assistance untuk
                                        bantuan.</p>
                                    <p style="font-family: EmbArial;margin-top: 13px;" class="normal-font"><span
                                            style="font-family:EmbArialBold ; text-decoration: underline;">PERTUKARAN
                                            MAKLUMAT</span><br />
                                        Anda hendaklah memaklumkan Bank Islam secara bertulis untuk sebarang pertukaran
                                        maklumat yang
                                        berkenaan seperti nombor telefon dan alamat surat menyurat dan lain-lain untuk
                                        memastikan sebarang
                                        makluman akan dapat disalurkan secara efektif.</p>
                                    <div style="font-family: EmbArial; margin-left: 10px; margin-top: 13px;"
                                        class="normal-font">
                                        <div
                                            style="font-family: EmbArialBold; text-decoration: underline; margin-left: -10px;">
                                            LIABILITI
                                            AKIBAT TRANSAKSI YANG TIDAK DISAHKAN</div>
                                        <div>
                                            <span style="margin-left: 3px; font-family: EmbArialBold;"> i.</span> <span>
                                                Anda akan
                                                bertanggungjawab ke atas transaksi tanpa kebenaran yang memerlukan
                                            </span><span style="margin-left: 9px;"> &#160;pengesahan PIN jika
                                                anda:</span>
                                        </div>
                                    </div>
                                    <div style="font-family: EmbArial; margin-left: 15px; padding: 5px; line-height: 1.3;"
                                        class="normal-font">
                                        <div style="display: inline-block; margin-top: -4px;">
                                            <div>
                                            </div>
                                            <span
                                                style="font-size: 10px; margin-right: 10px; vertical-align: middle;">&#8226;</span>
                                            <span style="vertical-align: middle;">bertindak melakukan penipuan;</span>
                                        </div>
                                        <br />
                                        <div style="display: inline-block; margin-top: -4px; line-height: 1;">
                                            <span
                                                style="font-size: 10px; margin-right: 10px; vertical-align: middle;">&#8226;</span>
                                            <span style="vertical-align: middle;">lewat memaklumkan kepada Bank Islam
                                                sebaik sahaja selepas
                                                mendapati kehilangan</span>
                                            <span
                                                style="vertical-align: middle; display: block; margin-left: 15px;">atau
                                                penggunaan Kad
                                                Kredit-i anda tanpa kebenaran;</span>
                                        </div>
                                        <br />
                                        <div style="display: inline-block; margin-top: -4px;">
                                            <span
                                                style="font-size: 10px; margin-right: 10px; vertical-align: middle;">&#8226;</span>
                                            <span style="vertical-align: middle;">mendedahkan butir-butir atau PIN anda
                                                kepada orang lain
                                                secara sukarela;</span>
                                        </div>
                                        <br />
                                        <div style="display: inline-block; margin-top: -4px; line-height: 1;">
                                            <span
                                                style="font-size: 10px; margin-right: 9px; vertical-align: middle;">&#8226;</span>
                                            <span style="vertical-align: middle;">menulis/merekodkan PIN anda di atas
                                                Kad Kredit-i, atau
                                                apa-apa sahaja yang</span>
                                            <span
                                                style="vertical-align: middle; display: block; margin-left: 15px;">disimpan
                                                di kawasan
                                                berdekatan dengan Kad Kredit-i anda.</span>
                                        </div>
                                    </div>
                                </div>
                                <div style="font-family: EmbArial; margin-left: 20px;">
                                    <span style="margin-left: -8px;font-family: EmbArialBold;">ii.</span>
                                    <div style="margin-top: -7px; padding-left: -10px;">
                                        <span style="margin-left: 1px;">Anda akan bertanggungjawab ke atas transaksi
                                            tanpa kebenaran bagi
                                            transaksi dengan kad</span>
                                        <span style="display: inline-block; margin-right: 20px;">
                                            yang memerlukan pengesahan tandatangan atau penggunaan kad ciri tanpa
                                            sentuh, jika anda:
                                        </span>
                                    </div>
                                    <div style="display: flex; align-items: flex-start;">
                                        <span style="font-size: 10px; margin-right: 9px;">&#8226;</span>
                                        <span>bertindak melakukan penipuan;</span>
                                    </div>
                                    <div style="display: flex; align-items: flex-start;">
                                        <span style="font-size: 10px; margin-right: 9px;">&#8226;</span>
                                        <span>lewat memaklumkan kepada Bank Islam sebaik sahaja selepas mendapati
                                            kehilangan</span>
                                        <span style="margin-left: 15px;">atau penggunaan Kad Kredit-i anda tanpa</span>
                                    </div>
                                </div>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <div style="margin: 5px; font-family: EmbArialBold; text-align: left;" class="normal-font">
                                MAKLUMAT<br />KADAR CAJ<br />KEUNTUNGAN</div>
                        </th>
                        <th style=" margin: 5px;">
                            <p style="padding-left: 5px;margin-bottom: 30px;" class="normal-font">Transaksi Runcit:</p>
                            <div style="margin-top: 15px; margin: 5px;">
                                <table class="normal-font custom-table" style="border-spacing: 3px;">
                                    <tr>
                                        <td style="padding: 4px;"> <span
                                                style="font-family: EmbArialBold;margin-left: 3px;"
                                                class="normal-font">13.5%</span>
                                            <span style="font-family: EmbArial;margin-left: 3px;">setahun:</span>
                                        </td>
                                        <td style="font-family: EmbArial; padding-left: 7px; padding-right: 7px;"
                                            class="normal-font">Dengan
                                            pelunasan bayaran minimum bagi 12 bulan berturut-turut</td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 4px;"> <span
                                                style="font-family: EmbArialBold; margin-left: 3px;"
                                                class="normal-font">16.0% </span>
                                            <span style="font-family: EmbArial; margin-left: 3px;">setahun:</span>
                                        </td>
                                        <td style="font-family: EmbArial; padding-left: 7px; padding-right: 7px;"
                                            class="normal-font">Dengan
                                            pelunasan bayaran minimum bagi 10 atau 11 kali bayaran untuk 12 bulan
                                            terakhir</td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 4px;"> <span
                                                style="font-family: EmbArialBold; margin-left: 3px;"
                                                class="normal-font">17.5% </span>
                                            <span style="font-family: EmbArial; margin-left: 3px;">setahun:</span>
                                        </td>
                                        <td style="font-family: EmbArial; padding-left: 7px; padding-right: 7px;"
                                            class="normal-font">
                                            Dengan perlunasan minimum bagi 9 kali atau kurang untuk 12 bulan terakhir
                                        </td>
                                    </tr>
                                </table>
                                <p class="normal-font">Formula yang digunakan untuk pengiraan Caj Keuntungan adalah
                                    seperti berikut:</p>
                                <p style="font-weight: normal;font-family: EmbArialItalicBold;">[(Baki–Pembayaran) x Caj
                                    Keuntungan
                                    Tahunan] x [(Jumlah hari-20) / 365]</p>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <div style="margin-left: 5px;font-family:EmbArialBold ;" class="normal-font">FI DAN CAJ
                            </div>
                        </th>
                        <th>
                            <div style="margin-left: 5px;">
                                <p style="font-family: EmbArialBold;" class="normal-font">
                                    <span>i.</span>
                                    <span style="margin-left: 8px;">Yuran Tahunan</span><br />
                                <div style="display: inline-block; margin-top: -10px;">
                                    <span
                                        style="font-size: 10px; margin-left: 15px; vertical-align: middle;">&#8226;</span>
                                    <span
                                        style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                                        RM777 (waived)</span>
                                </div>
                                </p>
                                <p style="font-family: EmbArialBold;" class="normal-font">
                                    <span>ii.</span>
                                    <span style="margin-left: 8px;">Permintaan Penyata Tambahan</span><br />
                                <div style="display: inline-block; margin-top: -10px;">
                                    <span
                                        style="font-size: 10px; margin-left: 15px; vertical-align: middle;">&#8226;</span>
                                    <span
                                        style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                                        RM5.00 bagi setiap salinan penyata</span>
                                </div>
                                </p>
                                <p style="font-family: EmbArialBold;padding-top: 2px;" class="normal-font">
                                    <span>iii.</span>
                                    <span style="margin-left: 6px;">Permintaan Draf Jualan</span><br />
                                <div style="display: inline-block; margin-top: -10px;">
                                    <span
                                        style="font-size: 10px; margin-left: 15px; vertical-align: middle;">&#8226;</span>
                                    <span
                                        style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                                        RM5.00
                                        bagi setiap salinan Draf Jualan</span>
                                </div><br />
                                <div style="display: inline-block; margin-top: -10px;">
                                    <span
                                        style="font-size: 10px; margin-left: 15px; vertical-align: middle;">&#8226;</span>
                                    <span
                                        style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                                        RM15.00 bagi setiap Draf Jualan Asal</span>
                                </div>
                                </p>
                                <p style="font-family: EmbArialBold;padding-top: 2px;" class="normal-font">
                                    <span>iv.</span><span style="margin-left: 9px;">Caj Penggantian Kad</span><br />
                                <div style="display: inline-block; margin-top: -4px;">
                                    <span
                                        style="font-size: 10px; margin-left: 17px; vertical-align: middle;">&#8226;</span>
                                    <span
                                        style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">
                                        RM50 untuk semua jenis kad</span>
                                </div>
                                </p>
                                <div class="normal-font" style="margin-top: 10px;padding-top: 2px;">
                                    <span style="margin-left: 1px; font-family: EmbArialBold; ">v.</span>
                                    <span style="padding-left: 5px; font-family: EmbArialBold;">Transaksi Luar
                                        Negara</span>
                                    <div style="margin-left: 20px; margin-top: 10px;">
                                        <div style="display: inline-block; margin-top: -10px;padding-right: 5px;">
                                            <span
                                                style="font-size: 10px; margin-left: -5px; vertical-align: middle;">&#8226;</span>
                                            <span
                                                style="margin-left: 3px; font-family: EmbArial; display: inline; vertical-align: middle;text-align: justify;">Kadar
                                                pertukaran wang asing adalah ditentukan oleh Visa <span
                                                    style="margin-left: 7px;">Worldwide pada
                                                    tarikh penerimaan dan/atau
                                                    pemprosessan</span><span style="margin-left: 7px;">transaksi oleh
                                                    Bank Islam.</span></span>
                                        </div>
                                    </div>
                                </div>
                                <p style="font-family: EmbArialBold;padding-top: 2px;" class="normal-font">
                                    <span>vi.</span>
                                    <span style="margin-left: 5px;">Cukai Perkhidmatan</span><br />
                                <div style="display: inline-block; margin-top: -10px;">
                                    <span
                                        style="font-size: 10px; margin-left: 15px; vertical-align: middle;">&#8226;</span>
                                    <span
                                        style="margin-left: 10px; font-family: EmbArial; display: inline; vertical-align: middle; margin-top: 5px;">
                                        RM25 untuk setiap kad</span>
                                </div>
                                </p>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <div style="margin-left: 5px;font-family: EmbArialBold; text-align: left;"
                                class="normal-font">
                                CAJ TETAP
                            </div>
                        </th>
                        <th>
                            <div style="padding: 10px 5px;">
                                <span class="normal-font">Caj Gantirugi Atas Kelewatan Pembayaran (Selaras Dengan Garis
                                    Panduan Kad
                                    Kredit-i BNM)</span><br />
                                <div style="padding-left: 5px;">
                                    <span
                                        style="font-size: 10px; margin-left: -5px; vertical-align: middle;">&#8226;</span>
                                    <span
                                        style="margin-left: 3px; font-family: EmbArial; display: inline; text-align: justify;"
                                        class="normal-font">1% ke atas jumlah baki semasa atau minimum RM5.00,
                                        mana-mana<span style="margin-left: 5px;">yang lebih tinggi, tertakluk pada
                                            maksimum RM 50.00</span></span>
                                </div>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <div style="margin-left: 5px;font-family: EmbArialBold; text-align: left;"
                                class="normal-font">
                                PILIHAN CARA PEMBAYARAN
                            </div>
                        </th>
                        <th>
                            <div style="margin-left: 5px;">
                                <p style="font-family: EmbArialBold;padding-top: 2px;" class="normal-font"><span
                                        style="font-size: 10px;">&#8226;</span>
                                    <span style="margin-left: 10px;">Wang Tunai -</span> <span
                                        style="font-family: EmbArial;">
                                        Melalui kaunter atau Mesin Deposit Tunai di cawangan</span><br />
                                    <span style="margin-left: 17px; font-family: EmbArial;">
                                        -cawangan Bank Islam.</span>
                                </p>
                                <div style="margin-right: 5px;">
                                    <div style="font-family: EmbArialBold;" class="normal-font">
                                        <span style="font-size: 10px;">&#8226;</span>
                                        <span style="margin-left: 7px;">Cek* -</span>
                                        <span style="font-family: EmbArial;">Atas nama “Pusat Kad Bank Islam untuk <span
                                                style="font-family: EmbArialItalic;">&lt;nama penuh</span> <span
                                                style="padding-left: 15px;"><span
                                                    style="font-family: EmbArialItalic;padding-left: 15px;">Syarikat&gt;"</span>.
                                                Sila nyatakan nombor-nombor kad anda dibelakang
                                                cek</span> <span style="padding-left: 15px;">serta amaun pembayaran bagi
                                                setiap kad. Poskan cek
                                                tersebut ke</span><span style="padding-left: 15px;">Pusat Kad Bank
                                                Islam, Bank Islam Malaysia
                                                Berhad, P.O.Box</span><span style="padding-left: 15px;">13296,50806
                                                Kuala Lumpur atau
                                                masukkannya di mesin cek deposit</span><span
                                                style="padding-left: 15px;">di mana-mana cawangan
                                                Bank Islam.</span></span>
                                    </div>
                                    <p style="font-family: EmbArialBold;padding-top: 2px;" class="normal-font"><span
                                            style="font-size: 10px;">&#8226;</span>
                                        <span style="margin-left: 8px;">Arahan Tetap –</span> <span
                                            style="font-family: EmbArial;text-align: justify;">
                                            Melalui akaun Bank Islam anda. Sila pastikan baki di <span
                                                style="padding-left: 15px;">dalam akaun
                                                adalah mencukupi.</span>
                                        </span>
                                    </p>
                                    <p style="font-family: EmbArialBold;padding-top: 2px;" class="normal-font"><span
                                            style="font-size: 10px;">&#8226;</span>
                                        <span style="margin-left: 8px;">Pindahan Wang </span><span
                                            style="font-family: EmbArial;">melalui</span> <span>Perbankan Internet -GIRO
                                            antara Bank <span style="padding-left: 15px;">(IBG)/Pindahan Segera
                                                (IBFT)</span>
                                        </span>
                                    </p>
                                    <p class="fontItalic"><span class="fontItalicBold"> *Peringatan:</span> Sila beri
                                        masa yang mencukupi
                                        untuk proses penghantaran serta penjelasan cek anda dan jangan kirimkan wang
                                        tunai melalui pos.</p>
                                </div>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <th style="font-family: EmbArialBold;" class="normal-font" colspan="2">
                            <div style="font-family: EmbArial; margin-top: 5px;">
                                <ul style="list-style-position: inside; padding: 0; margin: 0; line-height: 1.5;">
                                    <li> <span style="margin-left: 15px;">Untuk perkara yang berkaitan dengan Kad
                                            Kredit-i Bisnes Bank
                                            Islam anda, sila hubungi:</span></li>
                                </ul>
                            </div>
                            <div style="font-family: EmbArial; margin-left: 25px;" class="normal-font">
                                <span style="font-family: EmbArialBold;">Pusat Kad Bank Islam,</span><br />
                                <span style="font-family: EmbArialBold;">Aras 24, Menara Bank Islam, No 22 Jalan
                                    Perak,</span><br />
                                <span style="font-family: EmbArialBold;">50450 Kuala Lumpur</span><br />
                                <span>Emel: <u id="linkColor">bicc.customer.service@bankislam.com.my
                                    </u></span><br /><br />
                                <span>Tel.: 03-26 900 900</span><span style="margin-left: 20px;">Fax: 03-2726
                                    7606</span>
                            </div>
                            <div style="font-family: EmbArial; margin-top: 7px;">
                                <ul style="list-style-position: inside; padding: 0; margin: 0; line-height: 1.5;">
                                    <li> <span style="margin-left: 12px;">Untuk maklumat perbankan umum, layarilah <span
                                                style="text-decoration: underline;"
                                                id="linkColor">www.bankinginfo.com.my</span></span></li>
                                </ul>
                            </div>
                            <p style="font-family: EmbArial; margin-top: 7px;">
                            <ul style="list-style-position: inside; padding: 0; margin: 0; line-height: 1.5;">
                                <li> <span style="margin-left: 12px;">Untuk pertanyaan mengenai sektor kewangan, sila
                                        hubungi Bank
                                        Negara Malaysia melalui:</span></li>
                            </ul>
                            </p>
                            <p style="font-family: EmbArial; margin-left: 22px;" class="normal-font">
                                <span style="font-family: EmbArialBold;">Pusat Perkhidmatan Pelanggan BNMLINK,Tingkat
                                    Bawah,
                                </span><br />
                                <span style="font-family: EmbArialBold;">Blok D, Jalan Dato’ Onn, 50480 Kuala
                                    Lumpur</span><br />
                                <span>Emel: <span style="text-decoration: underline;" id="linkColor">
                                        bnmtelelink@bnm.gov.my</span></span><br />
                                <span>Tel.: 1-300-88-5465 (Isnin – Jumaat : 9:00am– 5:00pm)</span><br />
                                <span>Fax: 03-2174 1515</span>
                            </p>
                        </th>
                    </tr>
                </table>
                <div class="page-info" style="text-align: right;margin-top: 200px;font-size:11px;padding-right: 20px;">
                </div>
            </div>
    </#if>
</body>

</html>