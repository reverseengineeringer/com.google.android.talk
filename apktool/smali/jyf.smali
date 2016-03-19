.class public final Ljyf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljxr;

.field public c:[Lkbh;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/String;

.field public g:[[B

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4261
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5266
    iput-object v1, p0, Ljyf;->responseHeader:Lkdp;

    .line 5267
    iput-object v1, p0, Ljyf;->a:Ljava/lang/Integer;

    .line 5268
    iput-object v1, p0, Ljyf;->b:Ljxr;

    .line 5269
    invoke-static {}, Lkbh;->d()[Lkbh;

    move-result-object v0

    iput-object v0, p0, Ljyf;->c:[Lkbh;

    .line 5270
    iput-object v1, p0, Ljyf;->d:Ljava/lang/Boolean;

    .line 5271
    iput-object v1, p0, Ljyf;->e:Ljava/lang/Long;

    .line 5272
    iput-object v1, p0, Ljyf;->f:Ljava/lang/String;

    .line 5273
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Ljyf;->g:[[B

    .line 5274
    iput-object v1, p0, Ljyf;->eD:Llyd;

    .line 5275
    const/4 v0, -0x1

    iput v0, p0, Ljyf;->eE:I

    .line 4263
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6377
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6378
    sparse-switch v0, :sswitch_data_0

    .line 6382
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6383
    :sswitch_0
    return-object p0

    .line 6388
    :sswitch_1
    iget-object v0, p0, Ljyf;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 6389
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Ljyf;->responseHeader:Lkdp;

    .line 6391
    :cond_1
    iget-object v0, p0, Ljyf;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6395
    :sswitch_2
    iget-object v0, p0, Ljyf;->b:Ljxr;

    if-nez v0, :cond_2

    .line 6396
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iput-object v0, p0, Ljyf;->b:Ljxr;

    .line 6398
    :cond_2
    iget-object v0, p0, Ljyf;->b:Ljxr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6402
    :sswitch_3
    const/16 v0, 0x1a

    .line 6403
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6404
    iget-object v0, p0, Ljyf;->c:[Lkbh;

    if-nez v0, :cond_4

    move v0, v1

    .line 6405
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbh;

    .line 6407
    if-eqz v0, :cond_3

    .line 6408
    iget-object v3, p0, Ljyf;->c:[Lkbh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6410
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 6411
    new-instance v3, Lkbh;

    invoke-direct {v3}, Lkbh;-><init>()V

    aput-object v3, v2, v0

    .line 6412
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6413
    invoke-virtual {p1}, Llxy;->a()I

    .line 6410
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6404
    :cond_4
    iget-object v0, p0, Ljyf;->c:[Lkbh;

    array-length v0, v0

    goto :goto_1

    .line 6416
    :cond_5
    new-instance v3, Lkbh;

    invoke-direct {v3}, Lkbh;-><init>()V

    aput-object v3, v2, v0

    .line 6417
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6418
    iput-object v2, p0, Ljyf;->c:[Lkbh;

    goto :goto_0

    .line 6422
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljyf;->e:Ljava/lang/Long;

    goto :goto_0

    .line 6426
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljyf;->f:Ljava/lang/String;

    goto :goto_0

    .line 6430
    :sswitch_6
    const/16 v0, 0x32

    .line 6431
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6432
    iget-object v0, p0, Ljyf;->g:[[B

    if-nez v0, :cond_7

    move v0, v1

    .line 6433
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    .line 6434
    if-eqz v0, :cond_6

    .line 6435
    iget-object v3, p0, Ljyf;->g:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6437
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 6438
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 6439
    invoke-virtual {p1}, Llxy;->a()I

    .line 6437
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6432
    :cond_7
    iget-object v0, p0, Ljyf;->g:[[B

    array-length v0, v0

    goto :goto_3

    .line 6442
    :cond_8
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 6443
    iput-object v2, p0, Ljyf;->g:[[B

    goto/16 :goto_0

    .line 6447
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyf;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 6451
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6452
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 6456
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljyf;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 6378
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    .line 6452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4282
    iget-object v0, p0, Ljyf;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 4283
    const/4 v0, 0x1

    iget-object v2, p0, Ljyf;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4285
    :cond_0
    iget-object v0, p0, Ljyf;->b:Ljxr;

    if-eqz v0, :cond_1

    .line 4286
    const/4 v0, 0x2

    iget-object v2, p0, Ljyf;->b:Ljxr;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4288
    :cond_1
    iget-object v0, p0, Ljyf;->c:[Lkbh;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljyf;->c:[Lkbh;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 4289
    :goto_0
    iget-object v2, p0, Ljyf;->c:[Lkbh;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 4290
    iget-object v2, p0, Ljyf;->c:[Lkbh;

    aget-object v2, v2, v0

    .line 4291
    if-eqz v2, :cond_2

    .line 4292
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 4289
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4296
    :cond_3
    iget-object v0, p0, Ljyf;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 4297
    const/4 v0, 0x4

    iget-object v2, p0, Ljyf;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 4299
    :cond_4
    iget-object v0, p0, Ljyf;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 4300
    const/4 v0, 0x5

    iget-object v2, p0, Ljyf;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 4302
    :cond_5
    iget-object v0, p0, Ljyf;->g:[[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljyf;->g:[[B

    array-length v0, v0

    if-lez v0, :cond_7

    .line 4303
    :goto_1
    iget-object v0, p0, Ljyf;->g:[[B

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 4304
    iget-object v0, p0, Ljyf;->g:[[B

    aget-object v0, v0, v1

    .line 4305
    if-eqz v0, :cond_6

    .line 4306
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->a(I[B)V

    .line 4303
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4310
    :cond_7
    iget-object v0, p0, Ljyf;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 4311
    const/4 v0, 0x7

    iget-object v1, p0, Ljyf;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 4313
    :cond_8
    iget-object v0, p0, Ljyf;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 4314
    const/16 v0, 0x8

    iget-object v1, p0, Ljyf;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4316
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4317
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4321
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4322
    iget-object v2, p0, Ljyf;->responseHeader:Lkdp;

    if-eqz v2, :cond_0

    .line 4323
    const/4 v2, 0x1

    iget-object v3, p0, Ljyf;->responseHeader:Lkdp;

    .line 4324
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4326
    :cond_0
    iget-object v2, p0, Ljyf;->b:Ljxr;

    if-eqz v2, :cond_1

    .line 4327
    const/4 v2, 0x2

    iget-object v3, p0, Ljyf;->b:Ljxr;

    .line 4328
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4330
    :cond_1
    iget-object v2, p0, Ljyf;->c:[Lkbh;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljyf;->c:[Lkbh;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 4331
    :goto_0
    iget-object v3, p0, Ljyf;->c:[Lkbh;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 4332
    iget-object v3, p0, Ljyf;->c:[Lkbh;

    aget-object v3, v3, v0

    .line 4333
    if-eqz v3, :cond_2

    .line 4334
    const/4 v4, 0x3

    .line 4335
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4331
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 4339
    :cond_4
    iget-object v2, p0, Ljyf;->e:Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 4340
    const/4 v2, 0x4

    iget-object v3, p0, Ljyf;->e:Ljava/lang/Long;

    .line 4341
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4343
    :cond_5
    iget-object v2, p0, Ljyf;->f:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 4344
    const/4 v2, 0x5

    iget-object v3, p0, Ljyf;->f:Ljava/lang/String;

    .line 4345
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4347
    :cond_6
    iget-object v2, p0, Ljyf;->g:[[B

    if-eqz v2, :cond_9

    iget-object v2, p0, Ljyf;->g:[[B

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v1

    move v3, v1

    .line 4350
    :goto_1
    iget-object v4, p0, Ljyf;->g:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_8

    .line 4351
    iget-object v4, p0, Ljyf;->g:[[B

    aget-object v4, v4, v1

    .line 4352
    if-eqz v4, :cond_7

    .line 4353
    add-int/lit8 v3, v3, 0x1

    .line 4355
    invoke-static {v4}, Llxz;->a([B)I

    move-result v4

    add-int/2addr v2, v4

    .line 4350
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4358
    :cond_8
    add-int/2addr v0, v2

    .line 4359
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 4361
    :cond_9
    iget-object v1, p0, Ljyf;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 4362
    const/4 v1, 0x7

    iget-object v2, p0, Ljyf;->d:Ljava/lang/Boolean;

    .line 4363
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4363
    add-int/2addr v0, v1

    .line 4365
    :cond_a
    iget-object v1, p0, Ljyf;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 4366
    const/16 v1, 0x8

    iget-object v2, p0, Ljyf;->a:Ljava/lang/Integer;

    .line 4367
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4369
    :cond_b
    return v0
.end method
