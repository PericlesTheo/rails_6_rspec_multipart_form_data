# README

I am trying to test using request specs incoming emails from sendgrid. In their [official repository](https://github.com/sendgrid/sendgrid-ruby/tree/main/lib/sendgrid/helpers/inbound), you can see the payload [they send](https://github.com/sendgrid/sendgrid-ruby/blob/main/lib/sendgrid/helpers/inbound/send.rb#L14-L22) and in their example the code gets parsed correctly. I've tried the same using ngrok and a Rails dev environment, and Rack is parsing it correctly. So the issue is isolated only in the tests.

It seems that rails receives the right `Content-Type` but the parsing fails. I've tried removing the `; boundary=` code from the tests such as
```ruby
post "/sendgrid_emails", params: incoming_email_body, headers: {"Content-Type" => "multipart/form-data"}
```
and the params do include the text but they are not parsed correctly at all. So I don't know if this has something to do with the boundary.
