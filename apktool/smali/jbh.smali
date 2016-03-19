.class public final Ljbh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljbg;

.field public b:Ljbn;

.field public c:Ljbn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4647
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5652
    invoke-static {}, Ljbg;->d()[Ljbg;

    move-result-object v0

    iput-object v0, p0, Ljbh;->a:[Ljbg;

    .line 5653
    iput-object v1, p0, Ljbh;->b:Ljbn;

    .line 5654
    iput-object v1, p0, Ljbh;->c:Ljbn;

    .line 5655
    iput-object v1, p0, Ljbh;->eD:Llyd;

    .line 5656
    const/4 v0, -0x1

    iput v0, p0, Ljbh;->eE:I

    .line 4649
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5708
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5709
    sparse-switch v0, :sswitch_data_0

    .line 5713
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5714
    :sswitch_0
    return-object p0

    .line 5719
    :sswitch_1
    const/16 v0, 0xa

    .line 5720
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5721
    iget-object v0, p0, Ljbh;->a:[Ljbg;

    if-nez v0, :cond_2

    move v0, v1

    .line 5722
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljbg;

    .line 5724
    if-eqz v0, :cond_1

    .line 5725
    iget-object v3, p0, Ljbh;->a:[Ljbg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5727
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5728
    new-instance v3, Ljbg;

    invoke-direct {v3}, Ljbg;-><init>()V

    aput-object v3, v2, v0

    .line 5729
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5730
    invoke-virtual {p1}, Llxy;->a()I

    .line 5727
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5721
    :cond_2
    iget-object v0, p0, Ljbh;->a:[Ljbg;

    array-length v0, v0

    goto :goto_1

    .line 5733
    :cond_3
    new-instance v3, Ljbg;

    invoke-direct {v3}, Ljbg;-><init>()V

    aput-object v3, v2, v0

    .line 5734
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5735
    iput-object v2, p0, Ljbh;->a:[Ljbg;

    goto :goto_0

    .line 5739
    :sswitch_2
    iget-object v0, p0, Ljbh;->b:Ljbn;

    if-nez v0, :cond_4

    .line 5740
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbh;->b:Ljbn;

    .line 5742
    :cond_4
    iget-object v0, p0, Ljbh;->b:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5746
    :sswitch_3
    iget-object v0, p0, Ljbh;->c:Ljbn;

    if-nez v0, :cond_5

    .line 5747
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbh;->c:Ljbn;

    .line 5749
    :cond_5
    iget-object v0, p0, Ljbh;->c:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5709
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
    .line 4663
    iget-object v0, p0, Ljbh;->a:[Ljbg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljbh;->a:[Ljbg;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 4664
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljbh;->a:[Ljbg;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4665
    iget-object v1, p0, Ljbh;->a:[Ljbg;

    aget-object v1, v1, v0

    .line 4666
    if-eqz v1, :cond_0

    .line 4667
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4664
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4671
    :cond_1
    iget-object v0, p0, Ljbh;->b:Ljbn;

    if-eqz v0, :cond_2

    .line 4672
    const/4 v0, 0x2

    iget-object v1, p0, Ljbh;->b:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4674
    :cond_2
    iget-object v0, p0, Ljbh;->c:Ljbn;

    if-eqz v0, :cond_3

    .line 4675
    const/4 v0, 0x3

    iget-object v1, p0, Ljbh;->c:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4677
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4678
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 4682
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 4683
    iget-object v0, p0, Ljbh;->a:[Ljbg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljbh;->a:[Ljbg;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 4684
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljbh;->a:[Ljbg;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 4685
    iget-object v2, p0, Ljbh;->a:[Ljbg;

    aget-object v2, v2, v0

    .line 4686
    if-eqz v2, :cond_0

    .line 4687
    const/4 v3, 0x1

    .line 4688
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4684
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4692
    :cond_1
    iget-object v0, p0, Ljbh;->b:Ljbn;

    if-eqz v0, :cond_2

    .line 4693
    const/4 v0, 0x2

    iget-object v2, p0, Ljbh;->b:Ljbn;

    .line 4694
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 4696
    :cond_2
    iget-object v0, p0, Ljbh;->c:Ljbn;

    if-eqz v0, :cond_3

    .line 4697
    const/4 v0, 0x3

    iget-object v2, p0, Ljbh;->c:Ljbn;

    .line 4698
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 4700
    :cond_3
    return v1
.end method
