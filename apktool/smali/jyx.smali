.class public final Ljyx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcr;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28799
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29804
    iput-object v1, p0, Ljyx;->responseHeader:Lkdp;

    .line 29805
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Ljyx;->a:[Lkcr;

    .line 29806
    iput-object v1, p0, Ljyx;->eD:Llyd;

    .line 29807
    const/4 v0, -0x1

    iput v0, p0, Ljyx;->eE:I

    .line 28801
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29852
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 29853
    sparse-switch v0, :sswitch_data_0

    .line 29857
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29858
    :sswitch_0
    return-object p0

    .line 29863
    :sswitch_1
    iget-object v0, p0, Ljyx;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 29864
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Ljyx;->responseHeader:Lkdp;

    .line 29866
    :cond_1
    iget-object v0, p0, Ljyx;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 29870
    :sswitch_2
    const/16 v0, 0x12

    .line 29871
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 29872
    iget-object v0, p0, Ljyx;->a:[Lkcr;

    if-nez v0, :cond_3

    move v0, v1

    .line 29873
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 29875
    if-eqz v0, :cond_2

    .line 29876
    iget-object v3, p0, Ljyx;->a:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29878
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 29879
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 29880
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 29881
    invoke-virtual {p1}, Llxy;->a()I

    .line 29878
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29872
    :cond_3
    iget-object v0, p0, Ljyx;->a:[Lkcr;

    array-length v0, v0

    goto :goto_1

    .line 29884
    :cond_4
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 29885
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 29886
    iput-object v2, p0, Ljyx;->a:[Lkcr;

    goto :goto_0

    .line 29853
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
    .line 28814
    iget-object v0, p0, Ljyx;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 28815
    const/4 v0, 0x1

    iget-object v1, p0, Ljyx;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 28817
    :cond_0
    iget-object v0, p0, Ljyx;->a:[Lkcr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljyx;->a:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 28818
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljyx;->a:[Lkcr;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 28819
    iget-object v1, p0, Ljyx;->a:[Lkcr;

    aget-object v1, v1, v0

    .line 28820
    if-eqz v1, :cond_1

    .line 28821
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 28818
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28825
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 28826
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 28830
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 28831
    iget-object v1, p0, Ljyx;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 28832
    const/4 v1, 0x1

    iget-object v2, p0, Ljyx;->responseHeader:Lkdp;

    .line 28833
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28835
    :cond_0
    iget-object v1, p0, Ljyx;->a:[Lkcr;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljyx;->a:[Lkcr;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 28836
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljyx;->a:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 28837
    iget-object v2, p0, Ljyx;->a:[Lkcr;

    aget-object v2, v2, v0

    .line 28838
    if-eqz v2, :cond_1

    .line 28839
    const/4 v3, 0x2

    .line 28840
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 28836
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 28844
    :cond_3
    return v0
.end method
