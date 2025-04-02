<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>BICC Statements STMT3</title>
  <style>
    /* Add your CSS styles here */
    body {
      font-family: "EmbArial";
      font-size: 11px;
    }

    @page {
      size: A4;
      font-family: EmbArial;
      margin-top: 31mm;
      /* margin-bottom: 65mm; */

      @bottom-right {
        content: "Page " counter(page) " / " counter(pages);
        font-size: 10px;
        text-align: right;
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


    footer {
      position: running(footer);
    }

    /* Header */
    .header {
      overflow: hidden;
    }

    header {
      text-align: left;
      position: running(header);
      font-size: 10px;
      font-family: EmbArial;
    }

    .logo-left {
      float: left;
    }

    .logo-right {
      float: right;
    }

    .logo-left img {
      max-width: 230px;
      height: auto;
    }

    .logo-right img {
      max-width: 50px;
      height: auto;
    }

    .address {
      font-size: 9px;
      margin-top: 10px;
      float: left;
    }

    .name {
      font-size: 14px;
      font-weight: bold;
      text-align: right;
      float: right;
      margin-top: 10px;
    }

    .subname {
      font-style: italic;
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

    /* Section 01 : Card*/
    .section1 {
      clear: both;
      /* Ensure this comes below the floated elements */
      font-size: 10px;
    }

    .card-i {
      border: 1px solid black;
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
      /* Adjust for inline-block spacing issue */
    }

    .card-i-table-child-head:last-child {
      margin-right: 0;
    }

    .card-i-table-child-body {
      display: inline-block;
      width: 32%;
      border-bottom: 1px solid;
      margin-right: 3px;
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
      padding: 8px;
      font-weight: normal;
      box-sizing: border-box;
      font-family: EmbArialBold;
    }

    .balance-table-body {
      border: 1px solid;
      text-align: center;
      padding: 8px;
      box-sizing: border-box;
    }

    /* Section 02 : Add */
    .add-table {
      margin-top: 10px;
      width: 100%;
      border-collapse: collapse;
      table-layout: fixed;
      vertical-align: top;
      word-wrap: break-word;
    }

    .add-table-header {
      text-align: center;
      font-weight: normal;
      font-family: EmbArialBold;
      border: 1px solid;
      box-sizing: border-box;
      padding: 5px;
    }

    .add-table-body {
      border: 1px solid;
      box-sizing: border-box;
      font-size: 10px;
      padding: 2px;
      vertical-align: top;
      word-wrap: break-word;
    }

    .text-center {
      text-align: center;
    }

    .add-note {
      font-size: 10px;
      margin-top: 3px;
    }

    .add-bottom-table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 3px;
      table-layout: fixed;
      vertical-align: top;
      word-wrap: break-word;
    }

    .add-bottom-table-last-column {
      border: 1px solid;
      box-sizing: border-box;
      font-size: 10px;
      padding: 3px;
      text-align: right;
      vertical-align: top;
      word-wrap: break-word;
    }

    /* Section 03 : Notice */
    .notice {
      /* margin-top: 20px; */
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
      padding: 4px 8px;
      /* white-space: no-wrap; */
      word-wrap: break-word;
      /* width: 500px; */
    }

    .notice-bottom {
      padding: 4px 8px;
      font-size: 11px;
      font-weight: normal;
      font-family: EmbArialBold;
      border: 1px solid;
      margin-top: 5px;
    }

    /* Section 04 : Payment Advice */
    .payment-advice {
      position: relative;
    }

    .payment-advice-head {
      padding: 4px 8px;
      font-weight: bold;
      border: 1px solid;
    }

    .payment-advice-head-span {
      font-style: italic;
    }

    .payment-advice-head-1 {
      margin-top: 20px;
    }

    .payment-advice-head-1-span {
      padding: 4px 8px;
      font-weight: normal;
      font-family: EmbArialBold;
      border: 1px solid;
    }

    .logo-right-advice {
      float: right;
    }

    .logo-right-advice img {
      max-width: 50px;
      height: auto;
    }

    .payment-bank-logo {
      position: absolute;
      right: 70px;
      top: 2px;
    }

    .payment-container {
      width: 100%;
      margin-top: 20px;
      font-size: 10px;
      text-align: start;
    }

    .payment-column {
      display: inline-block;
      width: 49.7%;
      box-sizing: border-box;
    }

    .pay-box-column-key {
      width: 62%;
    }

    .pay-box-column-value {
      border: 1px solid #000000;
      width: 36%;
      text-align: right;
      padding: 1px 10px;
    }

    .page-break {
      page-break-before: always;
    }

    /* 
    table,
    th,
    td {
      border: 1px solid #000000;
      ;
      border-collapse: collapse;
    } */

    .custom-table,
    .custom-table th,
    .custom-table td {
      border: 1px solid #000000;
      border-collapse: collapse;
    }

    .td-style {
      border: 1px solid #000000;
      ;

    }

    .normal-font {
      font-weight: normal;
    }

    .justify {
      text-align: justify;
    }

    .scissors-wrapper {
      align-items: center;
      justify-content: center;
      width: 100%;
      margin-top: 5px;

    }

    .scissors-wrapper svg {
      width: 15px;
      height: 15px;
      margin-right: 10px;
    }

    .dashed-line {
      flex-grow: 1;
      border-top: 1px dashed black;
      margin-top: -10px;
    }

    #table-body-none {
      border: none !important;
    }
  </style>
</head>

<body class="justify" style="line-height: 1.1;margin-top: 30px;">
  <header style="margin-top: 15px;padding-left: 5px;">
    <div class=" header">
      <!-- Left side -->
      <div class="logo-left">
        <svg version="1.0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800.000000 185.000000"
          preserveAspectRatio="xMidYMid meet" style="
        
            width: 216px;
            height: 50px;
            text-align: left;

        
            ">
          <g transform="translate(0.000000,185.000000) scale(0.100000,-0.100000)" fill="#5F6062" stroke="none">
            <path fill="#C61846" d="M4713 1829 c-203 -24 -411 -83 -579 -165 -393 -191 -588 -502 -520
  			 -825 54 -252 276 -491 606 -648 586 -280 1403 -245 1883 81 113 77 250 221
  			 291 308 9 19 11 27 4 16 -106 -156 -226 -259 -413 -351 -237 -118 -477 -169
  			 -790 -168 -468 2 -883 146 -1159 404 -247 231 -316 530 -180 789 127 243 430
  			 437 804 516 150 31 336 47 480 41 81 -4 99 -3 60 3 -71 10 -394 10 -487 -1z" />
            <path d="M1105 1408 c-7 -18 -85 -212 -174 -432 -88 -219 -168 -409 -176 -423
  			 -17 -26 -71 -53 -105 -53 -11 0 -20 -4 -20 -9 0 -12 309 -11 316 0 3 5 -10 9
  			 -29 9 -70 0 -71 32 -8 195 l39 100 150 3 149 3 53 -142 c49 -131 52 -143 36
  			 -154 -15 -12 -15 -13 0 -19 25 -10 553 -5 560 5 3 5 -11 9 -30 9 -22 0 -45 9
  			 -62 23 l-27 24 -8 189 c-4 104 -8 244 -8 311 l-1 122 52 -57 c141 -155 635
  			 -642 650 -642 16 0 18 13 19 128 0 70 4 268 7 440 l7 314 24 19 c13 10 36 19
  			 52 19 16 0 29 5 29 10 0 6 -62 10 -165 10 -103 0 -165 -4 -165 -10 0 -5 18
  			 -10 39 -10 23 0 48 -8 62 -19 23 -18 23 -21 32 -331 4 -172 5 -315 2 -318 -3
  			 -4 -10 -1 -14 6 -4 7 -115 122 -247 255 -131 133 -284 288 -338 345 -54 56
  			 -103 102 -107 102 -15 0 -18 -63 -23 -466 -3 -220 -10 -412 -15 -426 -13 -35
  			 -53 -43 -99 -21 -51 25 -77 78 -251 510 -82 204 -154 381 -161 392 -15 30 -29
  			 26 -45 -11z m54 -371 c30 -83 56 -158 59 -164 3 -10 -24 -13 -117 -13 -67 0
  			 -121 3 -121 8 -1 12 115 322 120 322 3 0 29 -69 59 -153z" />
            <path d="M6286 1413 c-7 -16 -84 -203 -170 -417 -86 -213 -166 -406 -177 -428
  			 -13 -26 -32 -44 -54 -54 -46 -19 -69 -18 -61 2 12 32 19 154 9 154 -6 0 -13
  			 -14 -17 -31 -15 -76 -94 -108 -232 -93 -97 10 -110 25 -119 145 -4 52 -5 221
  			 -3 375 3 260 4 284 22 303 13 14 31 21 58 21 21 0 38 5 38 10 0 6 -72 10 -195
  			 10 -123 0 -195 -4 -195 -10 0 -5 13 -10 30 -10 48 0 79 -20 85 -54 4 -17 5
  			 -204 3 -414 l-3 -384 -24 -19 c-13 -10 -36 -19 -53 -19 -16 0 -27 -4 -24 -9 8
  			 -12 916 -13 916 -1 0 6 -9 10 -21 10 -35 0 -59 19 -59 47 0 15 19 77 42 140
  			 l43 113 150 0 150 0 49 -133 c27 -72 51 -138 53 -144 3 -7 -5 -17 -18 -21
  			 l-23 -9 26 -6 c37 -10 508 -6 508 3 0 4 -17 10 -37 14 -58 9 -68 19 -65 69 1
  			 43 60 502 66 522 2 6 27 -42 56 -105 63 -134 237 -479 252 -497 6 -7 14 -10
  			 19 -7 9 5 182 356 264 536 22 48 43 87 46 88 3 0 18 -91 33 -202 15 -112 31
  			 -227 37 -257 13 -77 12 -141 -3 -141 -8 0 -8 -3 -2 -9 14 -15 300 -26 308 -12
  			 5 7 -1 11 -16 11 -51 0 -98 21 -113 50 -14 27 -41 196 -112 687 -29 198 -34
  			 217 -56 193 -8 -8 -85 -163 -172 -345 -86 -181 -163 -341 -170 -355 -12 -24
  			 -21 -10 -159 275 -181 374 -208 427 -223 432 -6 2 -14 -4 -17 -14 -3 -10 -33
  			 -198 -66 -418 -33 -220 -65 -417 -70 -437 -26 -92 -100 -76 -155 32 -13 25
  			 -85 198 -160 385 -160 398 -185 455 -196 455 -5 0 -15 -12 -23 -27z m53 -388
  			 c28 -77 51 -145 51 -152 0 -10 -29 -13 -121 -13 -111 0 -121 1 -114 18 4 9 32
  			 84 63 165 34 92 58 143 63 135 4 -8 30 -76 58 -153z" />
            <path d="M4897 1420 c-229 -58 -266 -295 -74 -464 34 -30 87 -74 117 -98 84
  			 -67 115 -117 115 -186 0 -95 -56 -146 -160 -147 -107 0 -173 56 -190 163 -4
  			 23 -10 42 -14 42 -10 0 -21 -86 -21 -162 0 -54 2 -58 31 -73 40 -21 160 -34
  			 235 -25 162 20 268 145 249 295 -12 100 -58 162 -213 286 -126 101 -152 134
  			 -152 197 0 34 6 49 34 79 31 34 39 37 98 41 47 3 74 0 96 -12 35 -18 82 -75
  			 82 -99 0 -23 11 -47 21 -47 5 0 9 43 9 95 0 94 0 96 -26 105 -38 15 -193 21
  			 -237 10z" />
            <path d="M0 1400 c0 -5 18 -10 39 -10 23 0 48 -8 62 -19 l24 -19 3 -324 c2
  			 -177 -1 -363 -6 -412 -11 -98 -23 -116 -74 -116 -15 0 -28 -4 -28 -9 0 -6 99
  			 -9 238 -8 219 2 241 4 283 23 149 69 210 230 135 358 -30 52 -71 88 -138 122
  			 l-49 25 49 54 c124 136 81 298 -89 334 -64 14 -449 15 -449 1z m416 -71 c80
  			 -73 85 -246 10 -294 -21 -13 -74 -20 -128 -17 l-28 2 0 171 0 171 60 -4 c46
  			 -3 66 -10 86 -29z m4 -384 c134 -69 186 -304 85 -380 -68 -53 -202 -40 -225
  			 20 -12 30 -14 368 -2 379 10 12 109 -2 142 -19z" />
            <path d="M2630 1400 c0 -5 18 -10 40 -10 58 0 80 -26 80 -92 3 -436 -1 -727
  			 -11 -755 -9 -28 -16 -34 -50 -39 -85 -14 -30 -22 146 -22 182 0 243 9 145 22
  			 -37 5 -53 12 -62 29 -14 26 -25 417 -12 417 5 0 15 -9 21 -19 22 -36 269 -315
  			 320 -362 80 -75 101 -82 246 -87 134 -5 162 5 78 27 -94 24 -178 96 -429 370
  			 l-122 133 33 37 c44 48 266 264 297 289 35 27 97 52 131 52 16 0 29 5 29 10 0
  			 6 -58 10 -155 10 -97 0 -155 -4 -155 -10 0 -5 7 -10 15 -10 26 0 16 -43 -21
  			 -90 -35 -45 -283 -300 -292 -300 -7 0 4 344 12 363 5 10 24 20 47 23 88 14 28
  			 24 -146 24 -117 0 -185 -4 -185 -10z" />
            <path d="M4270 1400 c0 -5 13 -10 29 -10 16 0 39 -9 52 -19 l24 -19 0 -399 c0
  			 -305 -3 -403 -13 -420 -8 -15 -26 -25 -52 -29 -87 -14 -31 -22 155 -22 186 -1
  			 263 10 153 20 -92 9 -88 -11 -88 449 0 386 1 400 20 419 11 11 33 20 50 20 17
  			 0 30 5 30 10 0 6 -67 10 -180 10 -113 0 -180 -4 -180 -10z" />
          </g>
        </svg>
      </div>

      <!-- Right side -->
      <div class="logo-right" style="margin-top: -6px; margin-right: -10px;">
        <svg version="1.1" viewBox="0 0 1964 2048" width="494" height="515" xmlns="http://www.w3.org/2000/svg" style="
                             width: 80px;
                    height: 60px;
                    display: inline-block;
                    vertical-align: middle;
                    margin-top: 10px;
                    margin-left: -40px;
            ">
          <path transform="translate(0)" d="m0 0h1964v2048h-1964z" fill="#FFFFFF" />
          <path transform="translate(1435,115)"
            d="m0 0h54l31 2 30 3 36 6 31 7 27 8 20 7 24 10 27 13 20 12 19 13 10 8 13 11 14 13 7 8 10 12 12 17 10 18 10 21 10 30 6 26 3 21 1 12v43l-3 28-5 28-6 25-7 25-11 31-8 20-8 18-14 29-10 19-13 22-15 24-8 12-13 19-14 19-13 17-10 13-12 14-8 10-24 28-12 13-33 36-43 43h-2v2l-8 7-8 8-8 7-17 16-11 10-11 9-12 11-11 9-14 12-14 11-13 11-13 10-14 11-21 16-14 10-18 13-17 12-45 30-19 12-21 13-15 9-26 15-25 14-26 14-27 14-34 17-33 15-44 19-35 14-29 11-34 12-51 17-44 13-34 9-37 9-44 9-49 8-47 5-44 3h-64l-49-4-37-5-35-7-30-8-30-10-24-10-21-10-21-12-22-15-14-11-10-9-13-12-11-12-10-13-12-18-11-20-8-19-6-18-6-25-4-24-2-24v-28l2-25 5-33 7-30 8-27 12-33 10-23 14-29 13-25 12-20 13-21 20-30 13-18 10-14 11-14 13-16 11-14 12-14 9-11 11-13 11-12 9-11 10-10 7-8 9-9 7-8 38-38 8-7 10-10 8-7 15-14 8-7 11-10 11-9 9-8 10-8 14-12 10-8 16-13 13-10 28-21 18-13 14-10 10-7 35-24 22-14 14-9 26-16 23-13 24-14 24-13 38-20 23-12 23-11 37-17 30-13 39-16 40-15 40-14 48-15 47-13 46-11 50-10 49-8 52-6 29-2z"
            fill="#283F83" />
          <path transform="translate(1109,306)"
            d="m0 0h23l29 2 28 4 28 6 20 6 21 9 25 13 15 10 13 10 14 12 7 7 7 8 11 15 9 15 8 17 6 18 4 18 2 15v25l-3 21-6 25-9 26-14 29-11 19-12 18-11 15-16 20-24 26-22 22-8 7-12 11-11 9-17 14-16 12-18 13-20 14-24 15-22 13-19 10-8 4v173l-2 26-3 18-5 20-7 21-9 20-11 21-14 21-10 13-12 14-12 13-8 6-7 1-6-4-1-4 7-21 4-20 3-25 1-16 1-339 1-78 3-34 6-32 7-25 8-21 8-17 13-21 13-16 13-13 17-12 12-6 3-1h7l2 3-2 11-8 24-5 23-5 37-2 25-1 200 12-8 42-30 13-10 14-11 11-9 13-11 14-12 7-7 8-7 17-16 14-15 11-12 9-11 13-16 13-19 10-15 13-23 9-19 9-25 5-19 3-16 1-8v-28l-3-21-5-15-9-17-12-16-9-10-10-10-13-10-18-11-16-8-17-7-18-6-26-6-21-3-22-2-18-1h-29l-31 2-33 4-23 4-38 12-31 11-30 13-25 12-22 12-17 10-23 15-17 12-14 11-10 8-14 12-12 11-8 7-12 12-7 8-10 11-9 11-10 12-10 13-13 19-10 15-10 17-9 16-12 23-9 20-9 23-8 25-7 30-4 25-1 15v26l2 21 4 20 8 24 10 21 11 17 13 16 12 12 19 14 16 9 15 7 17 5 9 1h23l16-3 19-7 11-6 9-6 3-5-2-7-7-6-14-6-10-3-11-7-11-9-8-8-7-11-4-9-2-9v-12l4-16 7-14 7-9 12-14 11-12 3-4h2l2-4 32-32 8-7 10-9 14-11 14-9 13-5 14-3h22l10 2 9 4 11 7 8 9 9 17 3 10v35l-3 20-6 22-6 16-9 20-12 21-13 19-11 14-9 11-7 7-7 8-16 16-8 7-14 12-14 11-16 12-27 18-22 13-16 8-17 8-25 9-26 6-8 1h-29l-15-3-16-6-15-9-14-13-11-14-8-13-9-19-7-19-7-25-5-26-3-26-1-12v-31l3-36 6-35 7-30 11-35 17-45 11-24 8-17 12-22 13-22 16-24 11-16 9-12 11-14 11-13 9-11 15-16 16-17 7-7 8-7 10-10 8-7 13-11 14-11 13-10 17-12 15-10 19-12 21-12 28-15 32-15 27-11 34-12 29-9 30-7 36-6 18-2z"
            fill="#FFFFFF" />
          <path transform="translate(1435,115)"
            d="m0 0h54l31 2 30 3 36 6 31 7 27 8 20 7 24 10 27 13 20 12 19 13 10 8 13 11 14 13 7 8 10 12 12 17 10 18 10 21 10 30 6 26 3 21 1 12v43l-3 28-5 28-6 25-7 25-11 31-8 20-8 18-14 29-10 19-13 22-15 24-8 12-13 19-14 19-13 17-10 13-12 14-8 10-24 28-12 13-33 36-43 43h-2v2l-8 7-8 8-8 7-17 16-11 10-11 9-12 11-11 9-14 12-14 11-13 11-13 10-14 11-21 16-14 10-18 13-17 12-45 30-19 12-21 13-15 9-26 15-25 14-26 14-27 14-34 17-33 15-44 19-35 14-29 11-34 12-51 17-44 13-34 9-37 9-44 9-49 8-47 5-44 3h-64l-49-4-37-5-35-7-30-8-30-10-24-10-21-10-21-12-22-15-14-11-10-9-13-12-11-12-10-13-12-18-11-20-8-19-6-18-6-25-4-24-2-24v-28l2-25 5-33 7-30 8-27 12-33 10-23 14-29 13-25 12-20 13-21 20-30 13-18 10-14 11-14 13-16 11-14 12-14 9-11 11-13 11-12 9-11 10-10 7-8 9-9 7-8 38-38 8-7 10-10 8-7 15-14 8-7 11-10 11-9 9-8 10-8 14-12 10-8 16-13 13-10 28-21 18-13 14-10 10-7 35-24 22-14 14-9 26-16 23-13 24-14 24-13 38-20 23-12 23-11 37-17 30-13 39-16 40-15 40-14 48-15 47-13 46-11 50-10 49-8 52-6 29-2zm-54 43-44 3-44 5-40 6-60 12-54 13-40 11-39 12-48 16-40 15-30 12-42 18-35 16-35 17-24 12-22 12-24 13-23 13-29 17-23 14-23 15-16 10-30 20-20 14-14 10-18 13-17 13-21 16-16 13-13 11-11 9-11 10-8 7-12 11-10 9-13 12-41 41-7 8-11 12-7 8-9 10-9 11-11 13-10 13-16 21-12 17-22 33-12 20-12 21-14 27-13 28-11 27-8 22-9 30-8 33-5 32-2 21v45l4 31 6 26 7 21 9 20 11 20 12 17 8 10 11 13 20 20 14 11 18 13 18 11 24 13 31 13 33 11 36 9 34 6 33 4 40 3h60l47-3 40-4 44-6 40-7 47-10 47-12 51-15 36-12 34-12 34-13 29-12 49-21 34-16 25-12 42-21 44-24 24-14 21-12 16-10 20-12 26-17 24-16 15-11 14-10 18-13 21-16 13-10 20-16 11-9 26-22 10-9 8-7 26-24 7-7 8-7 19-19 7-8 9-9 7-8 12-13 9-11 9-10 22-28 14-19 14-20 8-12 11-17 12-20 13-23 15-29 11-23 13-31 7-20 7-21 9-36 5-29 2-18 1-15v-28l-2-24-4-25-6-25-8-23-9-20-11-19-12-16-8-10-9-10-18-18-11-9-13-10-15-10-17-10-23-12-32-13-28-9-26-7-29-6-31-5-42-4-18-1z"
            fill="#283F83" />
          <path transform="translate(1381,158)"
            d="m0 0h66l31 2 35 4 31 5 35 8 30 9 20 7 26 11 25 13 22 14 15 11 11 9 12 11 17 17 11 14 13 18 12 22 10 25 7 23 6 31 2 17 1 15v28l-2 25-5 32-7 30-8 26-7 21-12 29-12 26-13 26-13 23-12 21-13 20-10 15-12 17-13 18-14 18-9 11-11 13-12 14-14 15-9 10-8 8-7 8-19 19-8 7-9 9-8 7-16 15-11 9-11 10-11 9-13 11-14 11-15 12-32 24-36 26-22 15-26 17-19 12-40 24-26 15-27 15-34 18-50 25-28 13-29 13-38 16-40 16-44 16-40 13-22 7-38 11-53 13-44 9-50 8-51 6-44 3-16 1h-60l-40-3-33-4-34-6-36-9-36-12-32-14-24-13-21-14-12-9-16-13-21-21-9-11-12-16-11-18-10-19-9-23-7-26-4-23-2-18v-45l3-29 5-28 7-29 10-33 13-34 12-27 14-29 13-24 12-20 12-19 15-22 13-18 16-21 11-14 11-13 9-11 13-14 9-11 9-9 7-8 43-43 8-7 15-14 8-7 15-13 14-12 11-9 16-13 21-16 20-15 18-13 17-12 19-13 15-10 23-15 19-12 21-13 25-15 28-16 29-16 42-22 22-11 23-11 35-16 45-19 39-15 36-13 48-16 41-12 38-10 47-11 55-11 40-6 44-5zm-10 28-43 3-37 4-46 7-46 9-38 9-48 13-42 13-44 15-40 15-34 14-30 13-48 22-16 8-39 20-23 13-22 12-27 16-20 12-38 24-34 23-23 16-38 28-15 12-14 11-16 13-13 11-11 9-12 11-8 7-10 9-8 7-15 14-12 12-8 7-19 19-7 8-9 9-7 8-9 10v2h-2l-7 8-12 14-9 11-13 16-13 17-12 16-7 10-9 13-10 15-12 19-15 26-14 26-15 32-13 33-9 27-8 30-5 26-3 21-1 11v47l3 24 6 27 9 26 13 27 13 20 11 14 9 10 17 17 14 11 17 12 20 12 17 9 28 12 33 11 32 8 33 6 35 4 28 2h71l31-2 39-4 42-6 44-8 44-10 42-11 34-10 55-18 41-15 42-17 30-13 24-11 28-13 42-21 22-12 24-13 53-31 41-26 34-23 19-13 38-28 14-11 18-14 22-18 13-11 14-12 10-9 11-9 12-12 8-7 10-10 8-7 23-23 7-8 13-13 7-8 13-14 8-10 10-11 11-14 10-12 24-32 13-19 12-18 12-19 9-15 12-22 12-23 11-24 11-27 12-36 8-31 5-27 3-27v-45l-3-26-5-23-6-20-8-20-10-19-14-21-10-13-15-16-7-7-11-9-13-10-15-10-19-11-22-11-25-10-24-8-31-8-31-6-31-4-38-3z"
            fill="#FFFFFF" />
          <path transform="translate(736,1508)"
            d="m0 0 21 1 14 4 10 6 7 8 4 9 1 5v9l-4 11-7 9-10 6h-2l3 3 9 5 7 6 6 10 3 10v11l-3 11-8 11-9 7-12 5-16 3h-39l-6-2v-144l7-2z"
            fill="#283F83" />
          <path transform="translate(1182,1773)"
            d="m0 0h23l3 5 15 44 10 29 10 32 2 10 2-1 7-25 12-34 16-44 5-14 2-2h23l1 3 7 114 1 13v17h-17l-1-1-4-61-1-20-1-44-5 12-14 43-16 44-9 24-1 2-12 1-4-4-15-43-17-52-6-22-1-1-5 82-3 39-1 1h-17l1-21 8-118 1-7z"
            fill="#283F83" />
          <path transform="translate(571,1508)"
            d="m0 0h16l14 2 11 4 8 5 5 5 6 9 3 11v10l-3 11-7 10-7 6-7 4h-2l10 10 5 8 6 18 8 30 1 6h-18l-4-8-9-35-6-12-7-6-6-2-24-1h-2v63l-1 1h-17l-1-1v-143l2-2 13-2z"
            fill="#283F83" />
          <path transform="translate(263,1508)"
            d="m0 0 19 1 12 3 10 5 8 7 6 10 3 9v20l-4 11-7 9-8 7-11 5-12 3-20 1-9-1v58l-1 1h-18v-146l14-2z"
            fill="#283F83" />
          <path transform="translate(1046,1510)"
            d="m0 0h22l12 20 15 23 15 24 12 20 10 18 7 13v2h2l-1-7-1-22v-91h17v147h-17l-5-5-11-18-12-19-15-24-11-18-10-17-11-21v122h-17l-1-1z"
            fill="#283F83" />
          <path transform="translate(1592,1509)"
            d="m0 0 7 1 16 26 11 17 14 22 17 28 14 26 1 1-1-26v-94h17l1 25v111l-1 11h-17l-5-5-10-15-16-26-12-19-12-20-10-18-8-14-2-4-2-1 1 8 1 40v73l-1 1h-16l-1-1v-146z"
            fill="#283F83" />
          <path transform="translate(1459,1509)"
            d="m0 0 3 1 12 35 36 108v4h-18l-4-10-12-34-1-1-51-1-4 10-12 35-1 1h-19l10-30 14-41 19-55 7-21z"
            fill="#283F83" />
          <path transform="translate(1037,1773)"
            d="m0 0h22l2 2 5 17 14 41 26 77 3 10h-19l-4-9-12-35-1-1h-51l-4 10-11 33-1 2h-20l12-34 21-63 14-41z"
            fill="#283F83" />
          <path transform="translate(909,1509)"
            d="m0 0h20l5 12 29 86 11 31 5 15v4h-19l-4-11-11-32-1-2-51-1-4 9-12 35-1 2h-18l1-7 21-62 15-43 12-35z"
            fill="#283F83" />
          <path transform="translate(1235,1510)"
            d="m0 0h18l1 56-1 13 5-4 10-13 14-17 9-11 13-16 7-8h22l-3 5-13 15-11 13-12 14-9 11-2 3 1 4 10 16 8 11 18 27 11 16 7 11v1h-21l-6-7-24-36-10-14-7-11-1-3-4 1-2 4-7 7-2 5-1 54h-18z"
            fill="#283F83" />
          <path transform="translate(391,1510)"
            d="m0 0h80v15l-60 1-1 9v37h57l1 1v14l-1 1-56 1-1 2 1 49 62 1 1 1v14l-1 1h-81l-1-1z" fill="#283F83" />
          <path transform="translate(730,1771)"
            d="m0 0h23l12 3 8 4 1 2-5 12-6-1-16-4h-14l-9 3-7 6-4 8v8l4 10 7 6 14 7 18 8 10 7 8 9 4 9 1 4v16l-3 10-7 10-8 7-10 5-14 3h-17l-18-4-9-4-1-1v-7l3-8 9 3 14 4 16 1 12-3 8-6 5-10v-13l-5-10-10-7-28-13-9-6-8-9-4-8-1-4v-14l4-12 6-8 7-6 11-5z"
            fill="#283F83" />
          <path transform="translate(851,1773)" d="m0 0h17l1 1 1 130 62 1-1 15h-81v-146z" fill="#283F83" />
          <path transform="translate(976,441)"
            d="m0 0 5 1 8 16 9 13 3 5-1 5-6 9-7 7-7 8-9 10-10 15-4 7-4-2-10-11-7-10-7-13v-6l7-10 13-16 18-20 8-7z"
            fill="#FFFFFF" />
          <path transform="translate(1011,497)"
            d="m0 0 4 1 10 18 10 14 1 4-4 8-11 12-12 13-11 14-3 5-2 6-4-1-11-12-11-16-4-10 2-5 11-14 9-11 13-15z"
            fill="#FFFFFF" />
          <path transform="translate(921,512)"
            d="m0 0 5 1 8 15 7 11 5 6v7l-8 11-8 8-7 8-10 12-7 11-3 6-7-6-9-10-10-15-3-10 6-9 13-16 9-11z"
            fill="#FFFFFF" />
          <path transform="translate(261,1523)"
            d="m0 0 18 1 10 3 9 8 3 5 1 4v16l-4 10-5 6-6 4-9 3-7 1h-18l-3-1-1-10v-41l1-7 2-1z" fill="#FFFFFF" />
          <path transform="translate(602,1773)" d="m0 0h18v147h-18l-1-1v-145z" fill="#283F83" />
          <path transform="translate(724,1586)" d="m0 0h22l14 3 10 6 5 6 3 8v11l-3 9-7 8-8 4-8 2-10 1h-16l-2-1z"
            fill="#FFFFFF" />
          <path transform="translate(568,1523)" d="m0 0h22l13 4 8 7 4 9v14l-3 8-6 7-10 5-10 2h-23l-1-1v-53z"
            fill="#FFFFFF" />
          <path transform="translate(728,1523)" d="m0 0h22l11 3 6 4 5 6 2 7v7l-3 9-4 5-10 6-8 2h-25l-1-44 2-4z"
            fill="#FFFFFF" />
          <path transform="translate(1448,1528)" d="m0 0 3 3 11 35 9 25v5h-43l1-7 16-49z" fill="#FFFFFF" />
          <path transform="translate(917,1528)" d="m0 0 3 3 7 25 11 31 1 9h-42l-1-3 13-38 6-21z" fill="#FFFFFF" />
          <path transform="translate(1046,1792)" d="m0 0h2l18 54 3 8v5h-43l2-9 14-43z" fill="#FFFFFF" />
        </svg>
      </div>
    </div>
    <div class="header" style="margin-top: -10px;">
      <div class="address">
        Pusat Kad Bank Islam /<span style="font-family: EmbArialItalic;"> Bank Islam Card Centre</span><br />
        Bank Islam Malaysia Berhad (98127-X)<br />
        Aras 24 Menara Bank Islam, No. 22 Jalan Perak, 50450 Kuala Lumpur<br />
        Tel: 03-26 900 900 Faks: 03-2726 7606 <br />
        Laman Web: www.bankislam.com
      </div>
      <div class="name">
        PENYATA AKAUN
        <div class="subname" style="margin-right: -5px;">ACCOUNT STATEMENT</div>
      </div>
    </div>
  </header>

  <footer>
    <div class="footer" style=" margin-bottom: 40px; text-align: center;">
      <span style="text-align: center; font-size: 10px;">SILA LIHAT MUKA SEBELAH UNTUK MAKLUMAT
        LANJUT
        /
        <span style="font-family:EmbArialItalic ;">TURN
          OVERLEAF FOR
          MORE INFORMATION</span>
      </span>
    </div>
  </footer>

  <!-- Section 01 : Card -->
  <section class="section1">
    <div style="margin-top: 35px; margin-left: -1px;">
      <p class="justify" style="
              font-size: 10px;
              font-family: EmbArialBold;
              margin-top: 0;
              margin-bottom: 0;
              max-height: 90px;
              min-height: 90px;
              height: 90px;">
        <br />
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
    
  <div class=" message-box" style="margin-top: -95px;">
                <div class="message-head">
                  MESEJ / <span style="font-family: EmbArialItalicBold;">MESSAGE</span>
                  <div class="message-body" style="text-align: left;">
                    ${contextVariables.message!}
                  </div>
                </div>
    </div>
    <div class="card-i" style="font-size: 14px;margin-top: 40px;">KAD-i BANK ISLAM /<span
        style="font-family: EmbArialItalicBold;">
        BANK ISLAM CARD-i</span></div>

    <div class="card-i-table normal-font" style="font-family: EmbArialBold;">
      <div class="card-i-table-child-head">
        Tarikh Penyata / <span style="font-family:EmbArialItalicBold ;"> Statement Date</span>
      </div>
      <div class="card-i-table-child-head">
        Tarikh Matang /<span style="font-family:EmbArialItalicBold ;"> Payment Due Date</span>

      </div>
      <div class="card-i-table-child-head">
        Had Pembiayaan (RM) /<span style="font-family:EmbArialItalicBold ;"> Financing Limit (RM)</span>
      </div>
    </div>
    <div class="card-i-table">
      <div class="card-i-table-child-body">${contextVariables.processingDate!}</div>
      <div class="card-i-table-child-body">${contextVariables.latestDueDate!}</div>
      <div class="card-i-table-child-body">${contextVariables.financingLimit!}</div>
    </div>

    <table class="balance-table">
      <tr>
        <td class="balance-table-head">
          Baki Terdahulu (RM) <br />

          <span style="font-family:EmbArialItalicBold ;"> Previous Balance (RM)</span>
        </td>
        <td class="balance-table-head">
          Bayaran (RM) <br />
          <span style="font-family:EmbArialItalicBold ;"> Payment (RM)</span>
        </td>
        <td class="balance-table-head">
          Amaun Tertunggak (RM) <br />
          <span style="font-family:EmbArialItalicBold ;"> Overdue Amount (RM)</span>
        </td>
        <td class="balance-table-head">
          Baki Semasa (RM) <br />
          <span style="font-family:EmbArialItalicBold ;"> Current Balance (RM)</span>
        </td>
        <td class="balance-table-head">
          Bayaran Minimum (RM) <br />
          <span style="font-family:EmbArialItalicBold ;"> Minimum Payment (RM)</span>
        </td>
      </tr>
      <tr>
        <td class="balance-table-body">${contextVariables.previousBalance!}</td>
        <td class="balance-table-body">${contextVariables.payment!}</td>
        <td class="balance-table-body">${contextVariables.overDueAmount!}</td>
        <td class="balance-table-body">${contextVariables.subTotal!}</td>
        <td class="balance-table-body">${contextVariables.amountDue!}</td>
      </tr>
    </table>
  </section>



  <div style="margin-top: 2px; height: 253px;max-height: 253px;border: 1px solid;"></div>


  <section>
    <div style="margin-top: 10px;">
      <div class="notice-head">
        NOTIS: JIKA HANYA MEMBUAT BAYARAN MINIMUM /
        <span class="notice-head-span">NOTICE: IF PAYING ONLY MINIMUM PAYMENT</span>
      </div>
      <div class="notice-body">
        Jika anda hanya membuat bayaran minimum setiap bulan, jumlah
        keuntungan dan tempoh yang diambil untuk
        menjelaskan keseluruhan baki yang belum
        dijelaskan akan bertambah. Sila rujuk muka surat sebelah untuk
        makluman lanjut. Sila rujuk Kalkulator Kad Kredit yang terdapat di
        laman sesawang kami atau laman sesawang info perbankan. <br />
        <span style="font-family:EmbArialItalic;"> If you make only the minimum payment each period, it will take you
          longer to pay off your balance including profit payable. Please refer
          to the back page for more information.<br /> Please refer to the credit card
          calculator available on our website or banking info website.</span>
      </div>
      <div class="notice-bottom">
        SILA LAYARI WWW.BANKISLAM.COM UNTUK MENDAPATKAN INFO TERKINI BERKENAAN
        TERMA DAN SYARAT KAD KREDIT-I BANK ISLAM.
      </div>
    </div>

  </section>

  <!-- Section 04 : Payment Advice -->
  <section style="margin-top: -1px;">

    <div style="position: relative; text-align: left;">
      <span style="padding: 4px 8px; font-size: 8px; font-family: EmbArialBold; border: 1px solid;" class="normal-font">
        ARAHAN PEMBAYARAN /
        <span style="font-family: EmbArialItalicBold;">PAYMENT ADVICE</span>
      </span>



      <span style="margin-left:120px;">
        <svg version="1.0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800.000000 185.000000"
          preserveAspectRatio="xMidYMid meet" style="
                      vertical-align: middle;
                      width: 180px;
                      height: 35px;
                      display: inline-block;
                      margin-left: 130px;
                      
                    ">
          <g transform="translate(0.000000,185.000000) scale(0.100000,-0.100000)" fill="#5F6062" stroke="none">
            <path fill="#C61846" d="M4713 1829 c-203 -24 -411 -83 -579 -165 -393 -191 -588 -502 -520
                   -825 54 -252 276 -491 606 -648 586 -280 1403 -245 1883 81 113 77 250 221
                   291 308 9 19 11 27 4 16 -106 -156 -226 -259 -413 -351 -237 -118 -477 -169
                   -790 -168 -468 2 -883 146 -1159 404 -247 231 -316 530 -180 789 127 243 430
                   437 804 516 150 31 336 47 480 41 81 -4 99 -3 60 3 -71 10 -394 10 -487 -1z" />
            <path d="M1105 1408 c-7 -18 -85 -212 -174 -432 -88 -219 -168 -409 -176 -423
                   -17 -26 -71 -53 -105 -53 -11 0 -20 -4 -20 -9 0 -12 309 -11 316 0 3 5 -10 9
                   -29 9 -70 0 -71 32 -8 195 l39 100 150 3 149 3 53 -142 c49 -131 52 -143 36
                   -154 -15 -12 -15 -13 0 -19 25 -10 553 -5 560 5 3 5 -11 9 -30 9 -22 0 -45 9
                   -62 23 l-27 24 -8 189 c-4 104 -8 244 -8 311 l-1 122 52 -57 c141 -155 635
                   -642 650 -642 16 0 18 13 19 128 0 70 4 268 7 440 l7 314 24 19 c13 10 36 19
                   52 19 16 0 29 5 29 10 0 6 -62 10 -165 10 -103 0 -165 -4 -165 -10 0 -5 18
                   -10 39 -10 23 0 48 -8 62 -19 23 -18 23 -21 32 -331 4 -172 5 -315 2 -318 -3
                   -4 -10 -1 -14 6 -4 7 -115 122 -247 255 -131 133 -284 288 -338 345 -54 56
                   -103 102 -107 102 -15 0 -18 -63 -23 -466 -3 -220 -10 -412 -15 -426 -13 -35
                   -53 -43 -99 -21 -51 25 -77 78 -251 510 -82 204 -154 381 -161 392 -15 30 -29
                   26 -45 -11z m54 -371 c30 -83 56 -158 59 -164 3 -10 -24 -13 -117 -13 -67 0
                   -121 3 -121 8 -1 12 115 322 120 322 3 0 29 -69 59 -153z" />
            <path d="M6286 1413 c-7 -16 -84 -203 -170 -417 -86 -213 -166 -406 -177 -428
                   -13 -26 -32 -44 -54 -54 -46 -19 -69 -18 -61 2 12 32 19 154 9 154 -6 0 -13
                   -14 -17 -31 -15 -76 -94 -108 -232 -93 -97 10 -110 25 -119 145 -4 52 -5 221
                   -3 375 3 260 4 284 22 303 13 14 31 21 58 21 21 0 38 5 38 10 0 6 -72 10 -195
                   10 -123 0 -195 -4 -195 -10 0 -5 13 -10 30 -10 48 0 79 -20 85 -54 4 -17 5
                   -204 3 -414 l-3 -384 -24 -19 c-13 -10 -36 -19 -53 -19 -16 0 -27 -4 -24 -9 8
                   -12 916 -13 916 -1 0 6 -9 10 -21 10 -35 0 -59 19 -59 47 0 15 19 77 42 140
                   l43 113 150 0 150 0 49 -133 c27 -72 51 -138 53 -144 3 -7 -5 -17 -18 -21
                   l-23 -9 26 -6 c37 -10 508 -6 508 3 0 4 -17 10 -37 14 -58 9 -68 19 -65 69 1
                   43 60 502 66 522 2 6 27 -42 56 -105 63 -134 237 -479 252 -497 6 -7 14 -10
                   19 -7 9 5 182 356 264 536 22 48 43 87 46 88 3 0 18 -91 33 -202 15 -112 31
                   -227 37 -257 13 -77 12 -141 -3 -141 -8 0 -8 -3 -2 -9 14 -15 300 -26 308 -12
                   5 7 -1 11 -16 11 -51 0 -98 21 -113 50 -14 27 -41 196 -112 687 -29 198 -34
                   217 -56 193 -8 -8 -85 -163 -172 -345 -86 -181 -163 -341 -170 -355 -12 -24
                   -21 -10 -159 275 -181 374 -208 427 -223 432 -6 2 -14 -4 -17 -14 -3 -10 -33
                   -198 -66 -418 -33 -220 -65 -417 -70 -437 -26 -92 -100 -76 -155 32 -13 25
                   -85 198 -160 385 -160 398 -185 455 -196 455 -5 0 -15 -12 -23 -27z m53 -388
                   c28 -77 51 -145 51 -152 0 -10 -29 -13 -121 -13 -111 0 -121 1 -114 18 4 9 32
                   84 63 165 34 92 58 143 63 135 4 -8 30 -76 58 -153z" />
            <path d="M4897 1420 c-229 -58 -266 -295 -74 -464 34 -30 87 -74 117 -98 84
                   -67 115 -117 115 -186 0 -95 -56 -146 -160 -147 -107 0 -173 56 -190 163 -4
                   23 -10 42 -14 42 -10 0 -21 -86 -21 -162 0 -54 2 -58 31 -73 40 -21 160 -34
                   235 -25 162 20 268 145 249 295 -12 100 -58 162 -213 286 -126 101 -152 134
                   -152 197 0 34 6 49 34 79 31 34 39 37 98 41 47 3 74 0 96 -12 35 -18 82 -75
                   82 -99 0 -23 11 -47 21 -47 5 0 9 43 9 95 0 94 0 96 -26 105 -38 15 -193 21
                   -237 10z" />
            <path d="M0 1400 c0 -5 18 -10 39 -10 23 0 48 -8 62 -19 l24 -19 3 -324 c2
                   -177 -1 -363 -6 -412 -11 -98 -23 -116 -74 -116 -15 0 -28 -4 -28 -9 0 -6 99
                   -9 238 -8 219 2 241 4 283 23 149 69 210 230 135 358 -30 52 -71 88 -138 122
                   l-49 25 49 54 c124 136 81 298 -89 334 -64 14 -449 15 -449 1z m416 -71 c80
                   -73 85 -246 10 -294 -21 -13 -74 -20 -128 -17 l-28 2 0 171 0 171 60 -4 c46
                   -3 66 -10 86 -29z m4 -384 c134 -69 186 -304 85 -380 -68 -53 -202 -40 -225
                   20 -12 30 -14 368 -2 379 10 12 109 -2 142 -19z" />
            <path d="M2630 1400 c0 -5 18 -10 40 -10 58 0 80 -26 80 -92 3 -436 -1 -727
                   -11 -755 -9 -28 -16 -34 -50 -39 -85 -14 -30 -22 146 -22 182 0 243 9 145 22
                   -37 5 -53 12 -62 29 -14 26 -25 417 -12 417 5 0 15 -9 21 -19 22 -36 269 -315
                   320 -362 80 -75 101 -82 246 -87 134 -5 162 5 78 27 -94 24 -178 96 -429 370
                   l-122 133 33 37 c44 48 266 264 297 289 35 27 97 52 131 52 16 0 29 5 29 10 0
                   6 -58 10 -155 10 -97 0 -155 -4 -155 -10 0 -5 7 -10 15 -10 26 0 16 -43 -21
                   -90 -35 -45 -283 -300 -292 -300 -7 0 4 344 12 363 5 10 24 20 47 23 88 14 28
                   24 -146 24 -117 0 -185 -4 -185 -10z" />
            <path d="M4270 1400 c0 -5 13 -10 29 -10 16 0 39 -9 52 -19 l24 -19 0 -399 c0
                   -305 -3 -403 -13 -420 -8 -15 -26 -25 -52 -29 -87 -14 -31 -22 155 -22 186 -1
                   263 10 153 20 -92 9 -88 -11 -88 449 0 386 1 400 20 419 11 11 33 20 50 20 17
                   0 30 5 30 10 0 6 -67 10 -180 10 -113 0 -180 -4 -180 -10z" />
          </g>
        </svg>
      </span>
      <span style="margin-left: 30px;">
        <svg version="1.1" viewBox="0 0 1964 2048" width="494" height="515" xmlns="http://www.w3.org/2000/svg" style="
                    width: 80px;
                    height: 60px;
                    display: inline-block;
                    vertical-align: middle;
                    margin-top: 10px;
                    margin-left: -40px;">
          <path transform="translate(0)" d="m0 0h1964v2048h-1964z" fill="#FFFFFF" />
          <path transform="translate(1435,115)"
            d="m0 0h54l31 2 30 3 36 6 31 7 27 8 20 7 24 10 27 13 20 12 19 13 10 8 13 11 14 13 7 8 10 12 12 17 10 18 10 21 10 30 6 26 3 21 1 12v43l-3 28-5 28-6 25-7 25-11 31-8 20-8 18-14 29-10 19-13 22-15 24-8 12-13 19-14 19-13 17-10 13-12 14-8 10-24 28-12 13-33 36-43 43h-2v2l-8 7-8 8-8 7-17 16-11 10-11 9-12 11-11 9-14 12-14 11-13 11-13 10-14 11-21 16-14 10-18 13-17 12-45 30-19 12-21 13-15 9-26 15-25 14-26 14-27 14-34 17-33 15-44 19-35 14-29 11-34 12-51 17-44 13-34 9-37 9-44 9-49 8-47 5-44 3h-64l-49-4-37-5-35-7-30-8-30-10-24-10-21-10-21-12-22-15-14-11-10-9-13-12-11-12-10-13-12-18-11-20-8-19-6-18-6-25-4-24-2-24v-28l2-25 5-33 7-30 8-27 12-33 10-23 14-29 13-25 12-20 13-21 20-30 13-18 10-14 11-14 13-16 11-14 12-14 9-11 11-13 11-12 9-11 10-10 7-8 9-9 7-8 38-38 8-7 10-10 8-7 15-14 8-7 11-10 11-9 9-8 10-8 14-12 10-8 16-13 13-10 28-21 18-13 14-10 10-7 35-24 22-14 14-9 26-16 23-13 24-14 24-13 38-20 23-12 23-11 37-17 30-13 39-16 40-15 40-14 48-15 47-13 46-11 50-10 49-8 52-6 29-2z"
            fill="#283F83" />
          <path transform="translate(1109,306)"
            d="m0 0h23l29 2 28 4 28 6 20 6 21 9 25 13 15 10 13 10 14 12 7 7 7 8 11 15 9 15 8 17 6 18 4 18 2 15v25l-3 21-6 25-9 26-14 29-11 19-12 18-11 15-16 20-24 26-22 22-8 7-12 11-11 9-17 14-16 12-18 13-20 14-24 15-22 13-19 10-8 4v173l-2 26-3 18-5 20-7 21-9 20-11 21-14 21-10 13-12 14-12 13-8 6-7 1-6-4-1-4 7-21 4-20 3-25 1-16 1-339 1-78 3-34 6-32 7-25 8-21 8-17 13-21 13-16 13-13 17-12 12-6 3-1h7l2 3-2 11-8 24-5 23-5 37-2 25-1 200 12-8 42-30 13-10 14-11 11-9 13-11 14-12 7-7 8-7 17-16 14-15 11-12 9-11 13-16 13-19 10-15 13-23 9-19 9-25 5-19 3-16 1-8v-28l-3-21-5-15-9-17-12-16-9-10-10-10-13-10-18-11-16-8-17-7-18-6-26-6-21-3-22-2-18-1h-29l-31 2-33 4-23 4-38 12-31 11-30 13-25 12-22 12-17 10-23 15-17 12-14 11-10 8-14 12-12 11-8 7-12 12-7 8-10 11-9 11-10 12-10 13-13 19-10 15-10 17-9 16-12 23-9 20-9 23-8 25-7 30-4 25-1 15v26l2 21 4 20 8 24 10 21 11 17 13 16 12 12 19 14 16 9 15 7 17 5 9 1h23l16-3 19-7 11-6 9-6 3-5-2-7-7-6-14-6-10-3-11-7-11-9-8-8-7-11-4-9-2-9v-12l4-16 7-14 7-9 12-14 11-12 3-4h2l2-4 32-32 8-7 10-9 14-11 14-9 13-5 14-3h22l10 2 9 4 11 7 8 9 9 17 3 10v35l-3 20-6 22-6 16-9 20-12 21-13 19-11 14-9 11-7 7-7 8-16 16-8 7-14 12-14 11-16 12-27 18-22 13-16 8-17 8-25 9-26 6-8 1h-29l-15-3-16-6-15-9-14-13-11-14-8-13-9-19-7-19-7-25-5-26-3-26-1-12v-31l3-36 6-35 7-30 11-35 17-45 11-24 8-17 12-22 13-22 16-24 11-16 9-12 11-14 11-13 9-11 15-16 16-17 7-7 8-7 10-10 8-7 13-11 14-11 13-10 17-12 15-10 19-12 21-12 28-15 32-15 27-11 34-12 29-9 30-7 36-6 18-2z"
            fill="#FFFFFF" />
          <path transform="translate(1435,115)"
            d="m0 0h54l31 2 30 3 36 6 31 7 27 8 20 7 24 10 27 13 20 12 19 13 10 8 13 11 14 13 7 8 10 12 12 17 10 18 10 21 10 30 6 26 3 21 1 12v43l-3 28-5 28-6 25-7 25-11 31-8 20-8 18-14 29-10 19-13 22-15 24-8 12-13 19-14 19-13 17-10 13-12 14-8 10-24 28-12 13-33 36-43 43h-2v2l-8 7-8 8-8 7-17 16-11 10-11 9-12 11-11 9-14 12-14 11-13 11-13 10-14 11-21 16-14 10-18 13-17 12-45 30-19 12-21 13-15 9-26 15-25 14-26 14-27 14-34 17-33 15-44 19-35 14-29 11-34 12-51 17-44 13-34 9-37 9-44 9-49 8-47 5-44 3h-64l-49-4-37-5-35-7-30-8-30-10-24-10-21-10-21-12-22-15-14-11-10-9-13-12-11-12-10-13-12-18-11-20-8-19-6-18-6-25-4-24-2-24v-28l2-25 5-33 7-30 8-27 12-33 10-23 14-29 13-25 12-20 13-21 20-30 13-18 10-14 11-14 13-16 11-14 12-14 9-11 11-13 11-12 9-11 10-10 7-8 9-9 7-8 38-38 8-7 10-10 8-7 15-14 8-7 11-10 11-9 9-8 10-8 14-12 10-8 16-13 13-10 28-21 18-13 14-10 10-7 35-24 22-14 14-9 26-16 23-13 24-14 24-13 38-20 23-12 23-11 37-17 30-13 39-16 40-15 40-14 48-15 47-13 46-11 50-10 49-8 52-6 29-2zm-54 43-44 3-44 5-40 6-60 12-54 13-40 11-39 12-48 16-40 15-30 12-42 18-35 16-35 17-24 12-22 12-24 13-23 13-29 17-23 14-23 15-16 10-30 20-20 14-14 10-18 13-17 13-21 16-16 13-13 11-11 9-11 10-8 7-12 11-10 9-13 12-41 41-7 8-11 12-7 8-9 10-9 11-11 13-10 13-16 21-12 17-22 33-12 20-12 21-14 27-13 28-11 27-8 22-9 30-8 33-5 32-2 21v45l4 31 6 26 7 21 9 20 11 20 12 17 8 10 11 13 20 20 14 11 18 13 18 11 24 13 31 13 33 11 36 9 34 6 33 4 40 3h60l47-3 40-4 44-6 40-7 47-10 47-12 51-15 36-12 34-12 34-13 29-12 49-21 34-16 25-12 42-21 44-24 24-14 21-12 16-10 20-12 26-17 24-16 15-11 14-10 18-13 21-16 13-10 20-16 11-9 26-22 10-9 8-7 26-24 7-7 8-7 19-19 7-8 9-9 7-8 12-13 9-11 9-10 22-28 14-19 14-20 8-12 11-17 12-20 13-23 15-29 11-23 13-31 7-20 7-21 9-36 5-29 2-18 1-15v-28l-2-24-4-25-6-25-8-23-9-20-11-19-12-16-8-10-9-10-18-18-11-9-13-10-15-10-17-10-23-12-32-13-28-9-26-7-29-6-31-5-42-4-18-1z"
            fill="#283F83" />
          <path transform="translate(1381,158)"
            d="m0 0h66l31 2 35 4 31 5 35 8 30 9 20 7 26 11 25 13 22 14 15 11 11 9 12 11 17 17 11 14 13 18 12 22 10 25 7 23 6 31 2 17 1 15v28l-2 25-5 32-7 30-8 26-7 21-12 29-12 26-13 26-13 23-12 21-13 20-10 15-12 17-13 18-14 18-9 11-11 13-12 14-14 15-9 10-8 8-7 8-19 19-8 7-9 9-8 7-16 15-11 9-11 10-11 9-13 11-14 11-15 12-32 24-36 26-22 15-26 17-19 12-40 24-26 15-27 15-34 18-50 25-28 13-29 13-38 16-40 16-44 16-40 13-22 7-38 11-53 13-44 9-50 8-51 6-44 3-16 1h-60l-40-3-33-4-34-6-36-9-36-12-32-14-24-13-21-14-12-9-16-13-21-21-9-11-12-16-11-18-10-19-9-23-7-26-4-23-2-18v-45l3-29 5-28 7-29 10-33 13-34 12-27 14-29 13-24 12-20 12-19 15-22 13-18 16-21 11-14 11-13 9-11 13-14 9-11 9-9 7-8 43-43 8-7 15-14 8-7 15-13 14-12 11-9 16-13 21-16 20-15 18-13 17-12 19-13 15-10 23-15 19-12 21-13 25-15 28-16 29-16 42-22 22-11 23-11 35-16 45-19 39-15 36-13 48-16 41-12 38-10 47-11 55-11 40-6 44-5zm-10 28-43 3-37 4-46 7-46 9-38 9-48 13-42 13-44 15-40 15-34 14-30 13-48 22-16 8-39 20-23 13-22 12-27 16-20 12-38 24-34 23-23 16-38 28-15 12-14 11-16 13-13 11-11 9-12 11-8 7-10 9-8 7-15 14-12 12-8 7-19 19-7 8-9 9-7 8-9 10v2h-2l-7 8-12 14-9 11-13 16-13 17-12 16-7 10-9 13-10 15-12 19-15 26-14 26-15 32-13 33-9 27-8 30-5 26-3 21-1 11v47l3 24 6 27 9 26 13 27 13 20 11 14 9 10 17 17 14 11 17 12 20 12 17 9 28 12 33 11 32 8 33 6 35 4 28 2h71l31-2 39-4 42-6 44-8 44-10 42-11 34-10 55-18 41-15 42-17 30-13 24-11 28-13 42-21 22-12 24-13 53-31 41-26 34-23 19-13 38-28 14-11 18-14 22-18 13-11 14-12 10-9 11-9 12-12 8-7 10-10 8-7 23-23 7-8 13-13 7-8 13-14 8-10 10-11 11-14 10-12 24-32 13-19 12-18 12-19 9-15 12-22 12-23 11-24 11-27 12-36 8-31 5-27 3-27v-45l-3-26-5-23-6-20-8-20-10-19-14-21-10-13-15-16-7-7-11-9-13-10-15-10-19-11-22-11-25-10-24-8-31-8-31-6-31-4-38-3z"
            fill="#FFFFFF" />
          <path transform="translate(736,1508)"
            d="m0 0 21 1 14 4 10 6 7 8 4 9 1 5v9l-4 11-7 9-10 6h-2l3 3 9 5 7 6 6 10 3 10v11l-3 11-8 11-9 7-12 5-16 3h-39l-6-2v-144l7-2z"
            fill="#283F83" />
          <path transform="translate(1182,1773)"
            d="m0 0h23l3 5 15 44 10 29 10 32 2 10 2-1 7-25 12-34 16-44 5-14 2-2h23l1 3 7 114 1 13v17h-17l-1-1-4-61-1-20-1-44-5 12-14 43-16 44-9 24-1 2-12 1-4-4-15-43-17-52-6-22-1-1-5 82-3 39-1 1h-17l1-21 8-118 1-7z"
            fill="#283F83" />
          <path transform="translate(571,1508)"
            d="m0 0h16l14 2 11 4 8 5 5 5 6 9 3 11v10l-3 11-7 10-7 6-7 4h-2l10 10 5 8 6 18 8 30 1 6h-18l-4-8-9-35-6-12-7-6-6-2-24-1h-2v63l-1 1h-17l-1-1v-143l2-2 13-2z"
            fill="#283F83" />
          <path transform="translate(263,1508)"
            d="m0 0 19 1 12 3 10 5 8 7 6 10 3 9v20l-4 11-7 9-8 7-11 5-12 3-20 1-9-1v58l-1 1h-18v-146l14-2z"
            fill="#283F83" />
          <path transform="translate(1046,1510)"
            d="m0 0h22l12 20 15 23 15 24 12 20 10 18 7 13v2h2l-1-7-1-22v-91h17v147h-17l-5-5-11-18-12-19-15-24-11-18-10-17-11-21v122h-17l-1-1z"
            fill="#283F83" />
          <path transform="translate(1592,1509)"
            d="m0 0 7 1 16 26 11 17 14 22 17 28 14 26 1 1-1-26v-94h17l1 25v111l-1 11h-17l-5-5-10-15-16-26-12-19-12-20-10-18-8-14-2-4-2-1 1 8 1 40v73l-1 1h-16l-1-1v-146z"
            fill="#283F83" />
          <path transform="translate(1459,1509)"
            d="m0 0 3 1 12 35 36 108v4h-18l-4-10-12-34-1-1-51-1-4 10-12 35-1 1h-19l10-30 14-41 19-55 7-21z"
            fill="#283F83" />
          <path transform="translate(1037,1773)"
            d="m0 0h22l2 2 5 17 14 41 26 77 3 10h-19l-4-9-12-35-1-1h-51l-4 10-11 33-1 2h-20l12-34 21-63 14-41z"
            fill="#283F83" />
          <path transform="translate(909,1509)"
            d="m0 0h20l5 12 29 86 11 31 5 15v4h-19l-4-11-11-32-1-2-51-1-4 9-12 35-1 2h-18l1-7 21-62 15-43 12-35z"
            fill="#283F83" />
          <path transform="translate(1235,1510)"
            d="m0 0h18l1 56-1 13 5-4 10-13 14-17 9-11 13-16 7-8h22l-3 5-13 15-11 13-12 14-9 11-2 3 1 4 10 16 8 11 18 27 11 16 7 11v1h-21l-6-7-24-36-10-14-7-11-1-3-4 1-2 4-7 7-2 5-1 54h-18z"
            fill="#283F83" />
          <path transform="translate(391,1510)"
            d="m0 0h80v15l-60 1-1 9v37h57l1 1v14l-1 1-56 1-1 2 1 49 62 1 1 1v14l-1 1h-81l-1-1z" fill="#283F83" />
          <path transform="translate(730,1771)"
            d="m0 0h23l12 3 8 4 1 2-5 12-6-1-16-4h-14l-9 3-7 6-4 8v8l4 10 7 6 14 7 18 8 10 7 8 9 4 9 1 4v16l-3 10-7 10-8 7-10 5-14 3h-17l-18-4-9-4-1-1v-7l3-8 9 3 14 4 16 1 12-3 8-6 5-10v-13l-5-10-10-7-28-13-9-6-8-9-4-8-1-4v-14l4-12 6-8 7-6 11-5z"
            fill="#283F83" />
          <path transform="translate(851,1773)" d="m0 0h17l1 1 1 130 62 1-1 15h-81v-146z" fill="#283F83" />
          <path transform="translate(976,441)"
            d="m0 0 5 1 8 16 9 13 3 5-1 5-6 9-7 7-7 8-9 10-10 15-4 7-4-2-10-11-7-10-7-13v-6l7-10 13-16 18-20 8-7z"
            fill="#FFFFFF" />
          <path transform="translate(1011,497)"
            d="m0 0 4 1 10 18 10 14 1 4-4 8-11 12-12 13-11 14-3 5-2 6-4-1-11-12-11-16-4-10 2-5 11-14 9-11 13-15z"
            fill="#FFFFFF" />
          <path transform="translate(921,512)"
            d="m0 0 5 1 8 15 7 11 5 6v7l-8 11-8 8-7 8-10 12-7 11-3 6-7-6-9-10-10-15-3-10 6-9 13-16 9-11z"
            fill="#FFFFFF" />
          <path transform="translate(261,1523)"
            d="m0 0 18 1 10 3 9 8 3 5 1 4v16l-4 10-5 6-6 4-9 3-7 1h-18l-3-1-1-10v-41l1-7 2-1z" fill="#FFFFFF" />
          <path transform="translate(602,1773)" d="m0 0h18v147h-18l-1-1v-145z" fill="#283F83" />
          <path transform="translate(724,1586)" d="m0 0h22l14 3 10 6 5 6 3 8v11l-3 9-7 8-8 4-8 2-10 1h-16l-2-1z"
            fill="#FFFFFF" />
          <path transform="translate(568,1523)" d="m0 0h22l13 4 8 7 4 9v14l-3 8-6 7-10 5-10 2h-23l-1-1v-53z"
            fill="#FFFFFF" />
          <path transform="translate(728,1523)" d="m0 0h22l11 3 6 4 5 6 2 7v7l-3 9-4 5-10 6-8 2h-25l-1-44 2-4z"
            fill="#FFFFFF" />
          <path transform="translate(1448,1528)" d="m0 0 3 3 11 35 9 25v5h-43l1-7 16-49z" fill="#FFFFFF" />
          <path transform="translate(917,1528)" d="m0 0 3 3 7 25 11 31 1 9h-42l-1-3 13-38 6-21z" fill="#FFFFFF" />
          <path transform="translate(1046,1792)" d="m0 0h2l18 54 3 8v5h-43l2-9 14-43z" fill="#FFFFFF" />
        </svg>
      </span>

    </div>
    <div style="margin-top: -30px;">
      <p>${contextVariables.name!}</p>
    </div>

    <div style="width: 100%; margin-top: 20px; font-size: 10px; text-align: start; ">
      <div style="display: inline-block; width: 49.7%; box-sizing: border-box;  ">
        <table style="width: 100%; border-collapse: collapse; border: none;">
          <th style="border: none;"></th>
          <tr>
            <td style="width: 62%; border: none; padding-bottom: 10px ;">No. Rujukan Pembayaran / <span
                style="font-family: EmbArialItalic;">Payment Ref
                No.</span></td>
            <td
              style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px; padding-bottom: 10px">
              ${contextVariables.paymentRefNo!}
            </td>
          </tr>
          <tr>
            <td style="width: 62%;  border: none; padding-bottom: 10px;">Tarikh Penyata / <span
                style="font-family: EmbArialItalic;">Statement
                Date</span></td>
            <td
              style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px; padding-bottom: 10px;">
              ${contextVariables.processingDate!}
            </td>
          </tr>
          <tr>
            <td style="width: 62%;  border: none; padding-bottom: 10px;">Tarikh Matang / <span
                style="font-family: EmbArialItalic;">Payment
                Due Date</span></td>
            <td
              style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px; padding-bottom: 10px;">
              ${contextVariables.latestDueDate!}
            </td>
          </tr>
          <tr>
            <td style="width: 62%; font-weight: normal; font-family: 'EmbArial';  border: none; padding-bottom: 10px;">
              Baki Semasa / <span style="font-family: EmbArialItalic;"> Current Balance (RM)</span>
            </td>
            <td
              style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px; padding-bottom: 10px;">
              ${contextVariables.subTotal!}

            </td>
          </tr>
          <tr>
            <td style="width: 62%;  border: none; padding-bottom: 10px;">Bayaran Minimum / <span
                style="font-family: EmbArialItalic;"> Minimum
                Payment (RM)</span></td>
            <td
              style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px; padding-bottom: 10px;">
              ${contextVariables.amountDue!}
            </td>
          </tr>
        </table>
      </div>

      <div style="display: inline-block; width: 49.7%; box-sizing: border-box;">
        <table style="width: 100%; border-collapse: collapse; border: none;">
          <th style="border: none;"></th>
          <tr>
            <td style="width: 62%; border: none; padding-bottom: 10px;">Bank / <span
                style="font-family: EmbArialItalic;"> Bank </span> </td>
            <td
              style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px; padding-bottom: 10px;">
            </td>
          </tr>
          <tr>
            <td style="width: 62%;  border: none; padding-bottom: 10px;">Tempat / <span
                style="font-family: EmbArialItalic;">Place </span>
            </td>
            <td style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px;"> </td>
          </tr>
          <tr>
            <td style="width: 62%;  border: none; padding-bottom: 10px;">No. Cek / <span
                style="font-family: EmbArialItalic;">Cheque
                No.</span></td>
            <td
              style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px; padding-bottom: 10px;">
            </td>
          </tr>
          <tr>
            <td style="width: 62%;  border: none; padding-bottom: 10px;">Amaun Cek / <span
                style="font-family: EmbArialItalic;">Cheque Amount
                (RM) </span></td>
            <td
              style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px; padding-bottom: 10px;">

            </td>
          </tr>
          <tr>
            <td style="width: 62%;  border: none; padding-bottom: 10px;">Amaun Bayaran / <span
                style="font-family: EmbArialItalic;">Payment
                Amount (RM) </span></td>
            <td
              style="border: 1px solid #000000; width: 36%; text-align: right; padding: 1px 10px; padding-bottom: 10px;">

            </td>
          </tr>
        </table>
      </div>
    </div>
  </section>
  <div style="border: 0.5px solid; width: 100%; margin-top: 5px;"></div>



  <div class="page-break"></div>


  <div>
    <div class="no-header-footer">
      <div style="text-align: center; margin-bottom: -11px; font-family: EmbArialBold;">
        <p>MAKLUMAT PENTING KAD KREDIT-i</p>
      </div>
      <table style="font-weight: normal; font-size:7px;" class="normal-font custom-table ">
        <tr>
          <th style="width: 20%;">
            <div style="margin: 5px; font-family: EmbArialBold; text-align: left;" class="normal-font">TEMPOH BEBAS CAJ
              KEUNTUNGAN
            </div>
          </th>
          <th style="width: 40%;">
            <div style="margin-left: 5px; margin-top: -7px; margin-bottom: -7px; margin-right:3px ;">
              <p style="font-family: EmbArial;" class="normal-font"> <span style="font-family: EmbArialBold; "> 20 hari
                  tempoh bebas caj
                  keuntungan </span>iaitu tiada caj
                keuntungan ke atas
                transaksi
                pembelian runcit mulai dari
                tarikh pengesahan transaksi tersebut sekiranya baki semasa bulan terdahulu dijelaskan dengan sepenuhnya.
                Tidak
                terpakai untuk transaksi pengeluaran tunai dan pindahan baki.</p>
            </div>
          </th>
          <th style="width: 45%;" rowspan="5">
            <div style="margin-left: 5px; margin-right: 5px; " class="normal-font">
              <span style="font-family:EmbArialBold ;">Peringatan:</span><span>
                Pembayaran hendaklah dibuat</span> <span style="font-family:EmbArialBold ;">SEBELUM TARIKH MATANG</span>

              <p style="font-family: EmbArial;" class="normal-font">
                <span style="font-family: EmbArialBold; text-decoration: underline;">
                  PENGIRAAN BAYARAN MINIMUM
                </span>
                <br />
                <span>
                  Bayaran minimum setiap bulan oleh anda sebagai Ahli Kad adalah seperti
                  yang berikut:
                </span>
              </p>



              <ul style="margin-left: -35px; font-family: EmbArialBold;" class="normal-font">
                <li> <span style="margin-left: 7px;"> 5% dari Baki Penyata (tidak termasuk Pelan Bayaran Ansuran (IPP),
                    Pelan Ansuran Transaksi <span style="margin-left: 7px;">
                      Runcit (RSVP) dan Baki Qard) atau RM50,
                      mana–mana yang lebih tinggi; dan
                    </span> </span></li>
                <li><span style="margin-left: 7px;"> Baki Qard (jika ada); dan </span></li>
                <li> <span style="margin-left: 7px;"> Bayaran Minimum Tertunggak (jika ada); dan</span></li>
                <li><span style="margin-left: 7px;"> Pelan Bayaran Ansuran (IPP) dan Pelan Ansuran Transaksi Runcit
                    (RSVP) (jika ada)* dan</span></li>
                <li> <span style="margin-left: 7px;"> Program Penukaran Baki Automatik (ABC) (jika ada)**;</span>
                </li>

              </ul>


              <p style="font-family:EmbArialItalicBold;">Nota:</p>
              <p style="font-family:EmbArial;" class="normal-font"><span style="font-family:EmbArialItalicBold;">Baki
                  Qard
                  -</span>
                <span>Bermaksud mana-mana
                  transaksi yang
                  diluluskan yang
                  menyebabkan pengunaan kad kredit melebihi had pembiayaan melalui
                  permohonan Ahli Kad dan dengan budi bicara bank. Baki Qard boleh dikira
                  dengan menolak amaun Baki Penyata dengan had pembiayaan.</span>
              </p>
              <p style="font-family:EmbArial;" class="normal-font"> <span style="font-family:EmbArialBold ;">Bayaran
                  Minimum Tertunggak -</span> <span>
                  Bermaksud jumlah bayaran minimum bulan
                  sebelumnya yang masih belum dilunaskan.</span></p>

              <p style="font-family:EmbArialBold;" class="normal-font"> <span> *Hanya untuk langganan IPP dan RSVP
                  baharu
                  dari 2 Oktober 2019 dan
                  seterusnya</span> <br /><span>**Untuk program ABC baharu pada 2 Januari 2020</span></p>

              <p style="font-family:EmbArial;" class="normal-font"><span
                  style="font-family:EmbArialBold; text-decoration: underline;">Contoh
                  illustrasi di mana:</span><br />
                <span> Caj Keuntungan adalah 17.5% setahun, 30 hari sebulan dan tiada transaksi
                  baru.</span>
              </p>
              <div>
                <div>
                  <table style=" width: 80%; border-collapse: collapse; text-align: center; margin: 1.5px;"
                    class="normal-font custom-table">
                    <tr>
                      <th style="border: 1px solid black; padding: 8px; font-family: EmbArialBold;" class="normal-font">
                        Baki
                        Semasa</th>
                      <th colspan="2" style="border: 1px solid black; padding: 8px;  font-family:EmbArialBold;"
                        class="normal-font">
                        RM 3,000
                      </th>
                      <th colspan="2" style="border: 1px solid black; padding: 8px;  font-family:EmbArialBold;"
                        class="normal-font">
                        RM 5,000
                      </th>
                      <th colspan="2" style="border: 1px solid black; padding: 8px;  font-family:EmbArialBold;"
                        class="normal-font">
                        RM 10,000
                      </th>
                    </tr>
                    <tr>
                      <th style="border: 1px solid black; padding: 8px;  font-family: EmbArial;" class="normal-font">
                        Bayaran
                        (RM)
                      </th>
                      <th style="border: 1px solid black; padding: 8px;  font-family: EmbArial;" class="normal-font">
                        <div style="text-decoration: underline;"> Minimum RM150 untuk
                          bulan pertama</div>
                      </th>
                      <th style="border: 1px solid black; padding: 8px; font-family: EmbArial;" class="normal-font">
                        RM250** setiap bulan
                      </th>
                      <th style="border: 1px solid black; padding: 8px;" class="normal-font">
                        <div style="text-decoration: underline;"> Minimum RM250 untuk
                          bulan pertama</div>
                      </th>
                      <th style="border: 1px solid black; padding: 8px; " class="normal-font">
                        RM350** setiap bulan
                      </th>
                      <th style="border: 1px solid black; padding: 8px;" class="normal-font">
                        <div style="text-decoration: underline;"> Minimum RM500 untuk
                          bulan pertama</div>
                      </th>
                      <th style="border: 1px solid black; padding: 8px;" class=" normal-font">
                        RM650** setiap bulan
                      </th>
                    </tr>
                    <tr>
                      <td style="border: 1px solid black; padding: 8px;">Tempoh Bayaran (Bulan)</td>
                      <td style="border: 1px solid black; padding: 8px;">55</td>
                      <td style="border: 1px solid black; padding: 8px;">14</td>
                      <td style="border: 1px solid black; padding: 8px;">69</td>
                      <td style="border: 1px solid black; padding: 8px;">17</td>
                      <td style="border: 1px solid black; padding: 8px;">88</td>
                      <td style="border: 1px solid black; padding: 8px;">18</td>
                    </tr>
                    <tr>
                      <td style="border: 1px solid black; padding: 8px;">Jumlah Caj Keuntungan (RM)</td>
                      <td style="border: 1px solid black; padding: 8px;">1014.42</td>
                      <td style="border: 1px solid black; padding: 8px;">322.16</td>
                      <td style="border: 1px solid black; padding: 8px;">1837.97</td>
                      <td style="border: 1px solid black; padding: 8px;">647.84</td>
                      <td style="border: 1px solid black; padding: 8px;">3896.83</td>
                      <td style="border: 1px solid black; padding: 8px;">1407.60</td>
                    </tr>
                    <tr>
                      <td style="border: 1px solid black; padding: 8px;">Jumlah Keseluruhan (RM)</td>
                      <td style="border: 1px solid black; padding: 8px;">4014.42</td>
                      <td style="border: 1px solid black; padding: 8px;">3322.16</td>
                      <td style="border: 1px solid black; padding: 8px;">6837.97</td>
                      <td style="border: 1px solid black; padding: 8px;">5647.84</td>
                      <td style="border: 1px solid black; padding: 8px;">13896.83</td>
                      <td style="border: 1px solid black; padding: 8px;">11407.60</td>
                    </tr>
                  </table>
                </div>
                <div style="margin-top: 1px; margin-left: 3px;">
                  <span style="font-family: EmbArialBold; text-decoration: underline;" class="normal-font">**Bayaran
                    bulan
                    terakhir adalah kurang
                    daripada
                    nilai yang
                    dipaparkan</span>
                </div>
                <p style="font-family: EmbArial;" class="normal-font"><span
                    style="font-family:EmbArialBold ; text-decoration: underline;">PERUNTUKAN
                    PEMBAYARAN</span><br />
                  Daripada pembayaran yang diterima, Bank Islam akan memperuntukkan
                  pembayaran berkenaan untuk menyelesaikan baki semasa berdasarkan
                  kepada kadar keuntungan, dengan mengutamakan item-item yang mempunyai
                  kadar keuntungan yang tertinggi kepada yang terendah.</p>
                <p style="font-family: EmbArial;" class="normal-font"><span
                    style="font-family:EmbArialBold ; text-decoration: underline;">KETEPATAN PENYATA</span><br />
                  Sila semak penyata akaun Kad Kredit-i anda dan sekiranya terdapat sebarang
                  kesilapan/percanggahan, anda dikehendaki untuk maklumkan kepada Bank
                  Islam secara bertulis dalam masa empat belas (14) hari dari tarikh penyata.
                  Jika tidak, penyata tersebut dianggap tepat dan sah.</p>
                <p style="font-family: EmbArial;" class="normal-font"><span
                    style="font-family:EmbArialBold ; text-decoration: underline;">KEHILANGAN ATAU KECURIAN
                    KAD</span><br />
                  Sila maklumkan kepada Bank dengan serta-merta apabila mengetahui Kad
                  Kredit-i anda telah hilang, dicuri, urus niaga tanpa kebenaran telah berlaku
                  atau PIN mungkin terjejas atau menerima mesej pesanan ringkas (SMS)
                  mengenai transaksi tanpa kebenaran telah berlaku dengan menghubungi
                  talian 03-26 900 900 dan disusuli dengan surat pengesahan secara bertulis
                  beserta laporan polis. Sekiranya kehilangan/kecurian kad berlaku di luar
                  negara, sila hubungi MasterAssist Travel Assistance Service dan/atau Visa
                  Emergency Assistance untuk bantuan.</p>

                <p style="font-family: EmbArial;" class="normal-font"><span
                    style="font-family:EmbArialBold ; text-decoration: underline;">PERTUKARAN MAKLUMAT</span><br />
                  Anda hendaklah memaklumkan Bank Islam secara bertulis untuk sebarang
                  pertukaran maklumat yang berkenaan seperti nombor telefon dan alamat surat
                  menyurat dan lain-lain untuk memastikan sebarang makluman akan dapat
                  disalurkan secara efektif.</p>


                <div style="font-family: EmbArial; margin-left: 10px; margin-top: 10px;" class="normal-font">
                  <div style="font-family: EmbArialBold; text-decoration: underline; margin-left: -10px;">LIABILITI
                    AKIBAT
                    TRANSAKSI YANG
                    TIDAK DISAHKAN</div>
                  <div>
                    <span style="margin-left: 3px; font-family: EmbArialBold;"> i.</span> <span> Anda akan
                      bertanggungjawab ke atas transaksi tanpa
                      kebenaran yang</span>
                    memerlukan pengesahan PIN <span style="margin-left: 8px;"> &#160;jika anda:</span>
                  </div>
                </div>

                <div style="font-family: EmbArial; margin-left: 15px; margin-top: 10px; padding: 5px; line-height: 1.3;"
                  class="normal-font">
                  <div style="display: inline-block; margin-top: -4px;">
                    <div>
                    </div>
                    <span style="font-size: 10px; margin-right: 10px; vertical-align: middle;">&#8226;</span>
                    <span style="vertical-align: middle;">bertindak melakukan penipuan;</span>
                  </div>
                  <br />
                  <div style="display: inline-block; margin-top: -4px; line-height: 1;">
                    <span style="font-size: 10px; margin-right: 10px; vertical-align: middle;">&#8226;</span>
                    <span style="vertical-align: middle;">lewat memaklumkan kepada Bank Islam sebaik sahaja selepas
                      mendapati kehilangan
                      atau</span>
                    <span style="vertical-align: middle; display: block; margin-left: 17px;">penggunaan Kad Kredit-i
                      anda
                      tanpa
                      kebenaran;</span>
                  </div>

                  <br />
                  <div style="display: inline-block; margin-top: -4px;">
                    <span style="font-size: 10px; margin-right: 10px; vertical-align: middle;">&#8226;</span>
                    <span style="vertical-align: middle;">mendedahkan butir-butir atau PIN anda kepada orang lain secara
                      sukarela;</span>
                  </div>
                  <br />
                  <div style="display: inline-block; margin-top: -4px; line-height: 1;">
                    <span style="font-size: 10px; margin-right: 10px; vertical-align: middle;">&#8226;</span>
                    <span style="vertical-align: middle;">menulis/merekodkan PIN anda di atas Kad Kredit-i, atau apa-apa
                      sahaja
                      yang</span>
                    <span style="vertical-align: middle; display: block; margin-left: 15px;">disimpan di kawasan
                      berdekatan dengan Kad
                      Kredit-i anda.</span>
                  </div>

                </div>




              </div>


              <div style="font-family: EmbArial; margin-left: 20px; line-height: 0.9;">
                <span style="margin-left: -8px;font-family: EmbArialBold;">ii.</span>
                <div style="margin-top: -7px; padding-left: -10px;">
                  <span style="margin-left: 1px;">Anda akan bertanggungjawab ke atas transaksi tanpa kebenaran bagi
                    transaksi dengan kad yang</span>
                  <span style="display: inline-block; margin-right: 20px;">
                    memerlukan pengesahan tandatangan atau penggunaan kad ciri tanpa sentuh, jika anda:
                  </span>
                </div>


                <div style="display: flex; align-items: flex-start;">
                  <span style="font-size: 10px; margin-right: 10px;">&#8226;</span>
                  <span>bertindak melakukan penipuan;</span>
                </div>

                <div style="display: flex; align-items: flex-start;">
                  <span style="font-size: 10px; margin-right: 10px;">&#8226;</span>
                  <span>lewat memaklumkan kepada Bank Islam sebaik sahaja selepas mendapati kehilangan atau</span>
                  <span style="margin-left: 17px;">penggunaan Kad Kredit-i anda tanpa kebenaran;</span>
                </div>

                <div style="display: flex; align-items: flex-start;">
                  <span style="font-size: 10px; margin-right: 10px;">&#8226;</span>
                  <span>meninggalkan Kad Kredit-i anda atau apa sahaja yang mengandungi Kad Kredit-i anda dalam</span>
                  <span style="margin-left: 17px;">keadaan tanpa pengawasan, di tempat-tempat yang boleh dilihat dan
                    boleh
                    diakses
                    oleh orang <span>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;lain; membenarkan orang lain
                      menggunakan Kad Kredit-i anda secara sukarela.</span></span>
                </div>

                <div style="display: flex; align-items: flex-start;">
                  <span style="font-size: 10px; margin-right: 10px;">&#8226;</span>
                  <span>membenarkan orang lain menggunakan Kad Kredit-i anda secara sukarela.</span>
                </div>
              </div>


              <div style="font-family: EmbArial; margin-top: 20px;">
                <ul style="list-style-position: inside; padding: 0; margin: 0; line-height: 1.5;">
                  <li> <span style="margin-left: 15px;">Untuk perkara yang berkaitan dengan Kad Kredit-i Bank Islam
                      Mastercard
                      atau Visa
                      anda,sila <span style="padding-left: 25px;"> hubungi:</span></span></li>
                </ul>
              </div>



              <p style="font-family: EmbArial; margin-left: 22px;" class="normal-font">
                <span style="font-family: EmbArialBold;">Pusat Kad Bank Islam,</span><br />
                <span style="font-family: EmbArialBold;">Aras 24, Menara Bank Islam, No 22 Jalan Perak,</span><br />
                <span style="font-family: EmbArialBold;">50450 Kuala Lumpur</span><br />
                <span>Emel: bicc.customer.service@bankislam.com.my</span><br />
                <span>Tel.: 03-26 900 900</span><br />
                <span>Fax: 03-2726 7606</span>
              </p>




              <div style="font-family: EmbArial; margin-top: -9px;">
                <ul style="list-style-position: inside; padding: 0; margin: 0; line-height: 1.5;">
                  <li> <span style="margin-left: 12px;">Untuk
                      maklumat perbankan
                      umum, layarilah <span style="text-decoration: underline;"> www.bankinginfo.com.my</span></span>
                  </li>
                </ul>
              </div>




              <div style="font-family: EmbArial; margin-top: 7px;">
                <ul style="list-style-position: inside; padding: 0; margin: 0; line-height: 1.5;">
                  <li> <span style="margin-left: 12px;">Untuk pertanyaan
                      mengenai sektor kewangan, sila hubungi Bank Negara
                      Malaysia melalui:</span></li>
                </ul>
              </div>

              <p style="font-family: EmbArial; margin-left: 22px;" class="normal-font">
                <span style="font-family: EmbArialBold;">Pusat Perkhidmatan Pelanggan BNMLINK,</span><br />
                <span style="font-family: EmbArialBold;">Tingkat Bawah, Blok D, Jalan Dato’ Onn,</span><br />
                <span style="font-family: EmbArialBold;">50450 Kuala Lumpur</span><br />
                <span>Emel: <span style="text-decoration: underline;"> bnmtelelink@bnm.gov.my</span></span><br />
                <span>Tel.: 1-300-88-5465 (Isnin – Jumaat : 9:00am–5:00pm)</span><br />
                <span>Fax: 03-2174 1515</span>
              </p>

            </div>
          </th>

        </tr>

        <tr>
          <th>
            <div style="margin: 5px; font-family: EmbArialBold; text-align: left;" class="normal-font">MAKLUMAT KADAR
              CAJ
              KEUNTUNGAN</div>
          </th>
          <th style=" margin: 5px;">
            <div style="margin-left: 5px;font-family:EmbArialBold;" class="normal-font">
              <p> <span>i)</span><span style="margin-left: 5px;"> Transaksi Runcit</span><br />
                <span style="margin-left: 3.5px; font-family:EmbArialItalicBold ;"> [(Baki–Pembayaran)x Caj Keuntungan
                  Tahunan] x</span><br />
                <span style="margin-left: 25px;  font-family:EmbArialItalicBold ;"> [(Jumlah hari-20) / 365]</span>
              </p>

              <p> <span>ii)</span><span style="margin-left: 5px;">Transaksi Pengeluaran Tunai</span><br />
                <span style="margin-left: 3.5px;  font-family:EmbArialItalicBold ;"> [(Baki–Pembayaran)x Caj Keuntungan
                  Tahunan] x</span><br />
                <span style="margin-left: 25px;  font-family:EmbArialItalicBold ;">[Jumlah hari / 365]</span>
              </p>

              <!-- <p>iii) Transaksi Runcit Pindahan Baki</p> -->
              <p> <span>iii)</span><span style="margin-left: 5px;">Transaksi Runcit &amp; Pindahan Baki</span>

              </p>
            </div>
            <div style="margin-top: 10px; margin: 5px;">
              <table class="normal-font custom-table" style="border-spacing: 3px;">
                <tr>
                  <td> <span style="font-family: EmbArialBold;margin-left: 3px;" class="normal-font">13.5% </span>
                    <span style="font-family: EmbArial;margin-left: 3px;">setahun:</span>
                  </td>
                  <td style="font-family: EmbArial; padding-left: 3px; padding-right: 3px;" class="normal-font">Dengan
                    pelunasan bayaran
                    minimum
                    bagi 12 bulan berturut-turut</td>

                </tr>
                <tr>

                  <td> <span style="font-family: EmbArialBold; margin-left: 3px;" class="normal-font">16.0% </span>
                    <span style="font-family: EmbArial; margin-left: 3px;">setahun:</span>
                  </td>
                  <td style="font-family: EmbArial; padding-left: 3px; padding-right: 3px;" class="normal-font">Dengan
                    pelunasan bayaran minimum
                    bagi 10 atau 11 kali bayaran untuk 12
                    bulan terakhi</td>


                </tr>
                <tr>

                  <td> <span style="font-family: EmbArialBold; margin-left: 3px;" class="normal-font">17.5% </span>
                    <span style="font-family: EmbArial; margin-left: 3px;">setahun:</span>
                  </td>
                  <td style="font-family: EmbArial; padding-left: 3px; padding-right: 3px;" class="normal-font">
                    Dengan perlunasan minimum bagi 9 kali atau kurang untuk 12 bulan terakhir
                  </td>


                </tr>

              </table>
              <p style="font-family:EmbArialBold ;" class="normal-font"> <span>iv)</span><span
                  style="margin-left: 5px;">Pengeluaran Tunai
                  &amp; Pindahan baki ke akaun
                  Bank </span> <span style="margin-left: 13.5px;">Islam -</span>
                <span style="font-family:EmbArial; text-align: left;" class="normal-font">18% setahun</span>
              </p>
            </div>
          </th>


        </tr>
        <tr>
          <th>
            <div style="margin-left: 5px;font-family:EmbArialBold ;" class="normal-font">FI DAN CAJ</div>
          </th>
          <th>
            <div style="margin: 5px;">
              <p style="font-family: EmbArialBold;" class="normal-font"><span>i)</span> <span
                  style="margin-left: 5px;">Yuran Tahunan</span>
              </p>
              <table style="text-align: center; width: 100%;" class="normal-font custom-table">
                <tr>
                  <td rowspan="2" style="font-family:EmbArialBold ;">Jenis Kad</td>
                  <td colspan="2" style="font-family:EmbArialBold ;">Mastercard</td>
                </tr>
                <tr>
                  <td style="font-family:EmbArialBold ;">Utama</td>
                  <td style="font-family:EmbArialBold ;">Tambahan</td>
                </tr>
                <tr>
                  <td>World</td>
                  <td>777</td>
                  <td>333</td>

                </tr>
                <tr>
                  <td>Platinum</td>
                  <td>388</td>
                  <td>150</td>

                </tr>
                <tr>
                  <td>Emas</td>
                  <td>130</td>
                  <td>60</td>

                </tr>
                <tr>
                  <td rowspan="2" style="font-family:EmbArialBold ;">Jenis Kad</td>
                  <td colspan="2" style="font-family:EmbArialBold ;">VISA</td>
                </tr>
                <tr>
                  <td style="font-family:EmbArialBold ; width: 30%;">Utama</td>
                  <td style="font-family:EmbArialBold ;width: 30%;">Tambahan</td>
                </tr>
                <tr>
                  <td>Infinite</td>
                  <td>777</td>
                  <td>333</td>

                </tr>
                <tr>
                  <td>Platinum</td>
                  <td>388</td>
                  <td>150</td>

                </tr>
                <tr>
                  <td>Emas</td>
                  <td>130</td>
                  <td>60</td>

                </tr>
              </table>

            </div>
            <div style="margin-left: 5px;">

              <p style="font-family: EmbArialBold;" class="normal-font">
                <span>ii)</span>
                <span style="margin-left: 10px;">Permintaan Penyata Tambahan</span><br />
              <div style="display: inline-block; margin-top: -10px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span style="margin-left: 10px; font-family: EmbArial; display: inline; vertical-align: middle;"> RM5.00
                  bagi setiap
                  salinan penyata</span>
              </div>
              </p>




              <p style="font-family: EmbArialBold;" class="normal-font">
                <span>iii)</span>
                <span style="margin-left: 10px;">Permintaan Draf Jualan</span><br />
              <div style="display: inline-block; margin-top: -10px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span style="margin-left: 10px; font-family: EmbArial; display: inline; vertical-align: middle;"> RM5.00
                  bagi setiap
                  salinan Draf Jualan</span>
              </div><br />
              <div style="display: inline-block; margin-top: -10px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span style="margin-left: 10px; font-family: EmbArial; display: inline; vertical-align: middle;">
                  RM15.00
                  bagi setiap
                  Draf Jualan Asal</span>
              </div>
              </p>



              <div class="normal-font">
                <span style="margin-left: 1px; font-family: EmbArialBold; ">iv)</span>
                <span style="padding-left: 10px; font-family: EmbArialBold;">Caj Pengeluaran Tunai</span>
                <div style="margin-left: 20px; margin-top: 10px;">
                  <div style="display: inline-block; margin-top: -15px;">
                    <span style="font-size: 10px; margin-left: -10px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">2.5%
                      daripada
                      nilai pengeluaran tunai atau RM12.00 (mana-mana yang lebih tinggi) di ATM Bank Islam.</span>
                  </div>
                  <br />
                  <div style="display: inline-block; margin-top: -7px;">
                    <span style="font-size: 10px; margin-left: -10px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">3%
                      daripada nilai
                      pengeluaran tunai atau RM50 (mana-mana yang lebih tinggi) di ATM MEPS atau bank-bank lain.</span>
                  </div>
                </div>
              </div>




              <p style="font-family: EmbArialBold;" class="normal-font">
                <span>v)</span>
                <span style="margin-left: 10px;">Caj
                  Penggantian Kad</span><br />
              <div style="display: inline-block; margin-top: -4px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span style="margin-left: 10px; font-family: EmbArial; display: inline; vertical-align: middle;">
                  RM50 untuk semua jenis kad</span>
              </div>
              </p>



              <div class="normal-font" style="margin-top: 10px;">
                <span style="margin-left: 1px; font-family: EmbArialBold; ">vi)</span>
                <span style="padding-left: 10px; font-family: EmbArialBold;">Transaksi Luar Negara</span>
                <div style="margin-left: 20px; margin-top: 10px;">
                  <div style="display: inline-block; margin-top: -10px;">
                    <span style="font-size: 10px; margin-left: -10px; vertical-align: middle;">&#8226;</span>
                    <span
                      style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">Kadar
                      pertukaran wang asing adalah ditentukan
                      oleh Mastercard Worldwide atau Visa Worldwide
                      pada tarikh penerimaan dan/atau pemprosessan
                      transaksi oleh Bank Islam.</span>
                  </div>
                </div>
              </div>




              <div class="normal-font" style="margin-top: 5px;">
                <span style="margin-left: 1px; font-family: EmbArialBold; ">vii)</span>
                <span style="padding-left: 10px; font-family: EmbArialBold;">Caj Ganti rugi Atas Kelewatan
                  Pembayaran</span><br />
                <span style="padding-left: 20px; font-family:EmbArialItalic ;">(Selaras Dengan Garis Panduan Kad
                  Kredit-i
                  BNM)</span>
                <div style="margin-left: 20px; margin-top: 10px;">
                  <div style="display: inline-block; margin-top: -10px;">
                    <span style="font-size: 10px; margin-left: -10px; vertical-align: middle;">&#8226;</span>
                    <span style="margin-left: 5px; font-family: EmbArial; display: inline; vertical-align: middle;">1%
                      ke
                      atas jumlah baki semasa atau minimum
                      RM5.00, yang mana lebih tinggi, tertakluk pada
                      maksimum RM 50.00</span>
                  </div>
                </div>
              </div>

              <p style="font-family: EmbArialBold;" class="normal-font">
                <span>viii)</span>
                <span style="margin-left: 10px;">Cukai Perkhidmatan</span><br />
              <div style="display: inline-block; margin-top: -10px;">
                <span style="font-size: 10px; margin-left: 10px; vertical-align: middle;">&#8226;</span>
                <span
                  style="margin-left: 10px; font-family: EmbArial; display: inline; vertical-align: middle; margin-top: 5px;">
                  RM25
                  untuk setiap kad</span>
              </div>
              </p>
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

              <p style="font-family: EmbArialBold;" class="normal-font"><span>i)</span>
                <span style="margin-left: 10px;">Wang Tunai -</span> <span style="font-family: EmbArial;">
                  Melalui kaunter atau Mesin Deposit</span><br />
                <span style="margin-left: 17px; font-family: EmbArial;">
                  Tunai di cawangan-cawangan Bank Islam.</span>
              </p>


              <div style="margin-right: 5px;">
                <p style="font-family: EmbArialBold;" class="normal-font">
                  <span>ii)</span>
                  <span style="margin-left: 9px;">Cek* -</span>
                  <span style="font-family: EmbArial;">Atas nama</span>
                  <span style="font-family: EmbArialItalicBold;">“Pusat Kad Bank Islam untuk</span><br />
                  <span style="font-family:  EmbArialItalicBold; margin-left: 17px;">
                    nama penuh Pemegang Kad Utama”.
                  </span>
                <div style="margin-left: 17px; font-family: EmbArial;" class="normal-font">Sila
                  nyatakan nombor-nombor kad anda dibelakang cek
                  serta amaun pembayaran bagi setiap kad. Poskan
                  cek tersebut ke Pusat Kad Bank Islam, Bank Islam
                  Malaysia Berhad, P.O.Box 13296, 50806 Kuala
                  Lumpur atau masukkannya di mesin cek deposit di
                  mana-mana cawangan Bank Islam.</div>
                </p>
                <p style="font-family: EmbArialBold;" class="normal-font"><span>iii)</span>
                  <span style="margin-left: 10px;">Arahan Tetap –</span> <span style="font-family: EmbArial;">
                    Melalui akaun Bank Islam anda.</span><br />
                  <span style="margin-left: 20px; font-family: EmbArial;">
                    Sila pastikan baki di dalam akaun adalah</span><br />
                  <span style="margin-left: 20px; font-family: EmbArial;">
                    mencukupi.</span>

                </p>
                <p style="font-family: EmbArialBold;" class="normal-font"><span>iv)</span>
                  <span style="margin-left: 10px;">Pindahan Wang melalui Perbankan Internet
                    –</span> <br /><span style="margin-left: 20px; font-family: EmbArialBold;">
                    GIRO antara Bank (IBG) / Pindahan Segera</span><br />

                  <span style="margin-left: 20px;">
                    (IBFT)</span>

                </p>
                <p style="font-family: EmbArialBold;" class="normal-font"><span>v)</span>
                  <span style="margin-left: 10px;">Pindahan Wang </span> <span style="font-family: EmbArial;">
                    melalui mesin ATM Bank Islam,</span><br />
                  <span style="margin-left: 17px; font-family: EmbArial;">
                    Interbank GIRO dan TAP</span>
                </p>

                <p style="font-family: EmbArialItalic;" class="normal-font"><span
                    style="font-family: EmbArialItalicBold;" class="normal-font"> *Peringatan:</span> Sila beri masa
                  yang
                  mencukupi untuk
                  proses penghantaran serta penjelasan cek anda dan
                  jangan kirimkan wang tunai melalui pos.</p>
              </div>




            </div>

          </th>


        </tr>
        <tr>
          <th style="font-family: EmbArialBold;" class="normal-font" rowspan="2" colspan="2">
            <div style="margin-top: 50px; margin-bottom: 54px; padding: 5px;">

              Untuk Lembaran Pendedahan Produk
              dan Terma dan Syarat
              Kad
              Kredit-i Bank Islam, sila layari laman web Bank Islam di
              www.bankislam.com
            </div>
          </th>


        </tr>

      </table>
    </div>

    <div class="page-break"></div>
    <!-- Section 01 : Card -->
    <section style="clear: both; font-size: 12px; margin-top: 5px;">
      <table style="width: 100%; border-collapse: collapse; text-align: left;" class="normal-font">
        <thead>
          <div style="width: 615%;margin-bottom: 10px;margin-top: 17px;">
            <div style="border: 1px solid black; padding: 5px; font-size: 14px; font-family:EmbArialBold;"
              class="normal-font">
              KAD-i BANK ISLAM / <span style="font-family: EmbArialItalicBold;">BANK ISLAM CARD-i</span>
            </div>

            <div style="margin-top: 10px; text-align: left;">
              <div style="display: inline-block; width: 33%; margin-right: -4px; font-family:EmbArialBold ;"
                class="normal-font">
                Tarikh Penyata <br /> <span style="font-family:EmbArialItalicBold ;"> Statement Date</span>
              </div>
              <div style="display: inline-block; width: 33%; font-family:EmbArialBold ; margin-right: -4px;"
                class="normal-font">
                Tarikh Matang <br /><span style="font-family:EmbArialItalicBold ;"> Payment Due Date</span>
              </div>
              <div style="display: inline-block; width: 33%; font-family: EmbArialBold; margin-right: 0;"
                class="normal-font">
                Had Pembiayaan (RM) <br /><span style="font-family:EmbArialItalicBold ;"> Financing Limit (RM)</span>
              </div>
            </div>
            <div style="margin-top: 5px; text-align: left;">
              <div
                style="display: inline-block; width: 30%; border-bottom: 1px solid; margin-right: 15px; text-align: center;">
                <span>${contextVariables.processingDate!}</span>
              </div>
              <div
                style="display: inline-block; width: 30%; border-bottom: 1px solid; margin-right: 15px; text-align: center;">
                <span>${contextVariables.latestDueDate!}</span>
              </div>
              <div
                style="display: inline-block; width: 33%; border-bottom: 1px solid; margin-right: 0; text-align: center;">
                <span>${contextVariables.financingLimit!}</span>
              </div>
            </div>

            <div style="margin-top: 5px; text-align: left;">
              <div style="display: inline-block; width: 33%; font-family: EmbArialBold; margin-right: -4px;"
                class="normal-font">
                Keuntungan Dicaj Bulan Ini (RM) <br />
                <span style="font-family: EmbArialItalicBold;"> Profit Charged For This Month (RM)</span>
              </div>
            </div>
            <div style="margin-top: 5px; text-align: left;">
              <div style="display: inline-block; width: 32%; border-bottom: 1px solid; text-align: center;">
                ${contextVariables.profitCharge!}</div>
            </div>
          </div>

          <tr>
            <th
              style="padding: 5px; font-family: EmbArialBold; border-left: 2px solid black;  border-bottom: 2px solid black;border-top: 1px solid;width: 100px;max-width: 100px;"
              class="normal-font">
              Tarikh Urusniaga<br />
              <span style="font-family: EmbArialItalicBold;">Transaction Date</span>
            </th>
            <th
              style="padding: 5px; font-family: EmbArialBold; border-bottom: 2px solid black;border-top: 1px solid;width: 100px;max-width: 100px;"
              class="normal-font">
              Tarikh Pos<br />
              <span style="font-family: EmbArialItalicBold;">Posting Date</span>
            </th>
            <th style="padding: 5px; font-family: EmbArialBold; border-bottom: 2px solid black;border-top: 1px solid"
              class="normal-font">
              Deskripsi Transaksi<br />
              <span style="font-family: EmbArialItalicBold;">Transaction Description</span>
            </th>
            <th
              style="padding: 5px; text-align: right; font-family: EmbArialBold;  border-bottom: 2px solid black;  border-right: 2px solid black;border-top: 1px solid"
              class="normal-font">
              Amaun (RM)<br />
              <span style="font-family: EmbArialItalicBold;">Amount (RM)</span>
            </th>

          </tr>
        </thead>
        <tbody id="table-body-none">
          <#list contextVariables.transactions as transaction>
            <tr id="table-body-none">
              <td style=" padding: 5px;" id="table-body-none ">${transaction.transactionDate!}</td>
              <td style="padding: 5px;" id="table-body-none ">${transaction.postingDate!}</td>
              <td style="padding: 5px; " id="table-body-none ">${transaction.description!}</td>
              <td style="padding: 5px; text-align: right;" id="table-body-none ">${transaction.amount!}</td>
            </tr>
          </#list>
          <tr>
            <td style="padding: 5px; border: none;"></td>
            <td style="padding: 5px; border: none;"></td>
            <td style="padding: 5px; border: none; font-family: EmbArialBold;" class="normal-font">
              ${contextVariables.subTotalTittle!}</td>
            <td style="padding: 5px; text-align: right; border: 1px solid black;">
              ${contextVariables.subTotal!}
            </td>
          </tr>
        </tbody>
      </table>

      <#if contextVariables.messageSecondDetail?has_content>
        <div style="margin-left:34%; font-family:EmbArialItalic; font-weight:normal; font-size: 12px;">
          "${contextVariables.messageSecondDetail!}"
        </div>
      </#if>




      <div style="page-break-inside: avoid;">
        <table style="width: 100%; border-collapse: collapse; margin-top: 20px;" class="normal-font custom-table">
          <tr>
            <td style="border: 1px solid; text-align: left; font-family: EmbArialItalicBold; padding: 5px;">
              TruPoints Diperolehi Pada Bulan Lepas<br /><span style="font-family: EmbArial;">TruPoints Earned Previous
                Month</span>
            </td>
            <td style="border: 1px solid; text-align: left;   font-family: EmbArialItalicBold;padding: 5px;">
              TruPoints Diperolehi<br /><span style="font-family: EmbArial;">TruPoints Earned</span>
            </td>
            <div style="margin: 0; padding: 5px; line-height: 1; text-align: left;">
              <span style="font-family: EmbArialItalicBold; display: inline-block; line-height: 1;">
                TruPoints Yang Telah Dilunaskan </span>
              <br />
              <span style="font-family: EmbArial; display: inline-block; line-height: 1; margin-top: -10px;">
                TruPoints Redeemed </span>
            </div>

            <td style="border: 1px solid; text-align: left; font-family: EmbArialItalicBold; padding: 5px;">
              Jumlah TruPoints Terkumpul<br /><span style="font-family: EmbArial;">Total Accumulated TruPoints</span>
            </td>
            <td style="border: 1px solid; text-align: left; font-family: EmbArialBold; padding: 5px;">



              <div style="margin: 0; padding: 0; line-height: 1;">
                <span style="font-family: EmbArialItalicBold; display: inline-block; line-height: 1;">
                  TruPoints Yang Akan Luput Dalam Masa 6 Bulan
                </span>
                <br />
                <span style="font-family: EmbArial; display: inline-block; line-height: 1; margin-top: -10px;">
                  TruPoints Expiring in 6 Months
                </span>
              </div>

            </td>
          </tr>
          <tr>
            <td style="border: 1px solid; text-align: center; padding: 8px;">${contextVariables.pointEarn!}</td>
            <td style="border: 1px solid; text-align: center; padding: 8px;">${contextVariables.pointRedeem!}</td>
            <td style="border: 1px solid; text-align: center; padding: 8px;">${contextVariables.pointCarry!}</td>
            <td style="border: 1px solid; text-align: center; padding: 8px;">${contextVariables.pointTotal!}</td>
            <td style="border: 1px solid; text-align: center; padding: 8px;">${contextVariables.pointExpired!}</td>
          </tr>

        </table>

        <p style="font-size: 12px;">
          Layari https://trurewards.bankislam.com.my untuk pendaftaran Akaun
          TruRewards, semakan mata ganjaran TruPoints terkini dan penebusan
          TruPoints.<br /> Untuk Terma dan Syarat, sila layari www.bankislam.com <br />Visit
          https://trurewards.bankislam.com.my for TruRewards Account registration,
          latest TruPoints balance and TruPoints redemption. For Terms and
          Conditions, log on to www.bankislam.com
        </p>
      </div>
    </section>
  </div>



</body>

</html>