RRContainerView
============

**iOS6** "Container View" backport to **iOS5**

Disclaimer
============
Use at your own risk. This should be App Store valid but I will update about that after iPad version of [@YPlan](http://yplanapp.com) will be aprooved/rejected :)


What you will find inside
============
If you fork, you will find workspace with 2 projects **RRTestApp** and **RRContainerView**.<br />
**RRTestApp** has "Container View" created in interface builder (like you normally would do for iOS6), whats interesting is that it has deployment target iOS5. You can run same project on iOS6 and iOS5 and it should look and behave the same. Essentially its iOS6 "Container View" back port to iOS5

I don't have blog so...
============
So I started build iPad version of [@YPlan](http://yplanapp.com) and thought it would be nice to use iOS6 "Container View" in Interface Builder - unfortunately its iOS6 only… As I had a lot of fun porting [AutoLayout](https://github.com/RolandasRazma/RRAutoLayout) to iOS5 I decided to do same for "Container View". This should be App Store valid but I will update about that after iPad version of [@YPlan](http://yplanapp.com) will be approved/rejected :)

How to use it in my project?
============
Just drop `RRStoryboardEmbedSegue.h` and `RRStoryboardEmbedSegue.m` into your project and forget about them :)