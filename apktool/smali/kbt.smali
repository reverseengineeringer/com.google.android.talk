.class public final Lkbt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39440
    invoke-direct {p0}, Llyb;-><init>()V

    .line 40445
    invoke-static {}, Lkcm;->d()[Lkcm;

    move-result-object v0

    iput-object v0, p0, Lkbt;->a:[Lkcm;

    .line 40446
    const/4 v0, 0x0

    iput-object v0, p0, Lkbt;->eD:Llyd;

    .line 40447
    const/4 v0, -0x1

    iput v0, p0, Lkbt;->eE:I

    .line 39442
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40485
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 40486
    sparse-switch v0, :sswitch_data_0

    .line 40490
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40491
    :sswitch_0
    return-object p0

    .line 40496
    :sswitch_1
    const/16 v0, 0xa

    .line 40497
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 40498
    iget-object v0, p0, Lkbt;->a:[Lkcm;

    if-nez v0, :cond_2

    move v0, v1

    .line 40499
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcm;

    .line 40501
    if-eqz v0, :cond_1

    .line 40502
    iget-object v3, p0, Lkbt;->a:[Lkcm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40504
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 40505
    new-instance v3, Lkcm;

    invoke-direct {v3}, Lkcm;-><init>()V

    aput-object v3, v2, v0

    .line 40506
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 40507
    invoke-virtual {p1}, Llxy;->a()I

    .line 40504
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40498
    :cond_2
    iget-object v0, p0, Lkbt;->a:[Lkcm;

    array-length v0, v0

    goto :goto_1

    .line 40510
    :cond_3
    new-instance v3, Lkcm;

    invoke-direct {v3}, Lkcm;-><init>()V

    aput-object v3, v2, v0

    .line 40511
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 40512
    iput-object v2, p0, Lkbt;->a:[Lkcm;

    goto :goto_0

    .line 40486
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 39454
    iget-object v0, p0, Lkbt;->a:[Lkcm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkbt;->a:[Lkcm;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 39455
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkbt;->a:[Lkcm;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 39456
    iget-object v1, p0, Lkbt;->a:[Lkcm;

    aget-object v1, v1, v0

    .line 39457
    if-eqz v1, :cond_0

    .line 39458
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 39455
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39462
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 39463
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 39467
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 39468
    iget-object v0, p0, Lkbt;->a:[Lkcm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkbt;->a:[Lkcm;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 39469
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lkbt;->a:[Lkcm;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 39470
    iget-object v2, p0, Lkbt;->a:[Lkcm;

    aget-object v2, v2, v0

    .line 39471
    if-eqz v2, :cond_0

    .line 39472
    const/4 v3, 0x1

    .line 39473
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 39469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39477
    :cond_1
    return v1
.end method
