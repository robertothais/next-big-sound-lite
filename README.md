Next Big Sound Lite
--

This gem wraps the Next Big Sound JSON API. Read the API docs {here}[http://api3.nextbigsound.com].

Done? Then you can use this API.

First setup the gem to use your API key:

    NBS.api_key = 'your_key'

The methods of this wrapper are organized in the same way as the subsections of the API docs. For example to call the endpoint 'view' on Artists you should call:

    NBS::Artist.view(id)

Notice that the receiver has a singular name (ala Rails Models)

Another example:

    NBS::Metric.profile(id)

Would call the Profile endpoint defined under the Metrics subsection. And so on.

The one gotcha is the rank endpoint on the Artists subsection. It expects a type and an array of ids. E.g.

    NBS::Artist.rank(type, [365, 654, 123])