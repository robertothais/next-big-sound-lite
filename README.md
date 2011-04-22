Next Big Sound Lite
--

This gem wraps the Next Big Sound JSON API. Read the API docs {here}[http://api3.nextbigsound.com].

Done? Then you can use this API.

First setup the gem to use your API key:

    NextBigSoundLite.api_key = 'my_key'
    
If you have a private key (for writing):

    NextBigSoundLite.private_key = 'my_private_key'

The methods of this wrapper are organized in the same way as the subsections of the API docs. For example to call the endpoint 'profile' on Metrics you should call:
    
    NextBigSoundLite::Metric.profile(200, :start => 2.months.ago)

Notice that the receiver has a singular name (ala Rails Models)