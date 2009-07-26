UNOT
====

IDEA
----
  Experement with "unobtrusive templating". Unobtrusive templating is a HTML document which has all of the dynamic content inserted into it externally, rather than explicitly defining the dynamic content using something like ERB.

  The architecture I originally invisaged would have a set of manipulators that could apply to all html files, or a subset of them. These manipulators would be a method that takes the document, performs some manipulations to it (inserting/removing content) and returns the modified document, which would be passed to the next manipulator.

  Possible benefits of this technique could include:

  * Transparent partial caching. Slow operations that need not be executed fresh for every request can be cached at low levels. While other manipulations that occur higher up the manipulation stack can be executed for every request.
  * HTML that's more designer friendly. They needn't bother with all the code in there.
  * Potentially more terse / clear dynamic content insertion. Rather than expecitly saying that this area should render this partial we might say that any div with a certain class will contain this content, as is often the case with unobtrusive JS libraries.

