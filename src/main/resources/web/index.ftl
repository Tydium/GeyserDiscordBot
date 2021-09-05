<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <!-- Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

    <title>Geyser Bot: Levels</title>

    <style>
        .avatar {
            border-radius: 50%;
            height: 4rem;
            margin-left: .5rem;
        }
        .place {
            border-radius: 50%;
            height: 3rem;
            width: 3rem;
            background-color: var(--bs-secondary);
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            flex: none;
        }
        .place-1 {
            background-color: #da9e3b;
        }
        .place-2 {
            background-color: #989898;
        }
        .place-3 {
            background-color: #ae7441;
        }
        .btn-toggle-mode {
            position: absolute;
            top: 5px;
            right: 5px;
        }

        .dark-mode {
            background-color: var(--bs-dark);
            color: var(--bs-white);
        }
        .dark-mode .bg-light {
            background-color: #42484c !important;
        }
        .dark-mode .border {
            border-color: var(--bs-gray-dark) !important;
        }
        .dark-mode .text-muted {
            color: #c3ccd5 !important;
        }
        .dark-mode .dark-hidden {
            display: none;
        }
        .dark-visible {
            display: none;
        }
        .dark-mode .dark-visible {
            display: block;
        }
    </style>
</head>
<body class="${darkMode?then('dark-mode', '')}">
<div class="container">
    <div class="d-flex flex-row align-items-center">
        <img src='${guild.iconUrl}' alt='${guild.name}%27s Logo' class='rounded-circle p-2' />
        <h1>
            ${guild.name}<br>
            <small class="text-muted">Levels: Top 100</small>
        </h1>
    </div>

    <button type="button" onclick="toggleDark()" class="btn btn-light dark-visible btn-toggle-mode"><i class="bi bi-sun-fill"></i></button>
    <button type="button" onclick="toggleDark()" class="btn btn-dark dark-hidden btn-toggle-mode"><i class="bi bi-sun"></i></button>

    <div class="row row-cols-1 g-2 pb-2">
        <#list rows as row>
            <div class='col' id="${row.user.id}">
                <div class='p-3 border rounded bg-light'>
                    <div class='row'>
                        <div class='col d-flex flex-row align-items-center'>
                            <div class='place place-${row_index + 1}'>${row_index + 1}</div>
                            <img src='${row.user.effectiveAvatarUrl!}' class='avatar' />
                            <span class='p-2 text-break'>${row.user.name}#${row.user.discriminator}</span>
                        </div>
                        <div class='col-xl-4 text-center justify-content-center justify-content-xl-end d-flex flex-row'>
                            <div class='p-2'>
                                <h6><small class='text-muted'>MESSAGES</small></h6>
                                <h6>${row.messages}</h6>
                            </div>
                            <div class='p-2'>
                                <h6><small class='text-muted'>EXPERIENCE</small></h6>
                                <h6>${row.xp}</h6>
                            </div>
                            <div class='p-2'>
                                <h6><small class='text-muted'>LEVEL</small></h6>
                                <h6>${row.level}</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

<script>
  function toggleDark() {
    document.body.className = document.body.className == "dark-mode" ? "" : "dark-mode";
    document.cookie = "darkMode=" + document.body.className;
  }
</script>
</body>
</html>