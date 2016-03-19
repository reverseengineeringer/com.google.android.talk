.class Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 1034
    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->h:Lcom/google/android/libraries/componentview/components/elements/views/CarouselView;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/elements/views/CarouselView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 2034
    iget v0, v0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->g:I

    .line 101
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 3034
    iget-object v1, v1, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->f:Landroid/widget/LinearLayout;

    .line 101
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 4034
    iget-object v1, v1, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->f:Landroid/widget/LinearLayout;

    .line 102
    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 5034
    iget v2, v2, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->g:I

    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 6034
    iput v1, v0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->i:I

    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 7034
    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->h:Lcom/google/android/libraries/componentview/components/elements/views/CarouselView;

    .line 103
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 8034
    iget v1, v1, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->i:I

    .line 103
    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/componentview/components/elements/views/CarouselView;->scrollTo(II)V

    .line 105
    :cond_0
    return v3
.end method
