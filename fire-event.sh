curl -X POST "https://graph.facebook.com/v17.0/1755567535028041/events?access_token=EACNWCjawrToBO7srIb26wIZB5tdJwlRLBMLGHQvQn6do3Wb49Jd27r5ZA2LYHH6YZCzK7XMz6naNhaVUpB7D9jwlZB8tx687Ol9mggHgO9HaReWXf8OeLS5MDTV8iFIgno8aYc656PlzZBuk8oTH8L33gH0Ol2tt67a7NBJuapSRXHYuAnXHJ5ZCtomabZCX5RESwZDZD" \
  -H "Content-Type: application/json" \
  -d '{
    "data": [
      {
        "event_name": "Purchase",
        "event_time": 1719150000,
        "action_source": "website",
        "user_data": {
          "em": ["HASHED_EMAIL"]
        }
      }
    ]
  }'
