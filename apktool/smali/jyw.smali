.class public final Ljyw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcr;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28668
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29673
    iput-object v1, p0, Ljyw;->requestHeader:Lkdo;

    .line 29674
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Ljyw;->a:[Lkcr;

    .line 29675
    iput-object v1, p0, Ljyw;->eD:Llyd;

    .line 29676
    const/4 v0, -0x1

    iput v0, p0, Ljyw;->eE:I

    .line 28670
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29721
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 29722
    sparse-switch v0, :sswitch_data_0

    .line 29726
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29727
    :sswitch_0
    return-object p0

    .line 29732
    :sswitch_1
    iget-object v0, p0, Ljyw;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 29733
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Ljyw;->requestHeader:Lkdo;

    .line 29735
    :cond_1
    iget-object v0, p0, Ljyw;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 29739
    :sswitch_2
    const/16 v0, 0x12

    .line 29740
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 29741
    iget-object v0, p0, Ljyw;->a:[Lkcr;

    if-nez v0, :cond_3

    move v0, v1

    .line 29742
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 29744
    if-eqz v0, :cond_2

    .line 29745
    iget-object v3, p0, Ljyw;->a:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29747
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 29748
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 29749
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 29750
    invoke-virtual {p1}, Llxy;->a()I

    .line 29747
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29741
    :cond_3
    iget-object v0, p0, Ljyw;->a:[Lkcr;

    array-length v0, v0

    goto :goto_1

    .line 29753
    :cond_4
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 29754
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 29755
    iput-object v2, p0, Ljyw;->a:[Lkcr;

    goto :goto_0

    .line 29722
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
    .line 28683
    iget-object v0, p0, Ljyw;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 28684
    const/4 v0, 0x1

    iget-object v1, p0, Ljyw;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 28686
    :cond_0
    iget-object v0, p0, Ljyw;->a:[Lkcr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljyw;->a:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 28687
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljyw;->a:[Lkcr;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 28688
    iget-object v1, p0, Ljyw;->a:[Lkcr;

    aget-object v1, v1, v0

    .line 28689
    if-eqz v1, :cond_1

    .line 28690
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 28687
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28694
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 28695
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 28699
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 28700
    iget-object v1, p0, Ljyw;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 28701
    const/4 v1, 0x1

    iget-object v2, p0, Ljyw;->requestHeader:Lkdo;

    .line 28702
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28704
    :cond_0
    iget-object v1, p0, Ljyw;->a:[Lkcr;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljyw;->a:[Lkcr;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 28705
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljyw;->a:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 28706
    iget-object v2, p0, Ljyw;->a:[Lkcr;

    aget-object v2, v2, v0

    .line 28707
    if-eqz v2, :cond_1

    .line 28708
    const/4 v3, 0x2

    .line 28709
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 28705
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 28713
    :cond_3
    return v0
.end method
