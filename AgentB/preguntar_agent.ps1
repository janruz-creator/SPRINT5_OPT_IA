$pregunta = Read-Host "Escribe tu pregunta"
Invoke-RestMethod -Uri "http://localhost:5678/webhook-test/agentb" -Method POST -ContentType "application/json" -Body "{`"body`":{`"content`":`"$pregunta`"}}"
Write-Host "Pregunta enviada!"