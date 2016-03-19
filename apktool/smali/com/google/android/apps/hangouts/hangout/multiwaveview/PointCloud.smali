.class public Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INNER_POINTS:I = 0x8

.field private static final MAX_POINT_SIZE:F = 4.0f

.field private static final MIN_POINT_SIZE:F = 2.0f

.field private static final PI:F = 3.1415927f

.field private static final TAG:Ljava/lang/String; = "Babel_PointCloud"


# instance fields
.field glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCloud:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mScale:F

    .line 41
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    .line 42
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 125
    iput-object p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    :cond_0
    return-void
.end method

.method private static hypot(FF)F
    .locals 2

    .prologue
    .line 171
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private interp(FFF)F
    .locals 1

    .prologue
    .line 200
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private static max(FF)F
    .locals 1

    .prologue
    .line 175
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 204
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    .line 206
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mScale:F

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mScale:F

    iget v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mCenterX:F

    iget v4, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mCenterY:F

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 208
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;

    .line 209
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;->radius:F

    iget v5, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mOuterRadius:F

    div-float/2addr v4, v5

    invoke-direct {p0, v9, v3, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->interp(FFF)F

    move-result v3

    .line 210
    iget v4, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;->x:F

    iget v5, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mCenterX:F

    add-float/2addr v4, v5

    .line 211
    iget v5, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;->y:F

    iget v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mCenterY:F

    add-float/2addr v5, v6

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->getAlphaForPoint(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;)I

    move-result v0

    .line 214
    if-eqz v0, :cond_0

    .line 218
    iget-object v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 219
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    .line 220
    iget-object v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    .line 221
    iget-object v7, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    .line 222
    div-float/2addr v3, v9

    .line 223
    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 224
    sub-float v3, v4, v6

    sub-float v4, v5, v7

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 225
    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 207
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 229
    :cond_1
    iget-object v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 234
    return-void
.end method

.method public getAlphaForPoint(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;)I
    .locals 9

    .prologue
    const v8, 0x3f490fdb

    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->x:F
    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->access$000(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;)F

    move-result v0

    iget v2, p1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;->x:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->y:F
    invoke-static {v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->access$100(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;)F

    move-result v2

    iget v3, p1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;->y:F

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->hypot(FF)F

    move-result v0

    .line 182
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->radius:F
    invoke-static {v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->access$200(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 183
    mul-float/2addr v0, v8

    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->radius:F
    invoke-static {v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->access$200(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;)F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 184
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->alpha:F
    invoke-static {v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->access$300(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;)F

    move-result v2

    float-to-double v4, v0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    .line 188
    :goto_0
    iget v2, p1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;->x:F

    iget v3, p1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;->y:F

    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->hypot(FF)F

    move-result v2

    .line 189
    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->radius:F
    invoke-static {v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->access$400(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 191
    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->width:F
    invoke-static {v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->access$500(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    .line 192
    mul-float/2addr v2, v8

    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->width:F
    invoke-static {v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->access$500(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 193
    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->alpha:F
    invoke-static {v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->access$600(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;)F

    move-result v3

    float-to-double v4, v2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    .line 196
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->max(FF)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mScale:F

    return v0
.end method

.method public makePointCloud(FF)V
    .locals 12

    .prologue
    .line 137
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    return-void

    .line 141
    :cond_1
    iput p2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mOuterRadius:F

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    sub-float v0, p2, p1

    .line 144
    const v1, 0x40c90fdb

    mul-float/2addr v1, p1

    const/high16 v2, 0x41000000    # 8.0f

    div-float v3, v1, v2

    .line 145
    div-float v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 146
    int-to-float v1, v4

    div-float v5, v0, v1

    .line 148
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-gt v2, v4, :cond_0

    .line 149
    const v0, 0x40c90fdb

    mul-float/2addr v0, p1

    .line 150
    div-float/2addr v0, v3

    float-to-int v6, v0

    .line 151
    const v1, 0x3fc90fdb

    .line 152
    const v0, 0x40c90fdb

    int-to-float v7, v6

    div-float v7, v0, v7

    .line 153
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    .line 154
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, p1

    .line 155
    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v9, p1

    .line 156
    add-float/2addr v1, v7

    .line 157
    iget-object v10, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;

    invoke-direct {v11, p0, v8, v9, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$Point;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;FFF)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_2
    add-int/lit8 v0, v2, 0x1

    add-float/2addr p1, v5

    move v2, v0

    goto :goto_0
.end method

.method public setCenter(FF)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mCenterX:F

    .line 133
    iput p2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mCenterY:F

    .line 134
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->mScale:F

    .line 164
    return-void
.end method
