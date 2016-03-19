.class public final Liyj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lizx;

.field public apiHeader:Liyd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1859
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2864
    iput-object v0, p0, Liyj;->apiHeader:Liyd;

    .line 2865
    iput-object v0, p0, Liyj;->a:Lizx;

    .line 2866
    iput-object v0, p0, Liyj;->eD:Llyd;

    .line 2867
    const/4 v0, -0x1

    iput v0, p0, Liyj;->eE:I

    .line 1861
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2902
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2903
    sparse-switch v0, :sswitch_data_0

    .line 2907
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2908
    :sswitch_0
    return-object p0

    .line 2913
    :sswitch_1
    iget-object v0, p0, Liyj;->apiHeader:Liyd;

    if-nez v0, :cond_1

    .line 2914
    new-instance v0, Liyd;

    invoke-direct {v0}, Liyd;-><init>()V

    iput-object v0, p0, Liyj;->apiHeader:Liyd;

    .line 2916
    :cond_1
    iget-object v0, p0, Liyj;->apiHeader:Liyd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2920
    :sswitch_2
    iget-object v0, p0, Liyj;->a:Lizx;

    if-nez v0, :cond_2

    .line 2921
    new-instance v0, Lizx;

    invoke-direct {v0}, Lizx;-><init>()V

    iput-object v0, p0, Liyj;->a:Lizx;

    .line 2923
    :cond_2
    iget-object v0, p0, Liyj;->a:Lizx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2903
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
    .line 1874
    iget-object v0, p0, Liyj;->apiHeader:Liyd;

    if-eqz v0, :cond_0

    .line 1875
    const/4 v0, 0x1

    iget-object v1, p0, Liyj;->apiHeader:Liyd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1877
    :cond_0
    iget-object v0, p0, Liyj;->a:Lizx;

    if-eqz v0, :cond_1

    .line 1878
    const/4 v0, 0x2

    iget-object v1, p0, Liyj;->a:Lizx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1880
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1881
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1885
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1886
    iget-object v1, p0, Liyj;->apiHeader:Liyd;

    if-eqz v1, :cond_0

    .line 1887
    const/4 v1, 0x1

    iget-object v2, p0, Liyj;->apiHeader:Liyd;

    .line 1888
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1890
    :cond_0
    iget-object v1, p0, Liyj;->a:Lizx;

    if-eqz v1, :cond_1

    .line 1891
    const/4 v1, 0x2

    iget-object v2, p0, Liyj;->a:Lizx;

    .line 1892
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1894
    :cond_1
    return v0
.end method
