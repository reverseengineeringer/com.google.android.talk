.class public Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Matrix;

.field private e:F

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Matrix;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->l:I

    if-gtz v0, :cond_1

    .line 161
    :cond_0
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_0

    .line 159
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->e:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1172
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->l:I

    iget v4, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->m:I

    add-int/2addr v1, v4

    mul-int/2addr v1, v2

    add-int v4, v0, v1

    .line 1173
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->l:I

    div-int/lit8 v0, v0, 0x2

    add-int v5, v4, v0

    .line 1174
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->l:I

    add-int v6, v4, v0

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->n:I

    add-int v7, v0, v1

    .line 1176
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->l:I

    add-int v8, v7, v0

    .line 1178
    float-to-double v0, v3

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    cmpg-double v0, v0, v10

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->g:Landroid/graphics/Paint;

    move-object v1, v0

    .line 1179
    :goto_1
    float-to-double v10, v3

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    cmpg-double v0, v10, v12

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->g:Landroid/graphics/Paint;

    .line 1182
    :goto_2
    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->h:Landroid/graphics/RectF;

    int-to-float v4, v4

    int-to-float v9, v7

    int-to-float v10, v5

    int-to-float v11, v8

    invoke-virtual {v3, v4, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1183
    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->a:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->b:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->h:Landroid/graphics/RectF;

    invoke-virtual {p1, v3, v4, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1186
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->i:Landroid/graphics/RectF;

    int-to-float v3, v5

    int-to-float v4, v7

    int-to-float v5, v6

    int-to-float v6, v8

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1187
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->k:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->c:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->i:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1189
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->k:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 1190
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 158
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 1178
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->f:Landroid/graphics/Paint;

    move-object v1, v0

    goto :goto_1

    .line 1179
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->f:Landroid/graphics/Paint;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const v6, 0x40a28f5c    # 5.08f

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getMeasuredWidth()I

    move-result v5

    .line 123
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getMeasuredHeight()I

    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v5, v0

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 126
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingTop()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 128
    int-to-float v1, v0

    mul-float/2addr v1, v6

    float-to-int v4, v1

    .line 129
    int-to-float v1, v3

    div-float/2addr v1, v6

    float-to-int v1, v1

    .line 131
    if-le v3, v4, :cond_0

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eq v6, v7, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    move v5, v3

    move v3, v4

    .line 136
    :cond_0
    if-le v0, v1, :cond_1

    .line 137
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eq v6, v7, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 142
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 145
    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->o:I

    .line 146
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->n:I

    .line 147
    iput v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->l:I

    .line 148
    int-to-float v0, v1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->m:I

    .line 150
    invoke-virtual {p0, v5, v2}, Lcom/google/android/libraries/componentview/components/elements/views/StarRatingView;->setMeasuredDimension(II)V

    .line 151
    return-void
.end method
