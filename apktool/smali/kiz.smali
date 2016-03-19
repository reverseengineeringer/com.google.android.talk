.class public final Lkiz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkiz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4943
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5948
    iput-object v0, p0, Lkiz;->responseHeader:Lkdp;

    .line 5949
    iput-object v0, p0, Lkiz;->a:Lkii;

    .line 5950
    iput-object v0, p0, Lkiz;->eD:Llyd;

    .line 5951
    const/4 v0, -0x1

    iput v0, p0, Lkiz;->eE:I

    .line 4945
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5986
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5987
    sparse-switch v0, :sswitch_data_0

    .line 5991
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5992
    :sswitch_0
    return-object p0

    .line 5997
    :sswitch_1
    iget-object v0, p0, Lkiz;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 5998
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkiz;->responseHeader:Lkdp;

    .line 6000
    :cond_1
    iget-object v0, p0, Lkiz;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6004
    :sswitch_2
    iget-object v0, p0, Lkiz;->a:Lkii;

    if-nez v0, :cond_2

    .line 6005
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkiz;->a:Lkii;

    .line 6007
    :cond_2
    iget-object v0, p0, Lkiz;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5987
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
    .line 4958
    iget-object v0, p0, Lkiz;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 4959
    const/4 v0, 0x1

    iget-object v1, p0, Lkiz;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4961
    :cond_0
    iget-object v0, p0, Lkiz;->a:Lkii;

    if-eqz v0, :cond_1

    .line 4962
    const/4 v0, 0x2

    iget-object v1, p0, Lkiz;->a:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4964
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4965
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4969
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4970
    iget-object v1, p0, Lkiz;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 4971
    const/4 v1, 0x1

    iget-object v2, p0, Lkiz;->responseHeader:Lkdp;

    .line 4972
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4974
    :cond_0
    iget-object v1, p0, Lkiz;->a:Lkii;

    if-eqz v1, :cond_1

    .line 4975
    const/4 v1, 0x2

    iget-object v2, p0, Lkiz;->a:Lkii;

    .line 4976
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4978
    :cond_1
    return v0
.end method
