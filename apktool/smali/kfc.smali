.class public final Lkfc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19494
    invoke-direct {p0}, Llyb;-><init>()V

    .line 20499
    invoke-static {}, Lkcd;->d()[Lkcd;

    move-result-object v0

    iput-object v0, p0, Lkfc;->a:[Lkcd;

    .line 20500
    const/4 v0, 0x0

    iput-object v0, p0, Lkfc;->eD:Llyd;

    .line 20501
    const/4 v0, -0x1

    iput v0, p0, Lkfc;->eE:I

    .line 19496
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 20539
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 20540
    sparse-switch v0, :sswitch_data_0

    .line 20544
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20545
    :sswitch_0
    return-object p0

    .line 20550
    :sswitch_1
    const/16 v0, 0xa

    .line 20551
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 20552
    iget-object v0, p0, Lkfc;->a:[Lkcd;

    if-nez v0, :cond_2

    move v0, v1

    .line 20553
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcd;

    .line 20555
    if-eqz v0, :cond_1

    .line 20556
    iget-object v3, p0, Lkfc;->a:[Lkcd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20558
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 20559
    new-instance v3, Lkcd;

    invoke-direct {v3}, Lkcd;-><init>()V

    aput-object v3, v2, v0

    .line 20560
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 20561
    invoke-virtual {p1}, Llxy;->a()I

    .line 20558
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 20552
    :cond_2
    iget-object v0, p0, Lkfc;->a:[Lkcd;

    array-length v0, v0

    goto :goto_1

    .line 20564
    :cond_3
    new-instance v3, Lkcd;

    invoke-direct {v3}, Lkcd;-><init>()V

    aput-object v3, v2, v0

    .line 20565
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 20566
    iput-object v2, p0, Lkfc;->a:[Lkcd;

    goto :goto_0

    .line 20540
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 19508
    iget-object v0, p0, Lkfc;->a:[Lkcd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkfc;->a:[Lkcd;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 19509
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkfc;->a:[Lkcd;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 19510
    iget-object v1, p0, Lkfc;->a:[Lkcd;

    aget-object v1, v1, v0

    .line 19511
    if-eqz v1, :cond_0

    .line 19512
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 19509
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19516
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 19517
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 19521
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 19522
    iget-object v0, p0, Lkfc;->a:[Lkcd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkfc;->a:[Lkcd;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 19523
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lkfc;->a:[Lkcd;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 19524
    iget-object v2, p0, Lkfc;->a:[Lkcd;

    aget-object v2, v2, v0

    .line 19525
    if-eqz v2, :cond_0

    .line 19526
    const/4 v3, 0x1

    .line 19527
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 19523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19531
    :cond_1
    return v1
.end method
