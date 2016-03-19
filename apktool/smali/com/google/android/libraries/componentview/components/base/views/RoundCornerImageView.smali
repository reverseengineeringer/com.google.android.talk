.class public Lcom/google/android/libraries/componentview/components/base/views/RoundCornerImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:[F


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/views/RoundCornerImageView;->a:[F

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/RoundCornerImageView;->getWidth()I

    move-result v1

    .line 29
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/RoundCornerImageView;->getHeight()I

    move-result v2

    .line 30
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/views/RoundCornerImageView;->a:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    return-void
.end method
