<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <style type="text/css">
            @use postcss-preset-env;

            @import url(https://weloveiconfonts.com/api/?family=fontawesome);
            @import url(https://meyerweb.com/eric/tools/css/reset/reset.css);

            [class*="fontawesome-"]:before {
                font-family: 'FontAwesome', sans-serif;
            }

            /* ---------- GENERAL ---------- */

            body {
                background: #f4f4f4;
                color: #5a5656;
                display: grid;
                font-family: 'Open Sans', sans-serif;
                line-height: 1.5;
                margin: 0;
                min-height: 100vh;
                place-items: center;
            }

            a { text-decoration: none; }

            h1 { font-size: 1em; }

            h1, p {
                margin-bottom: 10px;
            }

            strong {
                font-weight: bold;
            }

            .uppercase { text-transform: uppercase; }

            /* ---------- LOGIN ---------- */

            #login {
                margin: 50px auto;
                width: 300px;
            }

            form fieldset input[type="text"],
            input[type="password"] {
                appearance: none;
                background: #e5e5e5;
                border: none;
                border-radius: 3px;
                color: #5a5656;
                font-family: inherit;
                font-size: 14px;
                height: 50px;
                outline: none;
                padding: 0px 10px;
                width: 280px;
            }

            form fieldset input[type="submit"] {
                appearance: none;
                background-color: #008dde;
                border: none;
                border-radius: 3px;
                color: #f4f4f4;
                cursor: pointer;
                font-family: inherit;
                height: 50px;
                text-transform: uppercase;
                width: 300px;
            }

            form fieldset a {
                color: #5a5656;
                font-size: 10px;
            }

            form fieldset a:hover { text-decoration: underline; }

            .btn-round {
                background: #5a5656;
                border-radius: 50%;
                color: #f4f4f4;
                display: block;
                font-size: 12px;
                height: 50px;
                line-height: 50px;
                margin: 30px 125px;
                text-align: center;
                text-transform: uppercase;
                width: 50px;
            }

            .facebook-before {
                background: #0064ab;
                border-radius: 3px 0px 0px 3px;
                color: #f4f4f4;
                display: block;
                float: left;
                height: 50px;
                line-height: 50px;
                text-align: center;
                width: 50px;
            }

            .facebook {
                background: #0079ce;
                border: none;
                border-radius: 0px 3px 3px 0px;
                color: #f4f4f4;
                cursor: pointer;
                height: 50px;
                text-transform: uppercase;
                width: 250px;
            }

            .twitter-before {
                background: #189bcb;
                border-radius: 3px 0px 0px 3px;
                color: #f4f4f4;
                display: block;
                float: left;
                height: 50px;
                line-height: 50px;
                text-align: center;
                width: 50px;
            }


            .twitter {
                background: #1bb2e9;
                border: none;
                border-radius: 0px 3px 3px 0px;
                color: #f4f4f4;
                cursor: pointer;
                height: 50px;
                text-transform: uppercase;
                width: 250px;
            }
        </style>
    </head>
    <body>
        <div id="login">

            <h1><strong>Welcome.</strong> Please login.</h1>

            <form action="../admin/loginbackend" method="post">

                <fieldset>

                    <p><input type="text" required name="username" placeholder="username"></p>

                    <p><input type="text" required name="password" placeholder="password"></p>

                    <p>  <a href="register.html">Register</a></p>
                    <p><input type="submit" value="Login"></p>


                </fieldset>

            </form>


        </div>
    </body>
</html>