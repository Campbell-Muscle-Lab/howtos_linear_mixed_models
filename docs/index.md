---
title: Home Page
nav_order: 1
---

## Linear mixed models

Linear mixed models are a way of testing statistical hypotheses.

You may have learned that:
+ a t-test tells you whether 2 groups are statistically different
+ ANOVA tells you whether 3 or more groups are statistically different

We find it easier to think of t-tests as the special case of ANOVA when there are only 2 groups. Viewed in this light, a t-test is simply a subset of ANOVA.

You might also know that there is a special type of t-test, called the paired sample t-test, where you have two values (perhaps "before" and "after" an intervention) for each subject. If you have this sort of design, you should use the paired sample t-test over the un-paired test because it has greater statistical power. Paired sample t-tests are the simplest example of a [repeated measures design](https://en.wikipedia.org/wiki/Repeated_measures_design).

Finally, remember that ANOVA can test for different factors. For example, you might have a 2-way design where you test how your measured variable depends on:
+ sex (men and women)
+ health status (in heart failure or not)

and the interaction between these (that is, does the effect of heart failure depend on whether you are a man or a woman)

If you have measurements for people before and after they were diagnosed with heart failure, you would also have a repeated measures design.

Put all of these things together and you can see that the analysis can become quite complicated.

Linear mixed models are a way of testing the "general problem". They are a little harder to set up and require more sophisticated software (e.g. SAS instead of Excel) but they allow you to test for all of the relevant factors.

This how-to site explains how to run one-way and two-way tests in SAS and in MATLAB.
