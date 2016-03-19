.class public final Lkep;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkep;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkdq;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20367
    invoke-direct {p0}, Llyb;-><init>()V

    .line 21372
    iput-object v1, p0, Lkep;->requestHeader:Lkdo;

    .line 21373
    invoke-static {}, Lkdq;->d()[Lkdq;

    move-result-object v0

    iput-object v0, p0, Lkep;->a:[Lkdq;

    .line 21374
    iput-object v1, p0, Lkep;->eD:Llyd;

    .line 21375
    const/4 v0, -0x1

    iput v0, p0, Lkep;->eE:I

    .line 20369
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 21420
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 21421
    sparse-switch v0, :sswitch_data_0

    .line 21425
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21426
    :sswitch_0
    return-object p0

    .line 21431
    :sswitch_1
    iget-object v0, p0, Lkep;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 21432
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkep;->requestHeader:Lkdo;

    .line 21434
    :cond_1
    iget-object v0, p0, Lkep;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 21438
    :sswitch_2
    const/16 v0, 0x12

    .line 21439
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 21440
    iget-object v0, p0, Lkep;->a:[Lkdq;

    if-nez v0, :cond_3

    move v0, v1

    .line 21441
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkdq;

    .line 21443
    if-eqz v0, :cond_2

    .line 21444
    iget-object v3, p0, Lkep;->a:[Lkdq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21446
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 21447
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 21448
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 21449
    invoke-virtual {p1}, Llxy;->a()I

    .line 21446
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 21440
    :cond_3
    iget-object v0, p0, Lkep;->a:[Lkdq;

    array-length v0, v0

    goto :goto_1

    .line 21452
    :cond_4
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 21453
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 21454
    iput-object v2, p0, Lkep;->a:[Lkdq;

    goto :goto_0

    .line 21421
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 20382
    iget-object v0, p0, Lkep;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 20383
    const/4 v0, 0x1

    iget-object v1, p0, Lkep;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 20385
    :cond_0
    iget-object v0, p0, Lkep;->a:[Lkdq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkep;->a:[Lkdq;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 20386
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkep;->a:[Lkdq;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 20387
    iget-object v1, p0, Lkep;->a:[Lkdq;

    aget-object v1, v1, v0

    .line 20388
    if-eqz v1, :cond_1

    .line 20389
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 20386
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20393
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 20394
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 20398
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 20399
    iget-object v1, p0, Lkep;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 20400
    const/4 v1, 0x1

    iget-object v2, p0, Lkep;->requestHeader:Lkdo;

    .line 20401
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20403
    :cond_0
    iget-object v1, p0, Lkep;->a:[Lkdq;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkep;->a:[Lkdq;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 20404
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkep;->a:[Lkdq;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 20405
    iget-object v2, p0, Lkep;->a:[Lkdq;

    aget-object v2, v2, v0

    .line 20406
    if-eqz v2, :cond_1

    .line 20407
    const/4 v3, 0x2

    .line 20408
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 20404
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 20412
    :cond_3
    return v0
.end method
