.class public final Lkkq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkkp;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1874
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2879
    iput-object v0, p0, Lkkq;->requestHeader:Lkdo;

    .line 2880
    iput-object v0, p0, Lkkq;->a:Lkkp;

    .line 2881
    iput-object v0, p0, Lkkq;->eD:Llyd;

    .line 2882
    const/4 v0, -0x1

    iput v0, p0, Lkkq;->eE:I

    .line 1876
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2917
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2918
    sparse-switch v0, :sswitch_data_0

    .line 2922
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2923
    :sswitch_0
    return-object p0

    .line 2928
    :sswitch_1
    iget-object v0, p0, Lkkq;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 2929
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkkq;->requestHeader:Lkdo;

    .line 2931
    :cond_1
    iget-object v0, p0, Lkkq;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2935
    :sswitch_2
    iget-object v0, p0, Lkkq;->a:Lkkp;

    if-nez v0, :cond_2

    .line 2936
    new-instance v0, Lkkp;

    invoke-direct {v0}, Lkkp;-><init>()V

    iput-object v0, p0, Lkkq;->a:Lkkp;

    .line 2938
    :cond_2
    iget-object v0, p0, Lkkq;->a:Lkkp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2918
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
    .line 1889
    iget-object v0, p0, Lkkq;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 1890
    const/4 v0, 0x1

    iget-object v1, p0, Lkkq;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1892
    :cond_0
    iget-object v0, p0, Lkkq;->a:Lkkp;

    if-eqz v0, :cond_1

    .line 1893
    const/4 v0, 0x2

    iget-object v1, p0, Lkkq;->a:Lkkp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1895
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1896
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1900
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1901
    iget-object v1, p0, Lkkq;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 1902
    const/4 v1, 0x1

    iget-object v2, p0, Lkkq;->requestHeader:Lkdo;

    .line 1903
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1905
    :cond_0
    iget-object v1, p0, Lkkq;->a:Lkkp;

    if-eqz v1, :cond_1

    .line 1906
    const/4 v1, 0x2

    iget-object v2, p0, Lkkq;->a:Lkkp;

    .line 1907
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1909
    :cond_1
    return v0
.end method
