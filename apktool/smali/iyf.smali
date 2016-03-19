.class public final Liyf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljqo;

.field public apiHeader:Liyd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1784
    iput-object v0, p0, Liyf;->apiHeader:Liyd;

    .line 1785
    iput-object v0, p0, Liyf;->a:Ljqo;

    .line 1786
    iput-object v0, p0, Liyf;->eD:Llyd;

    .line 1787
    const/4 v0, -0x1

    iput v0, p0, Liyf;->eE:I

    .line 781
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1822
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1823
    sparse-switch v0, :sswitch_data_0

    .line 1827
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1828
    :sswitch_0
    return-object p0

    .line 1833
    :sswitch_1
    iget-object v0, p0, Liyf;->apiHeader:Liyd;

    if-nez v0, :cond_1

    .line 1834
    new-instance v0, Liyd;

    invoke-direct {v0}, Liyd;-><init>()V

    iput-object v0, p0, Liyf;->apiHeader:Liyd;

    .line 1836
    :cond_1
    iget-object v0, p0, Liyf;->apiHeader:Liyd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1840
    :sswitch_2
    iget-object v0, p0, Liyf;->a:Ljqo;

    if-nez v0, :cond_2

    .line 1841
    new-instance v0, Ljqo;

    invoke-direct {v0}, Ljqo;-><init>()V

    iput-object v0, p0, Liyf;->a:Ljqo;

    .line 1843
    :cond_2
    iget-object v0, p0, Liyf;->a:Ljqo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1823
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Liyf;->apiHeader:Liyd;

    if-eqz v0, :cond_0

    .line 795
    const/4 v0, 0x1

    iget-object v1, p0, Liyf;->apiHeader:Liyd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 797
    :cond_0
    iget-object v0, p0, Liyf;->a:Ljqo;

    if-eqz v0, :cond_1

    .line 798
    const/4 v0, 0x2

    iget-object v1, p0, Liyf;->a:Ljqo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 800
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 801
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 805
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 806
    iget-object v1, p0, Liyf;->apiHeader:Liyd;

    if-eqz v1, :cond_0

    .line 807
    const/4 v1, 0x1

    iget-object v2, p0, Liyf;->apiHeader:Liyd;

    .line 808
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 810
    :cond_0
    iget-object v1, p0, Liyf;->a:Ljqo;

    if-eqz v1, :cond_1

    .line 811
    const/4 v1, 0x2

    iget-object v2, p0, Liyf;->a:Ljqo;

    .line 812
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 814
    :cond_1
    return v0
.end method
