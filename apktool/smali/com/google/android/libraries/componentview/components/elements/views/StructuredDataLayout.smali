.class public Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# virtual methods
.method protected a()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 105
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 115
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->a()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->a(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getPaddingLeft()I

    move-result v2

    .line 66
    sub-int v0, p4, p2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 67
    add-int v3, v2, v0

    .line 68
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getPaddingTop()I

    move-result v4

    .line 69
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getPaddingBottom()I

    move-result v5

    sub-int v5, v1, v5

    .line 72
    const/4 v1, 0x3

    new-array v6, v1, [Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$LayoutFiller;

    const/4 v1, 0x0

    new-instance v7, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;

    invoke-direct {v7, v0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;-><init>(I)V

    aput-object v7, v6, v1

    const/4 v1, 0x1

    new-instance v7, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    div-int/lit8 v10, v0, 0x2

    aput v10, v8, v9

    const/4 v9, 0x1

    div-int/lit8 v10, v0, 0x2

    aput v10, v8, v9

    invoke-direct {v7, v8}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;-><init>([I)V

    aput-object v7, v6, v1

    const/4 v1, 0x2

    new-instance v7, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    invoke-direct {v7, v8}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;-><init>([I)V

    aput-object v7, v6, v1

    .line 80
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 82
    const/4 v1, 0x0

    :goto_2
    const/4 v8, 0x3

    if-ge v1, v8, :cond_2

    aget-object v8, v6, v1

    .line 83
    invoke-interface {v8, v7}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$LayoutFiller;->a(Landroid/view/View;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_3
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    aget-object v1, v6, v0

    .line 91
    invoke-interface {v1}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$LayoutFiller;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 92
    invoke-interface {v1, v2, v4, v3, v5}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$LayoutFiller;->a(IIII)V

    goto :goto_0

    .line 90
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, -0x80000000

    .line 35
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_0
    move v6, v3

    move v7, v3

    move v8, v3

    .line 43
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 44
    invoke-virtual {p0, v6}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v7, v0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->combineMeasuredStates(II)I

    move-result v1

    .line 43
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    move v8, v4

    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    shl-int/lit8 v1, v7, 0x10

    .line 54
    invoke-static {v8, p2, v1}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout;->setMeasuredDimension(II)V

    .line 56
    return-void
.end method
