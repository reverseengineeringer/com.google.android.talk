.class public final Lkhn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkhk;

.field public b:Lkhm;

.field public c:Ljava/lang/Boolean;

.field public d:Lkii;

.field public e:[Lkhk;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4341
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5346
    iput-object v1, p0, Lkhn;->requestHeader:Lkdo;

    .line 5347
    iput-object v1, p0, Lkhn;->a:Lkhk;

    .line 5348
    iput-object v1, p0, Lkhn;->b:Lkhm;

    .line 5349
    iput-object v1, p0, Lkhn;->c:Ljava/lang/Boolean;

    .line 5350
    iput-object v1, p0, Lkhn;->d:Lkii;

    .line 5351
    invoke-static {}, Lkhk;->d()[Lkhk;

    move-result-object v0

    iput-object v0, p0, Lkhn;->e:[Lkhk;

    .line 5352
    iput-object v1, p0, Lkhn;->eD:Llyd;

    .line 5353
    const/4 v0, -0x1

    iput v0, p0, Lkhn;->eE:I

    .line 4343
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6427
    sparse-switch v0, :sswitch_data_0

    .line 6431
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6432
    :sswitch_0
    return-object p0

    .line 6437
    :sswitch_1
    iget-object v0, p0, Lkhn;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 6438
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkhn;->requestHeader:Lkdo;

    .line 6440
    :cond_1
    iget-object v0, p0, Lkhn;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6444
    :sswitch_2
    iget-object v0, p0, Lkhn;->a:Lkhk;

    if-nez v0, :cond_2

    .line 6445
    new-instance v0, Lkhk;

    invoke-direct {v0}, Lkhk;-><init>()V

    iput-object v0, p0, Lkhn;->a:Lkhk;

    .line 6447
    :cond_2
    iget-object v0, p0, Lkhn;->a:Lkhk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6451
    :sswitch_3
    iget-object v0, p0, Lkhn;->b:Lkhm;

    if-nez v0, :cond_3

    .line 6452
    new-instance v0, Lkhm;

    invoke-direct {v0}, Lkhm;-><init>()V

    iput-object v0, p0, Lkhn;->b:Lkhm;

    .line 6454
    :cond_3
    iget-object v0, p0, Lkhn;->b:Lkhm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6458
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkhn;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 6462
    :sswitch_5
    iget-object v0, p0, Lkhn;->d:Lkii;

    if-nez v0, :cond_4

    .line 6463
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhn;->d:Lkii;

    .line 6465
    :cond_4
    iget-object v0, p0, Lkhn;->d:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6469
    :sswitch_6
    const/16 v0, 0x32

    .line 6470
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6471
    iget-object v0, p0, Lkhn;->e:[Lkhk;

    if-nez v0, :cond_6

    move v0, v1

    .line 6472
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkhk;

    .line 6474
    if-eqz v0, :cond_5

    .line 6475
    iget-object v3, p0, Lkhn;->e:[Lkhk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6477
    :cond_5
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 6478
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 6479
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6480
    invoke-virtual {p1}, Llxy;->a()I

    .line 6477
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6471
    :cond_6
    iget-object v0, p0, Lkhn;->e:[Lkhk;

    array-length v0, v0

    goto :goto_1

    .line 6483
    :cond_7
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 6484
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6485
    iput-object v2, p0, Lkhn;->e:[Lkhk;

    goto/16 :goto_0

    .line 6427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 4360
    iget-object v0, p0, Lkhn;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 4361
    const/4 v0, 0x1

    iget-object v1, p0, Lkhn;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4363
    :cond_0
    iget-object v0, p0, Lkhn;->a:Lkhk;

    if-eqz v0, :cond_1

    .line 4364
    const/4 v0, 0x2

    iget-object v1, p0, Lkhn;->a:Lkhk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4366
    :cond_1
    iget-object v0, p0, Lkhn;->b:Lkhm;

    if-eqz v0, :cond_2

    .line 4367
    const/4 v0, 0x3

    iget-object v1, p0, Lkhn;->b:Lkhm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4369
    :cond_2
    iget-object v0, p0, Lkhn;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 4370
    const/4 v0, 0x4

    iget-object v1, p0, Lkhn;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 4372
    :cond_3
    iget-object v0, p0, Lkhn;->d:Lkii;

    if-eqz v0, :cond_4

    .line 4373
    const/4 v0, 0x5

    iget-object v1, p0, Lkhn;->d:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4375
    :cond_4
    iget-object v0, p0, Lkhn;->e:[Lkhk;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkhn;->e:[Lkhk;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 4376
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkhn;->e:[Lkhk;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 4377
    iget-object v1, p0, Lkhn;->e:[Lkhk;

    aget-object v1, v1, v0

    .line 4378
    if-eqz v1, :cond_5

    .line 4379
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4376
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4383
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4384
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 4388
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4389
    iget-object v1, p0, Lkhn;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 4390
    const/4 v1, 0x1

    iget-object v2, p0, Lkhn;->requestHeader:Lkdo;

    .line 4391
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4393
    :cond_0
    iget-object v1, p0, Lkhn;->a:Lkhk;

    if-eqz v1, :cond_1

    .line 4394
    const/4 v1, 0x2

    iget-object v2, p0, Lkhn;->a:Lkhk;

    .line 4395
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4397
    :cond_1
    iget-object v1, p0, Lkhn;->b:Lkhm;

    if-eqz v1, :cond_2

    .line 4398
    const/4 v1, 0x3

    iget-object v2, p0, Lkhn;->b:Lkhm;

    .line 4399
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4401
    :cond_2
    iget-object v1, p0, Lkhn;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 4402
    const/4 v1, 0x4

    iget-object v2, p0, Lkhn;->c:Ljava/lang/Boolean;

    .line 4403
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4403
    add-int/2addr v0, v1

    .line 4405
    :cond_3
    iget-object v1, p0, Lkhn;->d:Lkii;

    if-eqz v1, :cond_4

    .line 4406
    const/4 v1, 0x5

    iget-object v2, p0, Lkhn;->d:Lkii;

    .line 4407
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4409
    :cond_4
    iget-object v1, p0, Lkhn;->e:[Lkhk;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lkhn;->e:[Lkhk;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 4410
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkhn;->e:[Lkhk;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 4411
    iget-object v2, p0, Lkhn;->e:[Lkhk;

    aget-object v2, v2, v0

    .line 4412
    if-eqz v2, :cond_5

    .line 4413
    const/4 v3, 0x6

    .line 4414
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4410
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 4418
    :cond_7
    return v0
.end method
