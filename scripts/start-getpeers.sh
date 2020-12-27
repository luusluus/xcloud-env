#!/bin/bash

cat > /app/appsettings.json << EOL
{
  "CoinConfig": ${CoinConfig},
  "Logging": {
    "LogLevel": {
      "Default": "Debug",
      "System": "Information",
      "Microsoft": "Information"
    }
  },
  "Kestrel": {
    "EndPoints": {
      "Http": {
        "Url": "http://localhost:8080"
      }
    }
  }
}

EOL

echo "Starting GetPeers Container"

dotnet XCloud.GetPeers.Api.dll