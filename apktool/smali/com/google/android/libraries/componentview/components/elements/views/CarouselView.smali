.class public Lcom/google/android/libraries/componentview/components/elements/views/CarouselView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/libraries/componentview/components/elements/views/CarouselView$OnScrollCallback;


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/CarouselView;->a:Lcom/google/android/libraries/componentview/components/elements/views/CarouselView$OnScrollCallback;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/CarouselView;->a:Lcom/google/android/libraries/componentview/components/elements/views/CarouselView$OnScrollCallback;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/componentview/components/elements/views/CarouselView$OnScrollCallback;->a(I)V

    .line 24
    :cond_0
    return-void
.end method
