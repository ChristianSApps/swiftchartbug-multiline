# Charts are broken with Xcode 27, Plotting multiple lines
Charts—specifically those with multiple lines—are broken in Xcode 27.  
  
First, I spotted the bug in my program, and then I checked your example.  
Your own example [](https://developer.apple.com/documentation/charts/linemark#Plotting-multiple-lines)[Plotting-multiple-lines](https://developer.apple.com/documentation/charts/linemark#Plotting-multiple-lines) is not working correctly anymore.  
It shows 1 line or sometimes no lines at all, depending on the order of the data.  
It depends on how the data is passed to the chart. If the data is passed as separate series, it works.  
In [Visualizing your app’s data](https://developer.apple.com/documentation/charts/visualizing-your-app-s-data) it works, but the data is passed as described before.  

[Apple-Forum](https://developer.apple.com/forums/thread/848280)  
[Bug Report FB25050954](https://feedbackassistant.apple.com/feedback/25050954)

In my last post, I shared my corrected version.
You either need to implement the `Identifiable` protocol—ensuring each data record  
is unique—or specify an `id` field alongside the data when initializing the chart; essentially,  
both approaches achieve the same result.

I also pointed out the erroneous code on the Apple website, providing both a screenshot and a link.
The fact that Apple’s code is now incorrect and triggers an error indicates that something must have changed.

I believe the matter is now resolved.
