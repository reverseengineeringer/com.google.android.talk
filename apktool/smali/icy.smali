.class public Licy;
.super Ligq;
.source "SourceFile"


# instance fields
.field private a:Licy;

.field b:Licu;

.field c:I

.field d:I

.field public e:I

.field f:I

.field g:Landroid/graphics/RectF;

.field h:La;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ligq;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Licy;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Licy;->a:Licy;

    .line 429
    return-void
.end method

.method public b(ILicu;III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p2}, Licu;->f()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ligq;->a(II)V

    .line 227
    iput-object p2, p0, Licy;->b:Licu;

    .line 228
    iput v1, p0, Licy;->c:I

    .line 229
    iput p5, p0, Licy;->d:I

    .line 230
    iput p3, p0, Licy;->e:I

    .line 231
    iput p4, p0, Licy;->f:I

    .line 232
    iput-object v2, p0, Licy;->g:Landroid/graphics/RectF;

    .line 233
    iput-object v2, p0, Licy;->h:La;

    .line 234
    iput v1, p0, Licy;->k:I

    .line 235
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 329
    iget v0, p0, Licy;->c:I

    packed-switch v0, :pswitch_data_0

    .line 343
    const-string v0, ""

    :goto_0
    return-object v0

    .line 331
    :pswitch_0
    iget v0, p0, Licy;->e:I

    iget v1, p0, Licy;->f:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    :pswitch_1
    const-string v0, "thumbnail"

    goto :goto_0

    .line 335
    :pswitch_2
    const-string v0, "large"

    goto :goto_0

    .line 337
    :pswitch_3
    const-string v0, "full"

    goto :goto_0

    .line 339
    :pswitch_4
    const-string v0, "original"

    goto :goto_0

    .line 341
    :pswitch_5
    iget v0, p0, Licy;->e:I

    iget v1, p0, Licy;->f:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "auto("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public d()I
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Licy;->e:I

    iget v1, p0, Licy;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 251
    if-eqz v0, :cond_0

    .line 1059
    sget v1, Licw;->d:I

    .line 251
    if-le v0, v1, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x6

    .line 256
    :goto_0
    return v0

    .line 2059
    :cond_1
    sget v1, Licw;->e:I

    .line 253
    if-le v0, v1, :cond_2

    .line 254
    const/4 v0, 0x7

    goto :goto_0

    .line 256
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    iget v0, p0, Licy;->c:I

    packed-switch v0, :pswitch_data_0

    .line 354
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 349
    :pswitch_0
    iget v0, p0, Licy;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 350
    const-string v1, "-"

    iget v0, p0, Licy;->d:I

    .line 5119
    packed-switch v0, :pswitch_data_1

    .line 5124
    const-string v0, ""

    .line 350
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5120
    :pswitch_1
    const-string v0, "H"

    goto :goto_1

    .line 5121
    :pswitch_2
    const-string v0, "S"

    goto :goto_1

    .line 5122
    :pswitch_3
    const-string v0, "L"

    goto :goto_1

    .line 5123
    :pswitch_4
    const-string v0, "VL"

    goto :goto_1

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 5119
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    if-ne p1, p0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    instance-of v2, p1, Licy;

    if-nez v2, :cond_2

    move v0, v1

    .line 278
    goto :goto_0

    .line 281
    :cond_2
    check-cast p1, Licy;

    .line 282
    iget v2, p0, Ligq;->i:I

    iget v3, p1, Ligq;->i:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Licy;->d:I

    iget v3, p1, Licy;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Licy;->b:Licu;

    iget-object v3, p1, Licy;->b:Licu;

    .line 284
    invoke-virtual {v2, v3}, Licu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3303
    iget v2, p0, Licy;->c:I

    iget v3, p1, Licy;->c:I

    if-eq v2, v3, :cond_4

    move v2, v1

    .line 285
    :goto_1
    if-eqz v2, :cond_3

    iget-object v2, p0, Licy;->h:La;

    iget-object v3, p1, Licy;->h:La;

    .line 4291
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    move v2, v0

    .line 286
    :goto_2
    if-eqz v2, :cond_3

    iget-object v2, p0, Licy;->g:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    iget-object v2, p0, Licy;->g:Landroid/graphics/RectF;

    iget-object v3, p1, Licy;->g:Landroid/graphics/RectF;

    .line 287
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 3306
    :cond_4
    iget v2, p0, Licy;->c:I

    sparse-switch v2, :sswitch_data_0

    :cond_5
    move v2, v0

    .line 3312
    goto :goto_1

    .line 3308
    :sswitch_0
    invoke-virtual {p0}, Licy;->d()I

    move-result v2

    invoke-virtual {p1}, Licy;->d()I

    move-result v3

    if-eq v2, v3, :cond_5

    move v2, v1

    goto :goto_1

    .line 3310
    :sswitch_1
    iget v2, p0, Licy;->e:I

    iget v3, p1, Licy;->e:I

    if-ne v2, v3, :cond_6

    iget v2, p0, Licy;->f:I

    iget v3, p1, Licy;->f:I

    if-eq v2, v3, :cond_5

    :cond_6
    move v2, v1

    goto :goto_1

    .line 4295
    :cond_7
    if-nez v2, :cond_8

    if-nez v3, :cond_9

    :cond_8
    if-eqz v2, :cond_a

    if-nez v3, :cond_a

    :cond_9
    move v2, v1

    .line 4296
    goto :goto_2

    .line 4299
    :cond_a
    invoke-interface {v2}, La;->s()Z

    move-result v2

    goto :goto_2

    .line 3306
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected f()Ljava/lang/String;
    .locals 6

    .prologue
    .line 358
    iget-object v0, p0, Licy;->g:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Licy;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Licy;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Licy;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Licy;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x4a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, ", crop("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    const-string v0, ""

    .line 367
    iget v1, p0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 368
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " no-disk-cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_0
    iget v1, p0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 371
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " download-only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_1
    iget v1, p0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 374
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " accept-animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    iget v1, p0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 376
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-disable-webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_2
    iget v1, p0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 380
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " disable-decoding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    :cond_3
    iget v1, p0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 383
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " disable-recycling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    :cond_4
    iget v1, p0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 386
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " disable-webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_5
    iget v1, p0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 389
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " accept-bitmap-container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_6
    iget v1, p0, Ligq;->i:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 392
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " disable-loading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_7
    iget v1, p0, Ligq;->i:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 395
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " disable-smart-crop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_8
    iget v1, p0, Ligq;->i:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 398
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " disable-upscale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_9
    iget v1, p0, Ligq;->i:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 401
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " long-term-cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_a
    iget v1, p0, Ligq;->i:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 404
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " keep-partial-download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_b
    iget v1, p0, Ligq;->i:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 407
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " disable-automatic-high-res-download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_c
    iget v1, p0, Ligq;->i:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    .line 410
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " allow-large-file-download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_d
    iget v1, p0, Ligq;->i:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    .line 413
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " for-media-sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_e
    iget v1, p0, Ligq;->i:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 416
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " prefer-high-res-download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_f
    iget v1, p0, Ligq;->i:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 419
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " convert-webp-to-jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_10
    iget v1, p0, Ligq;->i:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 422
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " include-exif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_11
    return-object v0
.end method

.method public h()Licy;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Licy;->a:Licy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 262
    iget v0, p0, Licy;->k:I

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Licy;->b:Licu;

    iget v1, p0, Licy;->c:I

    iget-object v2, p0, Licy;->g:Landroid/graphics/RectF;

    iget v3, p0, Ligq;->i:I

    .line 2093
    add-int/lit16 v3, v3, 0x20f

    .line 265
    invoke-static {v2, v3}, Laal;->a(Ljava/lang/Object;I)I

    move-result v2

    .line 3093
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    .line 263
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Licy;->k:I

    .line 268
    :cond_0
    iget v0, p0, Licy;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 318
    invoke-virtual {p0}, Licy;->c()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {p0}, Licy;->e()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {p0}, Licy;->f()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {p0}, Licy;->g()Ljava/lang/String;

    move-result-object v4

    .line 323
    iget-object v0, p0, Licy;->h:La;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 324
    :goto_0
    iget-object v5, p0, Licy;->b:Licu;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") hasEdits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
