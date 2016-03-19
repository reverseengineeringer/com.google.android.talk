.class public final Lkku;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkku;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkkx;

.field public b:Lkkw;

.field public c:Lkkz;

.field public d:Ljava/lang/Long;

.field public e:Lkky;

.field public f:Lkkv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 786
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1791
    iput-object v0, p0, Lkku;->a:Lkkx;

    .line 1792
    iput-object v0, p0, Lkku;->b:Lkkw;

    .line 1793
    iput-object v0, p0, Lkku;->c:Lkkz;

    .line 1794
    iput-object v0, p0, Lkku;->d:Ljava/lang/Long;

    .line 1795
    iput-object v0, p0, Lkku;->e:Lkky;

    .line 1796
    iput-object v0, p0, Lkku;->f:Lkkv;

    .line 1797
    iput-object v0, p0, Lkku;->eD:Llyd;

    .line 1798
    const/4 v0, -0x1

    iput v0, p0, Lkku;->eE:I

    .line 788
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1861
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1862
    sparse-switch v0, :sswitch_data_0

    .line 1866
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1867
    :sswitch_0
    return-object p0

    .line 1872
    :sswitch_1
    iget-object v0, p0, Lkku;->a:Lkkx;

    if-nez v0, :cond_1

    .line 1873
    new-instance v0, Lkkx;

    invoke-direct {v0}, Lkkx;-><init>()V

    iput-object v0, p0, Lkku;->a:Lkkx;

    .line 1875
    :cond_1
    iget-object v0, p0, Lkku;->a:Lkkx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1879
    :sswitch_2
    iget-object v0, p0, Lkku;->b:Lkkw;

    if-nez v0, :cond_2

    .line 1880
    new-instance v0, Lkkw;

    invoke-direct {v0}, Lkkw;-><init>()V

    iput-object v0, p0, Lkku;->b:Lkkw;

    .line 1882
    :cond_2
    iget-object v0, p0, Lkku;->b:Lkkw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1886
    :sswitch_3
    iget-object v0, p0, Lkku;->c:Lkkz;

    if-nez v0, :cond_3

    .line 1887
    new-instance v0, Lkkz;

    invoke-direct {v0}, Lkkz;-><init>()V

    iput-object v0, p0, Lkku;->c:Lkkz;

    .line 1889
    :cond_3
    iget-object v0, p0, Lkku;->c:Lkkz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1893
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkku;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1897
    :sswitch_5
    iget-object v0, p0, Lkku;->e:Lkky;

    if-nez v0, :cond_4

    .line 1898
    new-instance v0, Lkky;

    invoke-direct {v0}, Lkky;-><init>()V

    iput-object v0, p0, Lkku;->e:Lkky;

    .line 1900
    :cond_4
    iget-object v0, p0, Lkku;->e:Lkky;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1904
    :sswitch_6
    iget-object v0, p0, Lkku;->f:Lkkv;

    if-nez v0, :cond_5

    .line 1905
    new-instance v0, Lkkv;

    invoke-direct {v0}, Lkkv;-><init>()V

    iput-object v0, p0, Lkku;->f:Lkkv;

    .line 1907
    :cond_5
    iget-object v0, p0, Lkku;->f:Lkkv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1862
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 805
    iget-object v0, p0, Lkku;->a:Lkkx;

    if-eqz v0, :cond_0

    .line 806
    const/4 v0, 0x1

    iget-object v1, p0, Lkku;->a:Lkkx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 808
    :cond_0
    iget-object v0, p0, Lkku;->b:Lkkw;

    if-eqz v0, :cond_1

    .line 809
    const/4 v0, 0x2

    iget-object v1, p0, Lkku;->b:Lkkw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 811
    :cond_1
    iget-object v0, p0, Lkku;->c:Lkkz;

    if-eqz v0, :cond_2

    .line 812
    const/4 v0, 0x3

    iget-object v1, p0, Lkku;->c:Lkkz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 814
    :cond_2
    iget-object v0, p0, Lkku;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 815
    const/4 v0, 0x4

    iget-object v1, p0, Lkku;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 817
    :cond_3
    iget-object v0, p0, Lkku;->e:Lkky;

    if-eqz v0, :cond_4

    .line 818
    const/4 v0, 0x5

    iget-object v1, p0, Lkku;->e:Lkky;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 820
    :cond_4
    iget-object v0, p0, Lkku;->f:Lkkv;

    if-eqz v0, :cond_5

    .line 821
    const/4 v0, 0x6

    iget-object v1, p0, Lkku;->f:Lkkv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 823
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 824
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 828
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 829
    iget-object v1, p0, Lkku;->a:Lkkx;

    if-eqz v1, :cond_0

    .line 830
    const/4 v1, 0x1

    iget-object v2, p0, Lkku;->a:Lkkx;

    .line 831
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 833
    :cond_0
    iget-object v1, p0, Lkku;->b:Lkkw;

    if-eqz v1, :cond_1

    .line 834
    const/4 v1, 0x2

    iget-object v2, p0, Lkku;->b:Lkkw;

    .line 835
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    :cond_1
    iget-object v1, p0, Lkku;->c:Lkkz;

    if-eqz v1, :cond_2

    .line 838
    const/4 v1, 0x3

    iget-object v2, p0, Lkku;->c:Lkkz;

    .line 839
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 841
    :cond_2
    iget-object v1, p0, Lkku;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 842
    const/4 v1, 0x4

    iget-object v2, p0, Lkku;->d:Ljava/lang/Long;

    .line 843
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 845
    :cond_3
    iget-object v1, p0, Lkku;->e:Lkky;

    if-eqz v1, :cond_4

    .line 846
    const/4 v1, 0x5

    iget-object v2, p0, Lkku;->e:Lkky;

    .line 847
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 849
    :cond_4
    iget-object v1, p0, Lkku;->f:Lkkv;

    if-eqz v1, :cond_5

    .line 850
    const/4 v1, 0x6

    iget-object v2, p0, Lkku;->f:Lkkv;

    .line 851
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 853
    :cond_5
    return v0
.end method
