.class public Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    if-eqz p2, :cond_0

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a:I

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->b:I

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    :cond_0
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x101011f
        0x1010120
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "babel_crash_on_conversation_scroll_error"

    .line 49
    invoke-static {v0, v1, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "Babel_Scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FixedAspectRationImageView.setBitmapDimensions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_0
    iput p1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->c:I

    .line 58
    iput p2, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->d:I

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->requestLayout()V

    .line 60
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 103
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->c:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->d:I

    if-eqz v0, :cond_c

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 106
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 107
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 108
    if-ne v4, v6, :cond_2

    if-ne v5, v6, :cond_2

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "babel_crash_on_conversation_scroll_error"

    .line 164
    invoke-static {v0, v4, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "Babel_Scroll"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x49

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "FixedAspectRationImageView.setMeasuredDimension("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setMeasuredDimension(II)V

    .line 173
    return-void

    .line 111
    :cond_2
    if-ne v4, v6, :cond_4

    .line 113
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->d:I

    mul-int/2addr v0, v1

    iget v4, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->c:I

    div-int/2addr v0, v4

    .line 115
    if-ne v5, v7, :cond_3

    if-gt v0, v2, :cond_0

    :cond_3
    move v2, v0

    goto :goto_0

    .line 118
    :cond_4
    if-ne v5, v6, :cond_5

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v0, v5, :cond_b

    .line 126
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a:I

    if-lez v0, :cond_a

    .line 127
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 133
    :goto_2
    iget v2, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->c:I

    mul-int/2addr v2, v0

    iget v5, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->d:I

    div-int/2addr v2, v5

    .line 135
    if-ne v4, v7, :cond_9

    if-le v2, v1, :cond_9

    .line 139
    :goto_3
    iget v2, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a:I

    if-le v1, v2, :cond_3

    .line 140
    iget v1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a:I

    move v2, v0

    goto :goto_0

    .line 144
    :cond_5
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a:I

    if-le v1, v0, :cond_8

    .line 145
    iget v1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a:I

    move v0, v1

    .line 152
    :goto_4
    if-eqz v5, :cond_7

    .line 155
    :goto_5
    iget v1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->c:I

    iget v4, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->d:I

    if-le v1, v4, :cond_6

    .line 157
    iget v1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->d:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->c:I

    div-int v2, v1, v2

    move v1, v0

    goto/16 :goto_0

    .line 160
    :cond_6
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->c:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->d:I

    div-int v1, v0, v1

    goto/16 :goto_0

    :cond_7
    move v2, v0

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_2

    :cond_c
    move v2, v3

    move v1, v3

    goto/16 :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    if-eqz p1, :cond_1

    .line 81
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->c:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->d:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a(II)V

    .line 85
    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    if-eqz p1, :cond_1

    .line 92
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->c:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->d:I

    .line 93
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a(II)V

    .line 97
    :cond_1
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 66
    iput p1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->b:I

    .line 67
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 72
    iput p1, p0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a:I

    .line 73
    return-void
.end method
