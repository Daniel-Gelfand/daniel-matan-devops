<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
        body {
            margin: 0px;
            background: #dde0f1;
        }

        .crcl {
            width: 120px;
            height: 120px;
            border-radius: 100%;
            position: relative;
            background-image: url(
            "https://cdn.discordapp.com/attachments/993895174759526571/1019909067839377469/274600022_3202060876741429_8897728087269511044_n.jpg"
            );
            background-size: cover;
            animation: movement;
        }

        /* To set the positions for the logo
        for the whole animation */
        @keyframes movement {
            0% {
                left: 0px;
                top: 0px
            }

            5% {
                left: 300px;
                top: 200px
            }

            10% {
                left: 600px;
                top: 100px
            }

            15% {
                left: 600px;
                top: 600px
            }

            20% {
                left: 300px;
                top: 600px
            }

            25% {
                left: 600px;
                top: 400px
            }

            30% {
                left: 100px;
                top: 0px
            }

            35% {
                left: 600px;
                top: 200px
            }

            40% {
                left: 100px;
                top: 500px
            }

            45% {
                left: 0px;
                top: 600px
            }

            50% {
                left: 600px;
                top: 600px
            }

            55% {
                left: 300px;
                top: 200px
            }

            60% {
                left: 600px;
                top: 100px
            }

            65% {
                left: 800px;
                top: 600px
            }

            70% {
                left: 300px;
                top: 600px
            }

            75% {
                left: 600px;
                top: 400px
            }

            80% {
                left: 100px;
                top: 0px
            }

            85% {
                left: 600px;
                top: 200px
            }

            90% {
                left: 100px;
                top: 500px
            }

            95% {
                left: 0px;
                top: 600px
            }

            100% {
                left: 600px;
                top: 200px;
            }
        }

        .details {
            float: right;
            width: 400px;
            height: 100vh;
            position: relative;
            background-color: rgb(133, 163, 255);
            color: white;
            display: block;
            text-align: center;
        }

        .ground {
            float: left;
        }

        .level {
            display: flex;
            margin: 10px;
            margin-top: 25px;
        }

        .display_score {
            margin-top: 25px;
        }

        button {
            border-radius: 25px;
            width: 8em;
            height: 3em;
            font-size: 20px;
            border: 2px solid white;
            background: transparent;
            color: white;
            margin: 10px;
            cursor: pointer;
        }

        button:hover {
            background-color: white;
            color: rgb(9, 24, 84);
            box-shadow: 0px 10px 20px 10px white;
            transition-duration: 1s;
        }
    </style>
</head>
<body>
<div class="ground">
    <div id="circle" onclick="count()"></div>
</div>
<div class="details">
    <h1>DevOps Final Project Game</h1>
    <h2>By Daniel Gelfand & Matan Bar </h2>
    <h3>Click on a difficulty to start the game</h3>
    <div class="level">
        <button onclick="easy()">EASY</button>
        <button onclick="medium()">MEDIUM</button>
        <button onclick="hard()">HARD</button>
    </div>
    <div class="display_score">
        <h2>Score</h2>
        <h2 id="score">0</h2>
    </div>
    <button onclick="restart()">RESTART</button>
</div>

<script>

    // Setting the level to Easy by having the
    // duration of the whole animation to the maximum
    function easy() {
        document.getElementById('circle')
            .style.animationDuration = '20s';
        document.getElementById('circle')
            .className = 'crcl';
    }

    // Setting the level to Medium by having the
    // duration of the whole animation to the maximum
    function medium() {
        document.getElementById('circle')
            .style.animationDuration = '15s';
        document.getElementById('circle')
            .className = 'crcl';
    }

    // Setting the level to Hard by having the
    // duration of the whole animation to the maximum
    function hard() {
        document.getElementById('circle')
            .style.animationDuration = '12s';
        document.getElementById('circle')
            .className = 'crcl';
    }

    let cnt = 0;

    // Function to count the number of taps
    // and display the score
    function count() {
        cnt = parseInt(1) + parseInt(cnt);
        var scr = document.getElementById('score');
        scr.innerHTML = cnt;
    }

    // Restart the game by refreshing the page
    function restart() {
        window.location.reload();
    }
</script>
</body>
</html>
