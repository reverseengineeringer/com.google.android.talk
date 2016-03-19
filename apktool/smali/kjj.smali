.class public final Lkjj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkja;

.field public b:Lkii;

.field public c:[Lkja;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4337
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5342
    iput-object v1, p0, Lkjj;->responseHeader:Lkdp;

    .line 5343
    iput-object v1, p0, Lkjj;->a:Lkja;

    .line 5344
    iput-object v1, p0, Lkjj;->b:Lkii;

    .line 5345
    invoke-static {}, Lkja;->d()[Lkja;

    move-result-object v0

    iput-object v0, p0, Lkjj;->c:[Lkja;

    .line 5346
    iput-object v1, p0, Lkjj;->eD:Llyd;

    .line 5347
    const/4 v0, -0x1

    iput v0, p0, Lkjj;->eE:I

    .line 4339
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5406
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5407
    sparse-switch v0, :sswitch_data_0

    .line 5411
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5412
    :sswitch_0
    return-object p0

    .line 5417
    :sswitch_1
    iget-object v0, p0, Lkjj;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 5418
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkjj;->responseHeader:Lkdp;

    .line 5420
    :cond_1
    iget-object v0, p0, Lkjj;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5424
    :sswitch_2
    iget-object v0, p0, Lkjj;->a:Lkja;

    if-nez v0, :cond_2

    .line 5425
    new-instance v0, Lkja;

    invoke-direct {v0}, Lkja;-><init>()V

    iput-object v0, p0, Lkjj;->a:Lkja;

    .line 5427
    :cond_2
    iget-object v0, p0, Lkjj;->a:Lkja;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5431
    :sswitch_3
    iget-object v0, p0, Lkjj;->b:Lkii;

    if-nez v0, :cond_3

    .line 5432
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkjj;->b:Lkii;

    .line 5434
    :cond_3
    iget-object v0, p0, Lkjj;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5438
    :sswitch_4
    const/16 v0, 0x22

    .line 5439
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5440
    iget-object v0, p0, Lkjj;->c:[Lkja;

    if-nez v0, :cond_5

    move v0, v1

    .line 5441
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkja;

    .line 5443
    if-eqz v0, :cond_4

    .line 5444
    iget-object v3, p0, Lkjj;->c:[Lkja;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5446
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 5447
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 5448
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5449
    invoke-virtual {p1}, Llxy;->a()I

    .line 5446
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5440
    :cond_5
    iget-object v0, p0, Lkjj;->c:[Lkja;

    array-length v0, v0

    goto :goto_1

    .line 5452
    :cond_6
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 5453
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5454
    iput-object v2, p0, Lkjj;->c:[Lkja;

    goto :goto_0

    .line 5407
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 4354
    iget-object v0, p0, Lkjj;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 4355
    const/4 v0, 0x1

    iget-object v1, p0, Lkjj;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4357
    :cond_0
    iget-object v0, p0, Lkjj;->a:Lkja;

    if-eqz v0, :cond_1

    .line 4358
    const/4 v0, 0x2

    iget-object v1, p0, Lkjj;->a:Lkja;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4360
    :cond_1
    iget-object v0, p0, Lkjj;->b:Lkii;

    if-eqz v0, :cond_2

    .line 4361
    const/4 v0, 0x3

    iget-object v1, p0, Lkjj;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4363
    :cond_2
    iget-object v0, p0, Lkjj;->c:[Lkja;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkjj;->c:[Lkja;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 4364
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkjj;->c:[Lkja;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 4365
    iget-object v1, p0, Lkjj;->c:[Lkja;

    aget-object v1, v1, v0

    .line 4366
    if-eqz v1, :cond_3

    .line 4367
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4364
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4371
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4372
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 4376
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4377
    iget-object v1, p0, Lkjj;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 4378
    const/4 v1, 0x1

    iget-object v2, p0, Lkjj;->responseHeader:Lkdp;

    .line 4379
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4381
    :cond_0
    iget-object v1, p0, Lkjj;->a:Lkja;

    if-eqz v1, :cond_1

    .line 4382
    const/4 v1, 0x2

    iget-object v2, p0, Lkjj;->a:Lkja;

    .line 4383
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4385
    :cond_1
    iget-object v1, p0, Lkjj;->b:Lkii;

    if-eqz v1, :cond_2

    .line 4386
    const/4 v1, 0x3

    iget-object v2, p0, Lkjj;->b:Lkii;

    .line 4387
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4389
    :cond_2
    iget-object v1, p0, Lkjj;->c:[Lkja;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkjj;->c:[Lkja;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 4390
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkjj;->c:[Lkja;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 4391
    iget-object v2, p0, Lkjj;->c:[Lkja;

    aget-object v2, v2, v0

    .line 4392
    if-eqz v2, :cond_3

    .line 4393
    const/4 v3, 0x4

    .line 4394
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4390
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 4398
    :cond_5
    return v0
.end method
