.class public Lcom/google/android/libraries/componentview/components/sections/views/WrapContentViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/WrapContentViewPager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/componentview/components/sections/views/WrapContentViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 26
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 28
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 31
    return-void
.end method
