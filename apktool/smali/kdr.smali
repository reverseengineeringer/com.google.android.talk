.class public final Lkdr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkdq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20626
    invoke-direct {p0}, Llyb;-><init>()V

    .line 21631
    invoke-static {}, Lkdq;->d()[Lkdq;

    move-result-object v0

    iput-object v0, p0, Lkdr;->a:[Lkdq;

    .line 21632
    const/4 v0, 0x0

    iput-object v0, p0, Lkdr;->eD:Llyd;

    .line 21633
    const/4 v0, -0x1

    iput v0, p0, Lkdr;->eE:I

    .line 20628
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 21671
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 21672
    sparse-switch v0, :sswitch_data_0

    .line 21676
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21677
    :sswitch_0
    return-object p0

    .line 21682
    :sswitch_1
    const/16 v0, 0xa

    .line 21683
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 21684
    iget-object v0, p0, Lkdr;->a:[Lkdq;

    if-nez v0, :cond_2

    move v0, v1

    .line 21685
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkdq;

    .line 21687
    if-eqz v0, :cond_1

    .line 21688
    iget-object v3, p0, Lkdr;->a:[Lkdq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21690
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 21691
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 21692
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 21693
    invoke-virtual {p1}, Llxy;->a()I

    .line 21690
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 21684
    :cond_2
    iget-object v0, p0, Lkdr;->a:[Lkdq;

    array-length v0, v0

    goto :goto_1

    .line 21696
    :cond_3
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 21697
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 21698
    iput-object v2, p0, Lkdr;->a:[Lkdq;

    goto :goto_0

    .line 21672
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 20640
    iget-object v0, p0, Lkdr;->a:[Lkdq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkdr;->a:[Lkdq;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 20641
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkdr;->a:[Lkdq;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 20642
    iget-object v1, p0, Lkdr;->a:[Lkdq;

    aget-object v1, v1, v0

    .line 20643
    if-eqz v1, :cond_0

    .line 20644
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 20641
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20648
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 20649
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 20653
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 20654
    iget-object v0, p0, Lkdr;->a:[Lkdq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkdr;->a:[Lkdq;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 20655
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lkdr;->a:[Lkdq;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 20656
    iget-object v2, p0, Lkdr;->a:[Lkdq;

    aget-object v2, v2, v0

    .line 20657
    if-eqz v2, :cond_0

    .line 20658
    const/4 v3, 0x1

    .line 20659
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 20655
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20663
    :cond_1
    return v1
.end method
