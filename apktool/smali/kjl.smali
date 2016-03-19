.class public final Lkjl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjl;",
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

    .line 4694
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5699
    iput-object v0, p0, Lkjl;->responseHeader:Lkdp;

    .line 5700
    iput-object v0, p0, Lkjl;->a:Lkii;

    .line 5701
    iput-object v0, p0, Lkjl;->eD:Llyd;

    .line 5702
    const/4 v0, -0x1

    iput v0, p0, Lkjl;->eE:I

    .line 4696
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5737
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5738
    sparse-switch v0, :sswitch_data_0

    .line 5742
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5743
    :sswitch_0
    return-object p0

    .line 5748
    :sswitch_1
    iget-object v0, p0, Lkjl;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 5749
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkjl;->responseHeader:Lkdp;

    .line 5751
    :cond_1
    iget-object v0, p0, Lkjl;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5755
    :sswitch_2
    iget-object v0, p0, Lkjl;->a:Lkii;

    if-nez v0, :cond_2

    .line 5756
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkjl;->a:Lkii;

    .line 5758
    :cond_2
    iget-object v0, p0, Lkjl;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5738
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
    .line 4709
    iget-object v0, p0, Lkjl;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 4710
    const/4 v0, 0x1

    iget-object v1, p0, Lkjl;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4712
    :cond_0
    iget-object v0, p0, Lkjl;->a:Lkii;

    if-eqz v0, :cond_1

    .line 4713
    const/4 v0, 0x2

    iget-object v1, p0, Lkjl;->a:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4715
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4716
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4720
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4721
    iget-object v1, p0, Lkjl;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 4722
    const/4 v1, 0x1

    iget-object v2, p0, Lkjl;->responseHeader:Lkdp;

    .line 4723
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4725
    :cond_0
    iget-object v1, p0, Lkjl;->a:Lkii;

    if-eqz v1, :cond_1

    .line 4726
    const/4 v1, 0x2

    iget-object v2, p0, Lkjl;->a:Lkii;

    .line 4727
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4729
    :cond_1
    return v0
.end method
