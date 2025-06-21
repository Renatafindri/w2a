#!/bin/bash

# GANTI INI DULU SEBELUM JALANKAN
ACCESS_TOKEN="EAAZATZCCXi5UkBO3rj5yP6RorGRqetv5D6ONk6aYTA0WuMhKZAByZAZBXt2WxMruvdSSVg17BHYe5cMmR5Dus06ZCQbDJ12Wc9iS6KUXPHaAVyXgKvZCvRTBnZA7IBSDYwDHdFItoD6RU9YGCuBXr0fJZAMEaCYsMTbmkswDO9ucdU76T1iZBDz5KdwZBWAvaEiefXqQAZDZD"
PIXEL_ID="175557530528041"
HASHED_EMAIL="60170b8c8043ec229e78fab5f2a53f8e9eb0e4d5f5d3871e7a376099ca215ef019901944f7caa1e4abc2abcbad185d8edf4ba79c66f70a9073a9947443c5350f"  # SHA256 lowercase email

curl -X POST "https://graph.facebook.com/v17.0/$PIXEL_ID/events" \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $ACCESS_TOKEN" \
-d "{
  \"data\": [
    {
      \"event_name\": \"Purchase\",
      \"event_time\": $(date +%s),
      \"event_source_url\": \"https://yourlandingpage.com/thanks\",
      \"action_source\": \"website\",
      \"user_data\": {
        \"em\": [\"$HASHED_EMAIL\"],
        \"client_ip_address\": \"8.8.8.8\",
        \"client_user_agent\": \"Mozilla/5.0\"
      },
      \"custom_data\": {
        \"currency\": \"IDR\",
        \"value\": 99000
      }
    }
  ]
}"
