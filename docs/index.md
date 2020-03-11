---
title: Home Page
nav_order: 1
---

## Linear mixed models

### Overview

Linear mixed models are a way of testing statistical hypotheses. They are particularly useful when the data has a hierarchical nested structure (for example, measurements from multiple cells from many different people).

### Background

You may have learned that:
+ a t-test tells you whether 2 groups are statistically different
+ ANOVA tells you whether 3 or more groups are statistically different

Alternatively, you can think of t-tests as the special case of ANOVA when there are only 2 groups. Viewed in this light, a t-test is simply a subset of all possible ANOVA analyses.

You might also know that there is a special type of t-test, called the paired sample t-test, where you have two values (perhaps "before" and "after" an intervention) for each subject. If you have this sort of design, you should use the paired sample t-test over the un-paired test because it has greater [statistical power](https://en.wikipedia.org/wiki/Power_(statistics)). Paired sample t-tests are the simplest example of a [repeated measures design](https://en.wikipedia.org/wiki/Repeated_measures_design).

Finally, remember that ANOVA can test for different factors. For example, you might have a 2-way design where you test how your measured variable depends on:
+ sex (men and women)
+ health status (in heart failure or not)

and the interaction between these (that is, does the effect of heart failure depend on whether you are a man or a woman)

If you have measurements for people before and after they were diagnosed with heart failure, you would also have a repeated measures design.

Put all of these things together and you can see that ANOVA can become quite complicated.

### Linear mixed models

Just as t-tests are a special case of ANOVA, ANOVA analyses can be viewed as a special case of linear mixed models.

Linear mixed models are more complicated to set up the first time, and typically require more sophisticated software (for example, SAS instead of Excel). The advantage is that they allow you to include all of the relevant factors, including the repeated measures effects associated with heirarchically clustered data. In short, they are a way of testing the "general problem". 

This how-to site explains how to run one-way and two-way tests in SAS and in MATLAB.
