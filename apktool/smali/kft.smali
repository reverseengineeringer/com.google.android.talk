.class public final Lkft;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkft;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkab;

.field public b:[B

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29423
    invoke-direct {p0}, Llyb;-><init>()V

    .line 30428
    iput-object v1, p0, Lkft;->requestHeader:Lkdo;

    .line 30429
    invoke-static {}, Lkab;->d()[Lkab;

    move-result-object v0

    iput-object v0, p0, Lkft;->a:[Lkab;

    .line 30430
    iput-object v1, p0, Lkft;->b:[B

    .line 30431
    iput-object v1, p0, Lkft;->eD:Llyd;

    .line 30432
    const/4 v0, -0x1

    iput v0, p0, Lkft;->eE:I

    .line 29425
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30484
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 30485
    sparse-switch v0, :sswitch_data_0

    .line 30489
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30490
    :sswitch_0
    return-object p0

    .line 30495
    :sswitch_1
    iget-object v0, p0, Lkft;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 30496
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkft;->requestHeader:Lkdo;

    .line 30498
    :cond_1
    iget-object v0, p0, Lkft;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 30502
    :sswitch_2
    const/16 v0, 0x12

    .line 30503
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 30504
    iget-object v0, p0, Lkft;->a:[Lkab;

    if-nez v0, :cond_3

    move v0, v1

    .line 30505
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkab;

    .line 30507
    if-eqz v0, :cond_2

    .line 30508
    iget-object v3, p0, Lkft;->a:[Lkab;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30510
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 30511
    new-instance v3, Lkab;

    invoke-direct {v3}, Lkab;-><init>()V

    aput-object v3, v2, v0

    .line 30512
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 30513
    invoke-virtual {p1}, Llxy;->a()I

    .line 30510
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 30504
    :cond_3
    iget-object v0, p0, Lkft;->a:[Lkab;

    array-length v0, v0

    goto :goto_1

    .line 30516
    :cond_4
    new-instance v3, Lkab;

    invoke-direct {v3}, Lkab;-><init>()V

    aput-object v3, v2, v0

    .line 30517
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 30518
    iput-object v2, p0, Lkft;->a:[Lkab;

    goto :goto_0

    .line 30522
    :sswitch_3
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkft;->b:[B

    goto :goto_0

    .line 30485
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 29439
    iget-object v0, p0, Lkft;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 29440
    const/4 v0, 0x1

    iget-object v1, p0, Lkft;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 29442
    :cond_0
    iget-object v0, p0, Lkft;->a:[Lkab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkft;->a:[Lkab;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 29443
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkft;->a:[Lkab;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 29444
    iget-object v1, p0, Lkft;->a:[Lkab;

    aget-object v1, v1, v0

    .line 29445
    if-eqz v1, :cond_1

    .line 29446
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 29443
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29450
    :cond_2
    iget-object v0, p0, Lkft;->b:[B

    if-eqz v0, :cond_3

    .line 29451
    const/4 v0, 0x3

    iget-object v1, p0, Lkft;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 29453
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 29454
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 29458
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 29459
    iget-object v1, p0, Lkft;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 29460
    const/4 v1, 0x1

    iget-object v2, p0, Lkft;->requestHeader:Lkdo;

    .line 29461
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29463
    :cond_0
    iget-object v1, p0, Lkft;->a:[Lkab;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkft;->a:[Lkab;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 29464
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkft;->a:[Lkab;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 29465
    iget-object v2, p0, Lkft;->a:[Lkab;

    aget-object v2, v2, v0

    .line 29466
    if-eqz v2, :cond_1

    .line 29467
    const/4 v3, 0x2

    .line 29468
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 29464
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 29472
    :cond_3
    iget-object v1, p0, Lkft;->b:[B

    if-eqz v1, :cond_4

    .line 29473
    const/4 v1, 0x3

    iget-object v2, p0, Lkft;->b:[B

    .line 29474
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 29476
    :cond_4
    return v0
.end method
