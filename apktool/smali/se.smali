.class public final Lse;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lqk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/graphics/drawable/Drawable;",
        "Lqk;"
    }
.end annotation


# static fields
.field private static final c:F


# instance fields
.field public final a:Landroid/app/Activity;

.field private final b:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private final i:Landroid/graphics/Path;

.field private final j:I

.field private k:Z

.field private l:F

.field private m:F

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lse;->c:F

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 7471
    invoke-direct {p0, p2}, Lse;-><init>(Landroid/content/Context;)V

    .line 7472
    iput-object p1, p0, Lse;->a:Landroid/app/Activity;

    .line 7473
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 123
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    .line 108
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lse;->i:Landroid/graphics/Path;

    .line 112
    iput-boolean v6, p0, Lse;->k:Z

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lse;->n:I

    .line 124
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 126
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 127
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lsb;->af:[I

    sget v3, Laen;->S:I

    sget v4, Laal;->bv:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    sget v1, Lsb;->aj:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {p0, v1}, Lse;->a(I)V

    .line 134
    sget v1, Lsb;->an:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-direct {p0, v1}, Lse;->b(F)V

    .line 135
    sget v1, Lsb;->am:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-direct {p0, v1}, Lse;->a(Z)V

    .line 137
    sget v1, Lsb;->al:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lse;->c(F)V

    .line 139
    sget v1, Lsb;->ak:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lse;->j:I

    .line 141
    sget v1, Lsb;->ai:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lse;->e:F

    .line 143
    sget v1, Lsb;->ag:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lse;->d:F

    .line 145
    sget v1, Lsb;->ah:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lse;->f:F

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    invoke-virtual {p0}, Lse;->invalidateSelf()V

    .line 215
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lse;->h:Z

    if-eq v0, p1, :cond_0

    .line 296
    iput-boolean p1, p0, Lse;->h:Z

    .line 297
    invoke-virtual {p0}, Lse;->invalidateSelf()V

    .line 299
    :cond_0
    return-void
.end method

.method private b(F)V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    float-to-double v0, v0

    sget v2, Lse;->c:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lse;->m:F

    .line 234
    invoke-virtual {p0}, Lse;->invalidateSelf()V

    .line 236
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lse;->k:Z

    if-eq v0, p1, :cond_0

    .line 314
    iput-boolean p1, p0, Lse;->k:Z

    .line 315
    invoke-virtual {p0}, Lse;->invalidateSelf()V

    .line 317
    :cond_0
    return-void
.end method

.method private c(F)V
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lse;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 263
    iput p1, p0, Lse;->g:F

    .line 264
    invoke-virtual {p0}, Lse;->invalidateSelf()V

    .line 266
    :cond_0
    return-void
.end method

.method private d(F)V
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lse;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 444
    iput p1, p0, Lse;->l:F

    .line 445
    invoke-virtual {p0}, Lse;->invalidateSelf()V

    .line 447
    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .prologue
    .line 7476
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 7477
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lse;->b(Z)V

    .line 7481
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lse;->d(F)V

    .line 7482
    return-void

    .line 7478
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 7479
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lse;->b(Z)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 321
    invoke-virtual {p0}, Lse;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 324
    iget v0, p0, Lse;->n:I

    packed-switch v0, :pswitch_data_0

    .line 2386
    :pswitch_0
    sget-object v0, Lfv;->a:Lfw;

    invoke-virtual {v0, p0}, Lfw;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 337
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 344
    :goto_0
    iget v1, p0, Lse;->d:F

    iget v2, p0, Lse;->d:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 345
    iget v2, p0, Lse;->e:F

    iget v4, p0, Lse;->l:F

    .line 2460
    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float v4, v2, v1

    .line 346
    iget v1, p0, Lse;->e:F

    iget v2, p0, Lse;->f:F

    iget v5, p0, Lse;->l:F

    .line 3460
    sub-float/2addr v2, v1

    mul-float/2addr v2, v5

    add-float v5, v1, v2

    .line 348
    const/4 v1, 0x0

    iget v2, p0, Lse;->m:F

    iget v6, p0, Lse;->l:F

    .line 4460
    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    .line 348
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    .line 350
    const/4 v1, 0x0

    sget v2, Lse;->c:F

    iget v7, p0, Lse;->l:F

    .line 5460
    mul-float/2addr v2, v7

    add-float v7, v1, v2

    .line 353
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-eqz v0, :cond_4

    const/high16 v1, 0x43340000    # 180.0f

    :goto_2
    iget v8, p0, Lse;->l:F

    .line 6460
    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v1, v2

    .line 356
    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v2, v8

    .line 357
    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v4, v8

    .line 359
    iget-object v7, p0, Lse;->i:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 360
    iget v7, p0, Lse;->g:F

    iget-object v8, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Lse;->m:F

    neg-float v8, v8

    iget v9, p0, Lse;->l:F

    .line 7460
    sub-float/2addr v8, v7

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 363
    neg-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 365
    iget-object v9, p0, Lse;->i:Landroid/graphics/Path;

    add-float v10, v8, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 366
    iget-object v9, p0, Lse;->i:Landroid/graphics/Path;

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 369
    iget-object v5, p0, Lse;->i:Landroid/graphics/Path;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 370
    iget-object v5, p0, Lse;->i:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 373
    iget-object v5, p0, Lse;->i:Landroid/graphics/Path;

    neg-float v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 374
    iget-object v5, p0, Lse;->i:Landroid/graphics/Path;

    neg-float v4, v4

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 376
    iget-object v2, p0, Lse;->i:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 382
    iget-object v2, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 383
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lse;->g:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 384
    div-int/lit8 v4, v4, 0x4

    shl-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    .line 385
    float-to-double v4, v4

    float-to-double v6, v2

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    iget v2, p0, Lse;->g:F

    float-to-double v8, v2

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 387
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 388
    iget-boolean v2, p0, Lse;->h:Z

    if-eqz v2, :cond_6

    .line 389
    iget-boolean v2, p0, Lse;->k:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 393
    :cond_0
    :goto_4
    iget-object v0, p0, Lse;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 396
    return-void

    .line 326
    :pswitch_1
    const/4 v0, 0x0

    .line 327
    goto/16 :goto_0

    .line 329
    :pswitch_2
    const/4 v0, 0x1

    .line 330
    goto/16 :goto_0

    .line 1386
    :pswitch_3
    sget-object v0, Lfv;->a:Lfw;

    invoke-virtual {v0, p0}, Lfw;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 332
    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 337
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 353
    :cond_3
    const/high16 v1, -0x3ccc0000    # -180.0f

    move v2, v1

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 389
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    .line 390
    :cond_6
    if-eqz v0, :cond_0

    .line 391
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lse;->j:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lse;->j:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 424
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 401
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 402
    invoke-virtual {p0}, Lse;->invalidateSelf()V

    .line 404
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lse;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 409
    invoke-virtual {p0}, Lse;->invalidateSelf()V

    .line 410
    return-void
.end method
