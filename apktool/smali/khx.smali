.class public final Lkhx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lkii;

.field public c:[Ljava/lang/String;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3437
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4442
    iput-object v1, p0, Lkhx;->requestHeader:Lkdo;

    .line 4443
    iput-object v1, p0, Lkhx;->a:Ljava/lang/String;

    .line 4444
    iput-object v1, p0, Lkhx;->b:Lkii;

    .line 4445
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkhx;->c:[Ljava/lang/String;

    .line 4446
    iput-object v1, p0, Lkhx;->eD:Llyd;

    .line 4447
    const/4 v0, -0x1

    iput v0, p0, Lkhx;->eE:I

    .line 3439
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4512
    sparse-switch v0, :sswitch_data_0

    .line 4516
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4517
    :sswitch_0
    return-object p0

    .line 4522
    :sswitch_1
    iget-object v0, p0, Lkhx;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 4523
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkhx;->requestHeader:Lkdo;

    .line 4525
    :cond_1
    iget-object v0, p0, Lkhx;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4529
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkhx;->a:Ljava/lang/String;

    goto :goto_0

    .line 4533
    :sswitch_3
    iget-object v0, p0, Lkhx;->b:Lkii;

    if-nez v0, :cond_2

    .line 4534
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhx;->b:Lkii;

    .line 4536
    :cond_2
    iget-object v0, p0, Lkhx;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4540
    :sswitch_4
    const/16 v0, 0x22

    .line 4541
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4542
    iget-object v0, p0, Lkhx;->c:[Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    .line 4543
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 4544
    if-eqz v0, :cond_3

    .line 4545
    iget-object v3, p0, Lkhx;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4547
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 4548
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4549
    invoke-virtual {p1}, Llxy;->a()I

    .line 4547
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4542
    :cond_4
    iget-object v0, p0, Lkhx;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 4552
    :cond_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4553
    iput-object v2, p0, Lkhx;->c:[Ljava/lang/String;

    goto :goto_0

    .line 4512
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
    .line 3454
    iget-object v0, p0, Lkhx;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 3455
    const/4 v0, 0x1

    iget-object v1, p0, Lkhx;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3457
    :cond_0
    iget-object v0, p0, Lkhx;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3458
    const/4 v0, 0x2

    iget-object v1, p0, Lkhx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3460
    :cond_1
    iget-object v0, p0, Lkhx;->b:Lkii;

    if-eqz v0, :cond_2

    .line 3461
    const/4 v0, 0x3

    iget-object v1, p0, Lkhx;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3463
    :cond_2
    iget-object v0, p0, Lkhx;->c:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkhx;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 3464
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkhx;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 3465
    iget-object v1, p0, Lkhx;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 3466
    if-eqz v1, :cond_3

    .line 3467
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3464
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3471
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3472
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3476
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3477
    iget-object v2, p0, Lkhx;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 3478
    const/4 v2, 0x1

    iget-object v3, p0, Lkhx;->requestHeader:Lkdo;

    .line 3479
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3481
    :cond_0
    iget-object v2, p0, Lkhx;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3482
    const/4 v2, 0x2

    iget-object v3, p0, Lkhx;->a:Ljava/lang/String;

    .line 3483
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3485
    :cond_1
    iget-object v2, p0, Lkhx;->b:Lkii;

    if-eqz v2, :cond_2

    .line 3486
    const/4 v2, 0x3

    iget-object v3, p0, Lkhx;->b:Lkii;

    .line 3487
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3489
    :cond_2
    iget-object v2, p0, Lkhx;->c:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkhx;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    move v3, v1

    .line 3492
    :goto_0
    iget-object v4, p0, Lkhx;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 3493
    iget-object v4, p0, Lkhx;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 3494
    if-eqz v4, :cond_3

    .line 3495
    add-int/lit8 v3, v3, 0x1

    .line 3497
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3492
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3500
    :cond_4
    add-int/2addr v0, v2

    .line 3501
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 3503
    :cond_5
    return v0
.end method
