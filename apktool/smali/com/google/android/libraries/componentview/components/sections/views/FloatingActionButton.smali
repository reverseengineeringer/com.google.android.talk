.class public Lcom/google/android/libraries/componentview/components/sections/views/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:I


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget v1, p0, Lcom/google/android/libraries/componentview/components/sections/views/FloatingActionButton;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    iget v1, p0, Lcom/google/android/libraries/componentview/components/sections/views/FloatingActionButton;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    :cond_0
    return-object v0
.end method
