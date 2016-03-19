.class public final Lgvs;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field static final a:D

.field static c:Laat;


# instance fields
.field final b:I

.field d:Landroid/graphics/Paint;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Paint;

.field final g:Landroid/graphics/RectF;

.field h:F

.field i:Landroid/graphics/Path;

.field j:F

.field k:F

.field l:F

.field private m:Z

.field private final n:I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lgvs;->a:D

    return-void
.end method


# virtual methods
.method a()F
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 293
    iget v0, p0, Lgvs;->j:F

    iget v1, p0, Lgvs;->h:F

    iget v2, p0, Lgvs;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lgvs;->j:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 294
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 295
    iget v1, p0, Lgvs;->j:F

    iget v2, p0, Lgvs;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method b()F
    .locals 5

    .prologue
    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v3, 0x40000000    # 2.0f

    .line 299
    iget v0, p0, Lgvs;->j:F

    iget v1, p0, Lgvs;->h:F

    iget v2, p0, Lgvs;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lgvs;->j:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 301
    iget v1, p0, Lgvs;->j:F

    mul-float/2addr v1, v4

    iget v2, p0, Lgvs;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 168
    iget v0, p0, Lgvs;->h:F

    iget v2, p0, Lgvs;->k:F

    add-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-boolean v0, p0, Lgvs;->m:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lgvs;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1264
    iget-object v2, p0, Lgvs;->g:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2230
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lgvs;->h:F

    neg-float v2, v2

    iget v3, p0, Lgvs;->h:F

    neg-float v3, v3

    iget v4, p0, Lgvs;->h:F

    iget v5, p0, Lgvs;->h:F

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2231
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2232
    iget v3, p0, Lgvs;->k:F

    neg-float v3, v3

    iget v4, p0, Lgvs;->k:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 2234
    iget-object v3, p0, Lgvs;->i:Landroid/graphics/Path;

    if-nez v3, :cond_6

    .line 2235
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lgvs;->i:Landroid/graphics/Path;

    .line 2239
    :goto_1
    iget-object v3, p0, Lgvs;->i:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2240
    iget-object v3, p0, Lgvs;->i:Landroid/graphics/Path;

    iget v4, p0, Lgvs;->h:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2241
    iget-object v3, p0, Lgvs;->i:Landroid/graphics/Path;

    iget v4, p0, Lgvs;->k:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 2243
    iget-object v3, p0, Lgvs;->i:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v3, v2, v4, v5, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 2245
    iget-object v2, p0, Lgvs;->i:Landroid/graphics/Path;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v0, v3, v4, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 2246
    iget-object v0, p0, Lgvs;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 2247
    iget v0, p0, Lgvs;->h:F

    iget v2, p0, Lgvs;->h:F

    iget v3, p0, Lgvs;->k:F

    add-float/2addr v2, v3

    div-float v2, v0, v2

    .line 2248
    iget-object v7, p0, Lgvs;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v3, p0, Lgvs;->h:F

    iget v4, p0, Lgvs;->k:F

    add-float/2addr v3, v4

    new-array v4, v12, [I

    iget v5, p0, Lgvs;->n:I

    aput v5, v4, v9

    iget v5, p0, Lgvs;->n:I

    aput v5, v4, v8

    const/4 v5, 0x2

    iget v6, p0, Lgvs;->o:I

    aput v6, v4, v5

    new-array v5, v12, [F

    aput v1, v5, v9

    aput v2, v5, v8

    const/4 v2, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v2

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2256
    iget-object v10, p0, Lgvs;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lgvs;->h:F

    neg-float v2, v2

    iget v3, p0, Lgvs;->k:F

    add-float/2addr v2, v3

    iget v3, p0, Lgvs;->h:F

    neg-float v3, v3

    iget v4, p0, Lgvs;->k:F

    sub-float v4, v3, v4

    new-array v5, v12, [I

    iget v3, p0, Lgvs;->n:I

    aput v3, v5, v9

    iget v3, p0, Lgvs;->n:I

    aput v3, v5, v8

    const/4 v3, 0x2

    iget v6, p0, Lgvs;->o:I

    aput v6, v5, v3

    new-array v6, v12, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2260
    iget-object v0, p0, Lgvs;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    iput-boolean v9, p0, Lgvs;->m:Z

    .line 175
    :cond_1
    iget v0, p0, Lgvs;->l:F

    div-float/2addr v0, v11

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3182
    iget v0, p0, Lgvs;->h:F

    neg-float v0, v0

    iget v2, p0, Lgvs;->k:F

    sub-float v2, v0, v2

    .line 3183
    iget v0, p0, Lgvs;->h:F

    iget v3, p0, Lgvs;->b:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lgvs;->l:F

    div-float/2addr v3, v11

    add-float v7, v0, v3

    .line 3184
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v7, v11

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    move v6, v8

    .line 3185
    :goto_2
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v7, v11

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 3187
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 3188
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    iget-object v3, p0, Lgvs;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3189
    iget-object v0, p0, Lgvs;->i:Landroid/graphics/Path;

    iget-object v3, p0, Lgvs;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3190
    if-eqz v6, :cond_2

    .line 3191
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    .line 3192
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v7, v11

    sub-float v3, v0, v3

    iget v0, p0, Lgvs;->h:F

    neg-float v4, v0

    iget-object v5, p0, Lgvs;->f:Landroid/graphics/Paint;

    move-object v0, p1

    .line 3191
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3195
    :cond_2
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 3198
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v7

    iget-object v3, p0, Lgvs;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3199
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3200
    iget-object v0, p0, Lgvs;->i:Landroid/graphics/Path;

    iget-object v3, p0, Lgvs;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3201
    if-eqz v6, :cond_3

    .line 3202
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    .line 3203
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v7, v11

    sub-float v3, v0, v3

    iget v0, p0, Lgvs;->h:F

    neg-float v0, v0

    iget v4, p0, Lgvs;->k:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lgvs;->f:Landroid/graphics/Paint;

    move-object v0, p1

    .line 3202
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3206
    :cond_3
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 3209
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    iget-object v3, p0, Lgvs;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3210
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3211
    iget-object v0, p0, Lgvs;->i:Landroid/graphics/Path;

    iget-object v3, p0, Lgvs;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3212
    if-eqz v8, :cond_4

    .line 3213
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    .line 3214
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v7, v11

    sub-float v3, v0, v3

    iget v0, p0, Lgvs;->h:F

    neg-float v4, v0

    iget-object v5, p0, Lgvs;->f:Landroid/graphics/Paint;

    move-object v0, p1

    .line 3213
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3216
    :cond_4
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 3219
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v7

    iget-object v3, p0, Lgvs;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3220
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3221
    iget-object v0, p0, Lgvs;->i:Landroid/graphics/Path;

    iget-object v3, p0, Lgvs;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3222
    if-eqz v8, :cond_5

    .line 3223
    iget-object v0, p0, Lgvs;->g:Landroid/graphics/RectF;

    .line 3224
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v7, v11

    sub-float v3, v0, v3

    iget v0, p0, Lgvs;->h:F

    neg-float v4, v0

    iget-object v5, p0, Lgvs;->f:Landroid/graphics/Paint;

    move-object v0, p1

    .line 3223
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3226
    :cond_5
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 177
    iget v0, p0, Lgvs;->l:F

    neg-float v0, v0

    div-float/2addr v0, v11

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    sget-object v0, Lgvs;->c:Laat;

    iget-object v1, p0, Lgvs;->g:Landroid/graphics/RectF;

    iget v2, p0, Lgvs;->h:F

    iget-object v3, p0, Lgvs;->d:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Laat;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 2237
    :cond_6
    iget-object v3, p0, Lgvs;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_1

    :cond_7
    move v6, v9

    .line 3184
    goto/16 :goto_2

    :cond_8
    move v8, v9

    .line 3185
    goto/16 :goto_3

    .line 2256
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgvs;->m:Z

    .line 112
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lgvs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    iget-object v0, p0, Lgvs;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    iget-object v0, p0, Lgvs;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lgvs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 143
    iget-object v0, p0, Lgvs;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 144
    iget-object v0, p0, Lgvs;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 145
    return-void
.end method
