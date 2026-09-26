# Charts are broken with Xcode 27, Plotting multiple lines
Charts—specifically those with multiple lines—are broken in Xcode 27.  
First, I spotted the bug in my program, and then I checked your example.  
Your own example [](https://developer.apple.com/documentation/charts/linemark#Plotting-multiple-lines)[Plotting-multiple-lines](https://developer.apple.com/documentation/charts/linemark#Plotting-multiple-lines) is not working correctly anymore.  
It shows 1 line or sometimes no lines at all, depending on the order of the data.  
It depends on how the data is passed to the chart. If the data is passed as separate series, it works.  
In [Visualizing your app’s data](https://developer.apple.com/documentation/charts/visualizing-your-app-s-data) it works, but the data is passed as described before.  
[Apple-Forum](https://developer.apple.com/forums/thread/848280)  
