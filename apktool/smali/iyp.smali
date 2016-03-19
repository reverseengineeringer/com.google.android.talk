.class public final Liyp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljdc;

.field public apiHeader:Liyd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 995
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2000
    iput-object v0, p0, Liyp;->apiHeader:Liyd;

    .line 2001
    iput-object v0, p0, Liyp;->a:Ljdc;

    .line 2002
    iput-object v0, p0, Liyp;->eD:Llyd;

    .line 2003
    const/4 v0, -0x1

    iput v0, p0, Liyp;->eE:I

    .line 997
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2038
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2039
    sparse-switch v0, :sswitch_data_0

    .line 2043
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2044
    :sswitch_0
    return-object p0

    .line 2049
    :sswitch_1
    iget-object v0, p0, Liyp;->apiHeader:Liyd;

    if-nez v0, :cond_1

    .line 2050
    new-instance v0, Liyd;

    invoke-direct {v0}, Liyd;-><init>()V

    iput-object v0, p0, Liyp;->apiHeader:Liyd;

    .line 2052
    :cond_1
    iget-object v0, p0, Liyp;->apiHeader:Liyd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2056
    :sswitch_2
    iget-object v0, p0, Liyp;->a:Ljdc;

    if-nez v0, :cond_2

    .line 2057
    new-instance v0, Ljdc;

    invoke-direct {v0}, Ljdc;-><init>()V

    iput-object v0, p0, Liyp;->a:Ljdc;

    .line 2059
    :cond_2
    iget-object v0, p0, Liyp;->a:Ljdc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2039
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
    .line 1010
    iget-object v0, p0, Liyp;->apiHeader:Liyd;

    if-eqz v0, :cond_0

    .line 1011
    const/4 v0, 0x1

    iget-object v1, p0, Liyp;->apiHeader:Liyd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1013
    :cond_0
    iget-object v0, p0, Liyp;->a:Ljdc;

    if-eqz v0, :cond_1

    .line 1014
    const/4 v0, 0x2

    iget-object v1, p0, Liyp;->a:Ljdc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1016
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1017
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1021
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1022
    iget-object v1, p0, Liyp;->apiHeader:Liyd;

    if-eqz v1, :cond_0

    .line 1023
    const/4 v1, 0x1

    iget-object v2, p0, Liyp;->apiHeader:Liyd;

    .line 1024
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1026
    :cond_0
    iget-object v1, p0, Liyp;->a:Ljdc;

    if-eqz v1, :cond_1

    .line 1027
    const/4 v1, 0x2

    iget-object v2, p0, Liyp;->a:Ljdc;

    .line 1028
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1030
    :cond_1
    return v0
.end method
