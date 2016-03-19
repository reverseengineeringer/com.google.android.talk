.class public final Ljva;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljva;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5734
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6739
    iput-object v0, p0, Ljva;->a:Ljava/lang/String;

    .line 6740
    iput-object v0, p0, Ljva;->b:Ljava/lang/String;

    .line 6741
    iput-object v0, p0, Ljva;->c:Ljava/lang/String;

    .line 6742
    iput-object v0, p0, Ljva;->eD:Llyd;

    .line 6743
    const/4 v0, -0x1

    iput v0, p0, Ljva;->eE:I

    .line 5736
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6785
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6786
    sparse-switch v0, :sswitch_data_0

    .line 6790
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6791
    :sswitch_0
    return-object p0

    .line 6796
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljva;->a:Ljava/lang/String;

    goto :goto_0

    .line 6800
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljva;->b:Ljava/lang/String;

    goto :goto_0

    .line 6804
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljva;->c:Ljava/lang/String;

    goto :goto_0

    .line 6786
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
    .line 5750
    iget-object v0, p0, Ljva;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5751
    const/4 v0, 0x1

    iget-object v1, p0, Ljva;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5753
    :cond_0
    iget-object v0, p0, Ljva;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5754
    const/4 v0, 0x2

    iget-object v1, p0, Ljva;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5756
    :cond_1
    iget-object v0, p0, Ljva;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5757
    const/4 v0, 0x3

    iget-object v1, p0, Ljva;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5759
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5760
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5764
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5765
    iget-object v1, p0, Ljva;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5766
    const/4 v1, 0x1

    iget-object v2, p0, Ljva;->a:Ljava/lang/String;

    .line 5767
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5769
    :cond_0
    iget-object v1, p0, Ljva;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5770
    const/4 v1, 0x2

    iget-object v2, p0, Ljva;->b:Ljava/lang/String;

    .line 5771
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5773
    :cond_1
    iget-object v1, p0, Ljva;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5774
    const/4 v1, 0x3

    iget-object v2, p0, Ljva;->c:Ljava/lang/String;

    .line 5775
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5777
    :cond_2
    return v0
.end method
