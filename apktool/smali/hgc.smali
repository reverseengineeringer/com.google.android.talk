.class public Lhgc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public final g:Ljava/nio/FloatBuffer;

.field public final h:Ljava/nio/FloatBuffer;

.field private final i:Ljava/lang/String;

.field private j:Z

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/RectF;

.field private m:Z

.field private n:[F

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private final w:Landroid/graphics/RectF;

.field private final x:[F

.field private final y:Landroid/graphics/RectF;

.field private final z:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lhgc;->k:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lhgc;->l:Landroid/graphics/RectF;

    .line 1043
    sget-object v0, Lhll;->a:[F

    .line 40
    iput-object v0, p0, Lhgc;->n:[F

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lhgc;->w:Landroid/graphics/RectF;

    .line 74
    new-array v0, v2, [F

    iput-object v0, p0, Lhgc;->x:[F

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lhgc;->y:Landroid/graphics/RectF;

    .line 77
    new-array v0, v2, [F

    iput-object v0, p0, Lhgc;->z:[F

    .line 112
    iput-object p1, p0, Lhgc;->i:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lhgc;->x:[F

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lhgc;->g:Ljava/nio/FloatBuffer;

    .line 116
    iget-object v0, p0, Lhgc;->z:[F

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lhgc;->h:Ljava/nio/FloatBuffer;

    .line 119
    return-void
.end method

.method private static a(Landroid/graphics/RectF;[F)V
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/RectF;->left:F

    aput v1, p1, v0

    .line 265
    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    aput v1, p1, v0

    .line 266
    const/4 v0, 0x2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    aput v1, p1, v0

    .line 267
    const/4 v0, 0x3

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    aput v1, p1, v0

    .line 268
    const/4 v0, 0x4

    iget v1, p0, Landroid/graphics/RectF;->right:F

    aput v1, p1, v0

    .line 269
    const/4 v0, 0x5

    iget v1, p0, Landroid/graphics/RectF;->top:F

    aput v1, p1, v0

    .line 270
    const/4 v0, 0x6

    iget v1, p0, Landroid/graphics/RectF;->left:F

    aput v1, p1, v0

    .line 271
    const/4 v0, 0x7

    iget v1, p0, Landroid/graphics/RectF;->top:F

    aput v1, p1, v0

    .line 272
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    iget v0, p0, Lhgc;->p:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 257
    iget v0, p0, Lhgc;->q:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 258
    iput v1, p0, Lhgc;->p:I

    .line 259
    iput v1, p0, Lhgc;->q:I

    .line 260
    iput v1, p0, Lhgc;->r:I

    .line 261
    return-void
.end method

.method public a(IIIZZ)V
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lhgc;->a:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lhgc;->b:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lhgc;->c:I

    if-ne p3, v0, :cond_0

    iget-boolean v0, p0, Lhgc;->d:Z

    if-ne p4, v0, :cond_0

    iget-boolean v0, p0, Lhgc;->j:Z

    if-eq p5, v0, :cond_1

    .line 133
    :cond_0
    iput p1, p0, Lhgc;->a:I

    .line 134
    iput p2, p0, Lhgc;->b:I

    .line 135
    iput p3, p0, Lhgc;->c:I

    .line 136
    iput-boolean p4, p0, Lhgc;->d:Z

    .line 137
    iput-boolean p5, p0, Lhgc;->j:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhgc;->o:Z

    .line 149
    :cond_1
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lhgc;->e:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lhgc;->f:I

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lhgc;->m:Z

    if-eq p3, v0, :cond_1

    .line 208
    :cond_0
    iput p1, p0, Lhgc;->e:I

    .line 209
    iput p2, p0, Lhgc;->f:I

    .line 210
    iput-boolean p3, p0, Lhgc;->m:Z

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhgc;->o:Z

    .line 220
    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 160
    iget-object v0, p0, Lhgc;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Bad crop rect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 164
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 166
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v4

    cmpg-float v0, v0, v5

    if-gez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 167
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v4

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v3, v2}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 169
    iget-object v0, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 170
    iget-object v0, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 171
    iget-object v0, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 172
    iput-boolean v1, p0, Lhgc;->o:Z

    .line 179
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 162
    goto :goto_0

    :cond_3
    move v0, v2

    .line 164
    goto :goto_1

    :cond_4
    move v0, v2

    .line 166
    goto :goto_2
.end method

.method public b(Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 183
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    move v0, v1

    .line 1134
    :goto_0
    const-string v3, "Expected condition to be true"

    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 184
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    move v2, v1

    .line 2134
    :cond_0
    const-string v0, "Expected condition to be true"

    invoke-static {v0, v2}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 185
    iget-object v0, p0, Lhgc;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 187
    iget-object v0, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 188
    iget-object v0, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 189
    iget-object v0, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 190
    iput-boolean v1, p0, Lhgc;->o:Z

    .line 197
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 183
    goto :goto_0
.end method

.method public b([F)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lhgc;->n:[F

    .line 202
    return-void
.end method

.method c()V
    .locals 15

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 279
    iget-boolean v0, p0, Lhgc;->o:Z

    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v0, v5, v0

    iget-object v2, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v6, v0, v2

    .line 287
    iget-object v0, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, v5, v0

    iget-object v2, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v2

    .line 288
    iget v0, p0, Lhgc;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v8, v0

    .line 289
    iget v0, p0, Lhgc;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v9, v0

    .line 290
    int-to-float v0, v8

    int-to-float v2, v9

    div-float/2addr v0, v2

    .line 291
    iget v2, p0, Lhgc;->e:I

    int-to-float v2, v2

    iget v3, p0, Lhgc;->f:I

    int-to-float v3, v3

    div-float v10, v2, v3

    .line 303
    iget-boolean v2, p0, Lhgc;->m:Z

    if-eqz v2, :cond_5

    .line 304
    cmpl-float v2, v10, v0

    if-lez v2, :cond_2

    .line 306
    sub-float v0, v10, v0

    div-float/2addr v0, v10

    .line 307
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v11

    move v2, v1

    move v3, v0

    move v4, v1

    .line 322
    :goto_1
    iget-object v11, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    cmpl-float v11, v11, v1

    if-lez v11, :cond_1

    iget-object v11, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v11, v1

    if-lez v1, :cond_1

    .line 324
    iget-object v1, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v6

    .line 325
    iget-object v11, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v7

    .line 326
    iget-object v12, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    mul-float/2addr v12, v6

    sub-float/2addr v6, v12

    .line 328
    iget-object v12, p0, Lhgc;->l:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v12, v7

    sub-float/2addr v7, v12

    .line 335
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 336
    invoke-static {v3, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 337
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 338
    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 348
    :cond_1
    iget-object v1, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    .line 349
    iget-object v6, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v3

    .line 350
    iget-object v7, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v2

    .line 351
    iget-object v11, p0, Lhgc;->k:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v0

    .line 359
    iget-boolean v12, p0, Lhgc;->d:Z

    if-eqz v12, :cond_3

    .line 360
    iget-object v12, p0, Lhgc;->w:Landroid/graphics/RectF;

    sub-float v1, v5, v1

    iput v1, v12, Landroid/graphics/RectF;->left:F

    .line 361
    iget-object v1, p0, Lhgc;->w:Landroid/graphics/RectF;

    iput v7, v1, Landroid/graphics/RectF;->right:F

    .line 366
    :goto_2
    iget-object v1, p0, Lhgc;->w:Landroid/graphics/RectF;

    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 367
    iget-object v1, p0, Lhgc;->w:Landroid/graphics/RectF;

    sub-float v6, v5, v11

    iput v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 374
    iget-object v1, p0, Lhgc;->w:Landroid/graphics/RectF;

    iget-object v6, p0, Lhgc;->x:[F

    invoke-static {v1, v6}, Lhgc;->a(Landroid/graphics/RectF;[F)V

    .line 375
    iget-object v1, p0, Lhgc;->g:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lhgc;->x:[F

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 378
    int-to-float v1, v8

    mul-float/2addr v1, v4

    .line 379
    int-to-float v4, v9

    mul-float/2addr v3, v4

    .line 380
    int-to-float v4, v8

    mul-float/2addr v2, v4

    .line 381
    int-to-float v4, v9

    mul-float/2addr v0, v4

    .line 383
    int-to-float v4, v8

    sub-float v1, v4, v1

    sub-float/2addr v1, v2

    .line 384
    int-to-float v2, v9

    sub-float/2addr v2, v3

    sub-float v0, v2, v0

    .line 392
    div-float v2, v1, v0

    .line 395
    cmpl-float v2, v10, v2

    if-lez v2, :cond_4

    .line 397
    iget v2, p0, Lhgc;->f:I

    int-to-float v2, v2

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lhgc;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v14, v5

    move v5, v0

    move v0, v14

    .line 411
    :goto_3
    iget-object v1, p0, Lhgc;->y:Landroid/graphics/RectF;

    neg-float v2, v5

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 412
    iget-object v1, p0, Lhgc;->y:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 413
    iget-object v1, p0, Lhgc;->y:Landroid/graphics/RectF;

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 414
    iget-object v1, p0, Lhgc;->y:Landroid/graphics/RectF;

    neg-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 420
    iget-object v0, p0, Lhgc;->y:Landroid/graphics/RectF;

    iget-object v1, p0, Lhgc;->z:[F

    invoke-static {v0, v1}, Lhgc;->a(Landroid/graphics/RectF;[F)V

    .line 421
    iget-object v0, p0, Lhgc;->h:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lhgc;->z:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 423
    iput-boolean v13, p0, Lhgc;->o:Z

    goto/16 :goto_0

    .line 310
    :cond_2
    sub-float v2, v0, v10

    div-float v0, v2, v0

    .line 311
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v11

    move v2, v0

    move v3, v1

    move v4, v0

    move v0, v1

    goto/16 :goto_1

    .line 363
    :cond_3
    iget-object v12, p0, Lhgc;->w:Landroid/graphics/RectF;

    iput v1, v12, Landroid/graphics/RectF;->left:F

    .line 364
    iget-object v1, p0, Lhgc;->w:Landroid/graphics/RectF;

    sub-float v7, v5, v7

    iput v7, v1, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 402
    :cond_4
    iget v2, p0, Lhgc;->e:I

    int-to-float v2, v2

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lhgc;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_1
.end method

.method public d()Z
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const v5, 0x84c0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2226
    iget v0, p0, Lhgc;->p:I

    if-nez v0, :cond_1

    .line 2227
    const-string v0, "attribute vec4 vPosition;attribute vec2 a_texCoord;uniform mat4 a_xform;varying vec2 v_texCoord;void main() {  gl_Position = vPosition;  v_texCoord = vec2(a_xform * vec4(a_texCoord, 1.0, 1.0));}"

    const-string v2, "uniform sampler2D s_texture;precision mediump float;varying vec2 v_texCoord;void main() {  gl_FragColor = texture2D(s_texture, v_texCoord);}"

    invoke-static {v0, v2}, Laal;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhgc;->p:I

    .line 2228
    const-string v0, "failed to compile regular shaders"

    invoke-static {v0}, Laal;->B(Ljava/lang/String;)V

    .line 2229
    iget v0, p0, Lhgc;->p:I

    if-nez v0, :cond_0

    .line 2230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to compile regular shaders; no GL error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2232
    :cond_0
    const-string v0, "attribute vec4 vPosition;attribute vec2 a_texCoord;uniform mat4 a_xform;varying vec2 v_texCoord;void main() {  gl_Position = vPosition;  v_texCoord = vec2(a_xform * vec4(a_texCoord, 1.0, 1.0));}"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES s_texture;precision mediump float;varying vec2 v_texCoord;void main() {  gl_FragColor = texture2D(s_texture, v_texCoord);}"

    invoke-static {v0, v2}, Laal;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhgc;->q:I

    .line 2233
    const-string v0, "failed to compile OES shaders"

    invoke-static {v0}, Laal;->B(Ljava/lang/String;)V

    .line 2234
    iget v0, p0, Lhgc;->q:I

    if-nez v0, :cond_1

    .line 2235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to compile OES shaders; no GL error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    invoke-virtual {p0}, Lhgc;->c()V

    .line 2242
    iget-boolean v0, p0, Lhgc;->j:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lhgc;->q:I

    .line 2243
    :goto_0
    iget v2, p0, Lhgc;->r:I

    if-eq v0, v2, :cond_2

    .line 2244
    iput v0, p0, Lhgc;->r:I

    .line 2245
    iget v0, p0, Lhgc;->r:I

    const-string v2, "a_texCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lhgc;->t:I

    .line 2246
    iget v0, p0, Lhgc;->r:I

    const-string v2, "vPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lhgc;->u:I

    .line 2247
    iget v0, p0, Lhgc;->r:I

    const-string v2, "s_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lhgc;->s:I

    .line 2248
    iget v0, p0, Lhgc;->r:I

    const-string v2, "a_xform"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lhgc;->v:I

    .line 2249
    const-string v0, "get..Location"

    invoke-static {v0}, Laal;->B(Ljava/lang/String;)V

    .line 2251
    :cond_2
    iget v0, p0, Lhgc;->r:I

    .line 435
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 436
    iget v0, p0, Lhgc;->e:I

    iget v2, p0, Lhgc;->f:I

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 439
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 440
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 441
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 442
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 445
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 446
    const/16 v0, 0xde1

    .line 447
    iget-boolean v2, p0, Lhgc;->j:Z

    if-eqz v2, :cond_3

    .line 448
    const v0, 0x8d65

    .line 450
    :cond_3
    iget v2, p0, Lhgc;->a:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 451
    iget v2, p0, Lhgc;->v:I

    iget-object v4, p0, Lhgc;->n:[F

    invoke-static {v2, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 452
    iget v2, p0, Lhgc;->s:I

    .line 3100
    const v4, 0x84df

    invoke-static {v5, v5, v4}, Lhbs;->a(III)V

    .line 452
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 453
    const/16 v2, 0x2801

    const/16 v4, 0x2601

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 454
    const/16 v2, 0x2800

    const/16 v4, 0x2601

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 457
    const/16 v2, 0x2802

    const v4, 0x812f

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 458
    const/16 v2, 0x2803

    const v4, 0x812f

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 461
    iget v0, p0, Lhgc;->t:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lhgc;->g:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 462
    iget v0, p0, Lhgc;->t:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 465
    iget v0, p0, Lhgc;->u:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lhgc;->h:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 466
    iget v0, p0, Lhgc;->u:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 469
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 472
    const-string v0, "drawFrame"

    invoke-static {v0}, Laal;->C(Ljava/lang/String;)V

    .line 474
    return v6

    .line 2242
    :cond_4
    iget v0, p0, Lhgc;->p:I

    goto/16 :goto_0
.end method
