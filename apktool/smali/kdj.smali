.class public final Lkdj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzr;

.field public b:Ljava/lang/String;

.field public c:[B

.field public d:Ljava/lang/Long;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8763
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9768
    iput-object v0, p0, Lkdj;->requestHeader:Lkdo;

    .line 9769
    iput-object v0, p0, Lkdj;->a:Ljzr;

    .line 9770
    iput-object v0, p0, Lkdj;->b:Ljava/lang/String;

    .line 9771
    iput-object v0, p0, Lkdj;->c:[B

    .line 9772
    iput-object v0, p0, Lkdj;->d:Ljava/lang/Long;

    .line 9773
    iput-object v0, p0, Lkdj;->eD:Llyd;

    .line 9774
    const/4 v0, -0x1

    iput v0, p0, Lkdj;->eE:I

    .line 8765
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 9830
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9831
    sparse-switch v0, :sswitch_data_0

    .line 9835
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9836
    :sswitch_0
    return-object p0

    .line 9841
    :sswitch_1
    iget-object v0, p0, Lkdj;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 9842
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkdj;->requestHeader:Lkdo;

    .line 9844
    :cond_1
    iget-object v0, p0, Lkdj;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9848
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkdj;->c:[B

    goto :goto_0

    .line 9852
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdj;->b:Ljava/lang/String;

    goto :goto_0

    .line 9856
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdj;->d:Ljava/lang/Long;

    goto :goto_0

    .line 9860
    :sswitch_5
    iget-object v0, p0, Lkdj;->a:Ljzr;

    if-nez v0, :cond_2

    .line 9861
    new-instance v0, Ljzr;

    invoke-direct {v0}, Ljzr;-><init>()V

    iput-object v0, p0, Lkdj;->a:Ljzr;

    .line 9863
    :cond_2
    iget-object v0, p0, Lkdj;->a:Ljzr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9831
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 8781
    iget-object v0, p0, Lkdj;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 8782
    const/4 v0, 0x1

    iget-object v1, p0, Lkdj;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8784
    :cond_0
    iget-object v0, p0, Lkdj;->c:[B

    if-eqz v0, :cond_1

    .line 8785
    const/4 v0, 0x2

    iget-object v1, p0, Lkdj;->c:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 8787
    :cond_1
    iget-object v0, p0, Lkdj;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8788
    const/4 v0, 0x3

    iget-object v1, p0, Lkdj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8790
    :cond_2
    iget-object v0, p0, Lkdj;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 8791
    const/4 v0, 0x4

    iget-object v1, p0, Lkdj;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 8793
    :cond_3
    iget-object v0, p0, Lkdj;->a:Ljzr;

    if-eqz v0, :cond_4

    .line 8794
    const/4 v0, 0x5

    iget-object v1, p0, Lkdj;->a:Ljzr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8796
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8797
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 8801
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8802
    iget-object v1, p0, Lkdj;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 8803
    const/4 v1, 0x1

    iget-object v2, p0, Lkdj;->requestHeader:Lkdo;

    .line 8804
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8806
    :cond_0
    iget-object v1, p0, Lkdj;->c:[B

    if-eqz v1, :cond_1

    .line 8807
    const/4 v1, 0x2

    iget-object v2, p0, Lkdj;->c:[B

    .line 8808
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 8810
    :cond_1
    iget-object v1, p0, Lkdj;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8811
    const/4 v1, 0x3

    iget-object v2, p0, Lkdj;->b:Ljava/lang/String;

    .line 8812
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8814
    :cond_2
    iget-object v1, p0, Lkdj;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 8815
    const/4 v1, 0x4

    iget-object v2, p0, Lkdj;->d:Ljava/lang/Long;

    .line 8816
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8818
    :cond_3
    iget-object v1, p0, Lkdj;->a:Ljzr;

    if-eqz v1, :cond_4

    .line 8819
    const/4 v1, 0x5

    iget-object v2, p0, Lkdj;->a:Ljzr;

    .line 8820
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8822
    :cond_4
    return v0
.end method
