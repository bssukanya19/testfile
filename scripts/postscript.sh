<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>DevOps Dashboard</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background: #0f172a;
      color: #e2e8f0;
    }

    header {
      background: #1e293b;
      padding: 15px;
      text-align: center;
      font-size: 22px;
      font-weight: bold;
    }

    .container {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 15px;
      padding: 20px;
    }

    .card {
      background: #1e293b;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.3);
    }

    .status {
      font-size: 18px;
      margin-top: 10px;
    }

    .success { color: #22c55e; }
    .failed { color: #ef4444; }
    .running { color: #facc15; }

    button {
      margin-top: 10px;
      padding: 8px 12px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      background: #3b82f6;
      color: white;
    }
  </style>
</head>

<body>

<header>🚀 DevOps Pipeline Dashboard</header>

<div class="container">

  <div class="card">
    <h3>Build Status</h3>
    <div id="build" class="status running">Running...</div>
    <button onclick="changeStatus('build')">Trigger Build</button>
  </div>

  <div class="card">
    <h3>CI Tests</h3>
    <div id="test" class="status success">Passed</div>
    <button onclick="changeStatus('test')">Run Tests</button>
  </div>

  <div class="card">
    <h3>Deployment</h3>
    <div id="deploy" class="status failed">Failed</div>
    <button onclick="changeStatus('deploy')">Deploy</button>
  </div>

</div>

<script>
  function changeStatus(id) {
    const el = document.getElementById(id);

    const states = [
      { text: "Running...", class: "running" },
      { text: "Success", class: "success" },
      { text: "Failed", class: "failed" }
    ];

    const random = states[Math.floor(Math.random() * states.length)];

    el.className = "status " + random.class;
    el.innerText = random.text;
  }
</script>

</body>
</html>