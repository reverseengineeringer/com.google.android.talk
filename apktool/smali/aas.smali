.class final Laas;
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

.field m:F

.field private n:Z

.field private final o:I

.field private final p:I

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Laas;->a:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;IFFF)V
    .locals 6

    .prologue
    const/4 v1, 0x5

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 89
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 75
    iput-boolean v3, p0, Laas;->n:Z

    .line 81
    iput-boolean v3, p0, Laas;->q:Z

    .line 86
    iput-boolean v5, p0, Laas;->r:Z

    .line 90
    sget v0, Laal;->bz:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Laas;->o:I

    .line 91
    sget v0, Laal;->by:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Laas;->p:I

    .line 92
    sget v0, Laal;->bA:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Laas;->b:I

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Laas;->d:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Laas;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Laas;->e:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Laas;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    add-float v0, p3, v4

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Laas;->h:F

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Laas;->e:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Laas;->f:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Laas;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1134
    cmpg-float v0, p4, v2

    if-ltz v0, :cond_0

    cmpg-float v0, p5, v2

    if-gez v0, :cond_1

    .line 1135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_1
    invoke-static {p4}, Laas;->a(F)I

    move-result v0

    int-to-float v0, v0

    .line 1138
    invoke-static {p5}, Laas;->a(F)I

    move-result v1

    int-to-float v1, v1

    .line 1139
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 1141
    iget-boolean v0, p0, Laas;->r:Z

    if-nez v0, :cond_2

    .line 1142
    iput-boolean v3, p0, Laas;->r:Z

    :cond_2
    move v0, v1

    .line 1145
    :cond_3
    iget v2, p0, Laas;->m:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_4

    iget v2, p0, Laas;->k:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_5

    .line 1148
    :cond_4
    iput v0, p0, Laas;->m:F

    .line 1149
    iput v1, p0, Laas;->k:F

    .line 1150
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    iget v2, p0, Laas;->b:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Laas;->l:F

    .line 1151
    iget v0, p0, Laas;->b:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Laas;->j:F

    .line 1152
    iput-boolean v3, p0, Laas;->n:Z

    .line 1153
    invoke-virtual {p0}, Laas;->invalidateSelf()V

    .line 102
    :cond_5
    return-void
.end method

.method static a(FFZ)F
    .locals 6

    .prologue
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 168
    if-eqz p2, :cond_0

    .line 169
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Laas;->a:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 171
    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private static a(F)I
    .locals 3

    .prologue
    .line 108
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    .line 109
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 110
    add-int/lit8 v0, v0, -0x1

    .line 112
    :cond_0
    return v0
.end method

.method static b(FFZ)F
    .locals 6

    .prologue
    .line 177
    if-eqz p2, :cond_0

    .line 178
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Laas;->a:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 180
    :cond_0
    return p0
.end method


# virtual methods
.method a()F
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 335
    iget v0, p0, Laas;->k:F

    iget v1, p0, Laas;->h:F

    iget v2, p0, Laas;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Laas;->k:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 337
    iget v1, p0, Laas;->k:F

    iget v2, p0, Laas;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Laas;->getPadding(Landroid/graphics/Rect;)Z

    .line 316
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Laas;->q:Z

    .line 117
    invoke-virtual {p0}, Laas;->invalidateSelf()V

    .line 118
    return-void
.end method

.method b()F
    .locals 5

    .prologue
    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v3, 0x40000000    # 2.0f

    .line 341
    iget v0, p0, Laas;->k:F

    iget v1, p0, Laas;->h:F

    iget v2, p0, Laas;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Laas;->k:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 343
    iget v1, p0, Laas;->k:F

    mul-float/2addr v1, v4

    iget v2, p0, Laas;->b:I

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

    .line 208
    iget-boolean v0, p0, Laas;->n:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Laas;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1304
    iget v2, p0, Laas;->k:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    .line 1305
    iget-object v3, p0, Laas;->g:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Laas;->k:F

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p0, Laas;->k:F

    sub-float/2addr v6, v7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2267
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Laas;->h:F

    neg-float v2, v2

    iget v3, p0, Laas;->h:F

    neg-float v3, v3

    iget v4, p0, Laas;->h:F

    iget v5, p0, Laas;->h:F

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2268
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2269
    iget v3, p0, Laas;->l:F

    neg-float v3, v3

    iget v4, p0, Laas;->l:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 2271
    iget-object v3, p0, Laas;->i:Landroid/graphics/Path;

    if-nez v3, :cond_5

    .line 2272
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Laas;->i:Landroid/graphics/Path;

    .line 2276
    :goto_0
    iget-object v3, p0, Laas;->i:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2277
    iget-object v3, p0, Laas;->i:Landroid/graphics/Path;

    iget v4, p0, Laas;->h:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2278
    iget-object v3, p0, Laas;->i:Landroid/graphics/Path;

    iget v4, p0, Laas;->l:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 2280
    iget-object v3, p0, Laas;->i:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v3, v2, v4, v5, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 2282
    iget-object v2, p0, Laas;->i:Landroid/graphics/Path;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v0, v3, v4, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 2283
    iget-object v0, p0, Laas;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 2284
    iget v0, p0, Laas;->h:F

    iget v2, p0, Laas;->h:F

    iget v3, p0, Laas;->l:F

    add-float/2addr v2, v3

    div-float v2, v0, v2

    .line 2285
    iget-object v7, p0, Laas;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v3, p0, Laas;->h:F

    iget v4, p0, Laas;->l:F

    add-float/2addr v3, v4

    new-array v4, v12, [I

    iget v5, p0, Laas;->o:I

    aput v5, v4, v9

    iget v5, p0, Laas;->o:I

    aput v5, v4, v8

    const/4 v5, 0x2

    iget v6, p0, Laas;->p:I

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

    .line 2293
    iget-object v10, p0, Laas;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Laas;->h:F

    neg-float v2, v2

    iget v3, p0, Laas;->l:F

    add-float/2addr v2, v3

    iget v3, p0, Laas;->h:F

    neg-float v3, v3

    iget v4, p0, Laas;->l:F

    sub-float v4, v3, v4

    new-array v5, v12, [I

    iget v3, p0, Laas;->o:I

    aput v3, v5, v9

    iget v3, p0, Laas;->o:I

    aput v3, v5, v8

    const/4 v3, 0x2

    iget v6, p0, Laas;->p:I

    aput v6, v5, v3

    new-array v6, v12, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2297
    iget-object v0, p0, Laas;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    iput-boolean v9, p0, Laas;->n:Z

    .line 212
    :cond_0
    iget v0, p0, Laas;->m:F

    div-float/2addr v0, v11

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3219
    iget v0, p0, Laas;->h:F

    neg-float v0, v0

    iget v2, p0, Laas;->l:F

    sub-float v2, v0, v2

    .line 3220
    iget v0, p0, Laas;->h:F

    iget v3, p0, Laas;->b:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Laas;->m:F

    div-float/2addr v3, v11

    add-float v7, v0, v3

    .line 3221
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v7, v11

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    move v6, v8

    .line 3222
    :goto_1
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v7, v11

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 3224
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 3225
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    iget-object v3, p0, Laas;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3226
    iget-object v0, p0, Laas;->i:Landroid/graphics/Path;

    iget-object v3, p0, Laas;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3227
    if-eqz v6, :cond_1

    .line 3228
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v7, v11

    sub-float v3, v0, v3

    iget v0, p0, Laas;->h:F

    neg-float v4, v0

    iget-object v5, p0, Laas;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3232
    :cond_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 3235
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v7

    iget-object v3, p0, Laas;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3236
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3237
    iget-object v0, p0, Laas;->i:Landroid/graphics/Path;

    iget-object v3, p0, Laas;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3238
    if-eqz v6, :cond_2

    .line 3239
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v7, v11

    sub-float v3, v0, v3

    iget v0, p0, Laas;->h:F

    neg-float v0, v0

    iget v4, p0, Laas;->l:F

    add-float/2addr v4, v0

    iget-object v5, p0, Laas;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3243
    :cond_2
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 3246
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    iget-object v3, p0, Laas;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3247
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3248
    iget-object v0, p0, Laas;->i:Landroid/graphics/Path;

    iget-object v3, p0, Laas;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3249
    if-eqz v8, :cond_3

    .line 3250
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v7, v11

    sub-float v3, v0, v3

    iget v0, p0, Laas;->h:F

    neg-float v4, v0

    iget-object v5, p0, Laas;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3253
    :cond_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 3256
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v7

    iget-object v3, p0, Laas;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3257
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3258
    iget-object v0, p0, Laas;->i:Landroid/graphics/Path;

    iget-object v3, p0, Laas;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3259
    if-eqz v8, :cond_4

    .line 3260
    iget-object v0, p0, Laas;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v7, v11

    sub-float v3, v0, v3

    iget v0, p0, Laas;->h:F

    neg-float v4, v0

    iget-object v5, p0, Laas;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3263
    :cond_4
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 214
    iget v0, p0, Laas;->m:F

    neg-float v0, v0

    div-float/2addr v0, v11

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    sget-object v0, Laas;->c:Laat;

    iget-object v1, p0, Laas;->g:Landroid/graphics/RectF;

    iget v2, p0, Laas;->h:F

    iget-object v3, p0, Laas;->d:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Laat;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 216
    return-void

    .line 2274
    :cond_5
    iget-object v3, p0, Laas;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    :cond_6
    move v6, v9

    .line 3221
    goto/16 :goto_1

    :cond_7
    move v8, v9

    .line 3222
    goto/16 :goto_2

    .line 2293
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
    .line 193
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 158
    iget v0, p0, Laas;->k:F

    iget v1, p0, Laas;->h:F

    iget-boolean v2, p0, Laas;->q:Z

    invoke-static {v0, v1, v2}, Laas;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 160
    iget v1, p0, Laas;->k:F

    iget v2, p0, Laas;->h:F

    iget-boolean v3, p0, Laas;->q:Z

    invoke-static {v1, v2, v3}, Laas;->b(FFZ)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 162
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Laas;->n:Z

    .line 131
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Laas;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    iget-object v0, p0, Laas;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    iget-object v0, p0, Laas;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Laas;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 187
    iget-object v0, p0, Laas;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 188
    iget-object v0, p0, Laas;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 189
    return-void
.end method
