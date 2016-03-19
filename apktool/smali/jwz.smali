.class public final Ljwz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkez;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35409
    invoke-direct {p0}, Llyb;-><init>()V

    .line 36414
    invoke-static {}, Lkez;->d()[Lkez;

    move-result-object v0

    iput-object v0, p0, Ljwz;->a:[Lkez;

    .line 36415
    const/4 v0, 0x0

    iput-object v0, p0, Ljwz;->eD:Llyd;

    .line 36416
    const/4 v0, -0x1

    iput v0, p0, Ljwz;->eE:I

    .line 35411
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 36454
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 36455
    sparse-switch v0, :sswitch_data_0

    .line 36459
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36460
    :sswitch_0
    return-object p0

    .line 36465
    :sswitch_1
    const/16 v0, 0xa

    .line 36466
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 36467
    iget-object v0, p0, Ljwz;->a:[Lkez;

    if-nez v0, :cond_2

    move v0, v1

    .line 36468
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkez;

    .line 36470
    if-eqz v0, :cond_1

    .line 36471
    iget-object v3, p0, Ljwz;->a:[Lkez;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36473
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 36474
    new-instance v3, Lkez;

    invoke-direct {v3}, Lkez;-><init>()V

    aput-object v3, v2, v0

    .line 36475
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 36476
    invoke-virtual {p1}, Llxy;->a()I

    .line 36473
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 36467
    :cond_2
    iget-object v0, p0, Ljwz;->a:[Lkez;

    array-length v0, v0

    goto :goto_1

    .line 36479
    :cond_3
    new-instance v3, Lkez;

    invoke-direct {v3}, Lkez;-><init>()V

    aput-object v3, v2, v0

    .line 36480
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 36481
    iput-object v2, p0, Ljwz;->a:[Lkez;

    goto :goto_0

    .line 36455
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 35423
    iget-object v0, p0, Ljwz;->a:[Lkez;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljwz;->a:[Lkez;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 35424
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljwz;->a:[Lkez;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 35425
    iget-object v1, p0, Ljwz;->a:[Lkez;

    aget-object v1, v1, v0

    .line 35426
    if-eqz v1, :cond_0

    .line 35427
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 35424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35431
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 35432
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 35436
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 35437
    iget-object v0, p0, Ljwz;->a:[Lkez;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljwz;->a:[Lkez;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 35438
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljwz;->a:[Lkez;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 35439
    iget-object v2, p0, Ljwz;->a:[Lkez;

    aget-object v2, v2, v0

    .line 35440
    if-eqz v2, :cond_0

    .line 35441
    const/4 v3, 0x1

    .line 35442
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 35438
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35446
    :cond_1
    return v1
.end method
