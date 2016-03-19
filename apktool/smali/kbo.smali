.class public final Lkbo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkbn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4604
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5609
    invoke-static {}, Lkbn;->d()[Lkbn;

    move-result-object v0

    iput-object v0, p0, Lkbo;->a:[Lkbn;

    .line 5610
    const/4 v0, 0x0

    iput-object v0, p0, Lkbo;->eD:Llyd;

    .line 5611
    const/4 v0, -0x1

    iput v0, p0, Lkbo;->eE:I

    .line 4606
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5649
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5650
    sparse-switch v0, :sswitch_data_0

    .line 5654
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5655
    :sswitch_0
    return-object p0

    .line 5660
    :sswitch_1
    const/16 v0, 0xa

    .line 5661
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5662
    iget-object v0, p0, Lkbo;->a:[Lkbn;

    if-nez v0, :cond_2

    move v0, v1

    .line 5663
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbn;

    .line 5665
    if-eqz v0, :cond_1

    .line 5666
    iget-object v3, p0, Lkbo;->a:[Lkbn;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5668
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5669
    new-instance v3, Lkbn;

    invoke-direct {v3}, Lkbn;-><init>()V

    aput-object v3, v2, v0

    .line 5670
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5671
    invoke-virtual {p1}, Llxy;->a()I

    .line 5668
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5662
    :cond_2
    iget-object v0, p0, Lkbo;->a:[Lkbn;

    array-length v0, v0

    goto :goto_1

    .line 5674
    :cond_3
    new-instance v3, Lkbn;

    invoke-direct {v3}, Lkbn;-><init>()V

    aput-object v3, v2, v0

    .line 5675
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5676
    iput-object v2, p0, Lkbo;->a:[Lkbn;

    goto :goto_0

    .line 5650
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 4618
    iget-object v0, p0, Lkbo;->a:[Lkbn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkbo;->a:[Lkbn;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 4619
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkbo;->a:[Lkbn;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4620
    iget-object v1, p0, Lkbo;->a:[Lkbn;

    aget-object v1, v1, v0

    .line 4621
    if-eqz v1, :cond_0

    .line 4622
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4619
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4626
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4627
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 4631
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 4632
    iget-object v0, p0, Lkbo;->a:[Lkbn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkbo;->a:[Lkbn;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 4633
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lkbo;->a:[Lkbn;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 4634
    iget-object v2, p0, Lkbo;->a:[Lkbn;

    aget-object v2, v2, v0

    .line 4635
    if-eqz v2, :cond_0

    .line 4636
    const/4 v3, 0x1

    .line 4637
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4633
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4641
    :cond_1
    return v1
.end method
