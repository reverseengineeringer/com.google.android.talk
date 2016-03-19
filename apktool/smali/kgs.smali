.class public final Lkgs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkgd;

.field public b:Lkii;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2737
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3742
    iput-object v0, p0, Lkgs;->responseHeader:Lkdp;

    .line 3743
    iput-object v0, p0, Lkgs;->a:Lkgd;

    .line 3744
    iput-object v0, p0, Lkgs;->b:Lkii;

    .line 3745
    iput-object v0, p0, Lkgs;->eD:Llyd;

    .line 3746
    const/4 v0, -0x1

    iput v0, p0, Lkgs;->eE:I

    .line 2739
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3788
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3789
    sparse-switch v0, :sswitch_data_0

    .line 3793
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3794
    :sswitch_0
    return-object p0

    .line 3799
    :sswitch_1
    iget-object v0, p0, Lkgs;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 3800
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkgs;->responseHeader:Lkdp;

    .line 3802
    :cond_1
    iget-object v0, p0, Lkgs;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3806
    :sswitch_2
    iget-object v0, p0, Lkgs;->a:Lkgd;

    if-nez v0, :cond_2

    .line 3807
    new-instance v0, Lkgd;

    invoke-direct {v0}, Lkgd;-><init>()V

    iput-object v0, p0, Lkgs;->a:Lkgd;

    .line 3809
    :cond_2
    iget-object v0, p0, Lkgs;->a:Lkgd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3813
    :sswitch_3
    iget-object v0, p0, Lkgs;->b:Lkii;

    if-nez v0, :cond_3

    .line 3814
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkgs;->b:Lkii;

    .line 3816
    :cond_3
    iget-object v0, p0, Lkgs;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3789
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2753
    iget-object v0, p0, Lkgs;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 2754
    const/4 v0, 0x1

    iget-object v1, p0, Lkgs;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2756
    :cond_0
    iget-object v0, p0, Lkgs;->a:Lkgd;

    if-eqz v0, :cond_1

    .line 2757
    const/4 v0, 0x2

    iget-object v1, p0, Lkgs;->a:Lkgd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2759
    :cond_1
    iget-object v0, p0, Lkgs;->b:Lkii;

    if-eqz v0, :cond_2

    .line 2760
    const/4 v0, 0x3

    iget-object v1, p0, Lkgs;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2762
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2763
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2767
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2768
    iget-object v1, p0, Lkgs;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 2769
    const/4 v1, 0x1

    iget-object v2, p0, Lkgs;->responseHeader:Lkdp;

    .line 2770
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2772
    :cond_0
    iget-object v1, p0, Lkgs;->a:Lkgd;

    if-eqz v1, :cond_1

    .line 2773
    const/4 v1, 0x2

    iget-object v2, p0, Lkgs;->a:Lkgd;

    .line 2774
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2776
    :cond_1
    iget-object v1, p0, Lkgs;->b:Lkii;

    if-eqz v1, :cond_2

    .line 2777
    const/4 v1, 0x3

    iget-object v2, p0, Lkgs;->b:Lkii;

    .line 2778
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2780
    :cond_2
    return v0
.end method
