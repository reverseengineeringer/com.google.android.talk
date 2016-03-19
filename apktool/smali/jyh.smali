.class public final Ljyh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljyi;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22627
    invoke-direct {p0}, Llyb;-><init>()V

    .line 23632
    iput-object v1, p0, Ljyh;->requestHeader:Lkdo;

    .line 23633
    invoke-static {}, Ljyi;->d()[Ljyi;

    move-result-object v0

    iput-object v0, p0, Ljyh;->a:[Ljyi;

    .line 23634
    iput-object v1, p0, Ljyh;->eD:Llyd;

    .line 23635
    const/4 v0, -0x1

    iput v0, p0, Ljyh;->eE:I

    .line 22629
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 23680
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 23681
    sparse-switch v0, :sswitch_data_0

    .line 23685
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23686
    :sswitch_0
    return-object p0

    .line 23691
    :sswitch_1
    iget-object v0, p0, Ljyh;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 23692
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Ljyh;->requestHeader:Lkdo;

    .line 23694
    :cond_1
    iget-object v0, p0, Ljyh;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 23698
    :sswitch_2
    const/16 v0, 0x12

    .line 23699
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 23700
    iget-object v0, p0, Ljyh;->a:[Ljyi;

    if-nez v0, :cond_3

    move v0, v1

    .line 23701
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljyi;

    .line 23703
    if-eqz v0, :cond_2

    .line 23704
    iget-object v3, p0, Ljyh;->a:[Ljyi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23706
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 23707
    new-instance v3, Ljyi;

    invoke-direct {v3}, Ljyi;-><init>()V

    aput-object v3, v2, v0

    .line 23708
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 23709
    invoke-virtual {p1}, Llxy;->a()I

    .line 23706
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 23700
    :cond_3
    iget-object v0, p0, Ljyh;->a:[Ljyi;

    array-length v0, v0

    goto :goto_1

    .line 23712
    :cond_4
    new-instance v3, Ljyi;

    invoke-direct {v3}, Ljyi;-><init>()V

    aput-object v3, v2, v0

    .line 23713
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 23714
    iput-object v2, p0, Ljyh;->a:[Ljyi;

    goto :goto_0

    .line 23681
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
    .line 22642
    iget-object v0, p0, Ljyh;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 22643
    const/4 v0, 0x1

    iget-object v1, p0, Ljyh;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 22645
    :cond_0
    iget-object v0, p0, Ljyh;->a:[Ljyi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljyh;->a:[Ljyi;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 22646
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljyh;->a:[Ljyi;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 22647
    iget-object v1, p0, Ljyh;->a:[Ljyi;

    aget-object v1, v1, v0

    .line 22648
    if-eqz v1, :cond_1

    .line 22649
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 22646
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22653
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 22654
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 22658
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 22659
    iget-object v1, p0, Ljyh;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 22660
    const/4 v1, 0x1

    iget-object v2, p0, Ljyh;->requestHeader:Lkdo;

    .line 22661
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22663
    :cond_0
    iget-object v1, p0, Ljyh;->a:[Ljyi;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljyh;->a:[Ljyi;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 22664
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljyh;->a:[Ljyi;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 22665
    iget-object v2, p0, Ljyh;->a:[Ljyi;

    aget-object v2, v2, v0

    .line 22666
    if-eqz v2, :cond_1

    .line 22667
    const/4 v3, 0x2

    .line 22668
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 22664
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 22672
    :cond_3
    return v0
.end method
