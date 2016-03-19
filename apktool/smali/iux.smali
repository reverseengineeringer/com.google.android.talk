.class public final Liux;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liux;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Livj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1734
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2739
    iput-object v0, p0, Liux;->a:Livj;

    .line 2740
    iput-object v0, p0, Liux;->eD:Llyd;

    .line 2741
    const/4 v0, -0x1

    iput v0, p0, Liux;->eE:I

    .line 1736
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2769
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2770
    sparse-switch v0, :sswitch_data_0

    .line 2774
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2775
    :sswitch_0
    return-object p0

    .line 2780
    :sswitch_1
    iget-object v0, p0, Liux;->a:Livj;

    if-nez v0, :cond_1

    .line 2781
    new-instance v0, Livj;

    invoke-direct {v0}, Livj;-><init>()V

    iput-object v0, p0, Liux;->a:Livj;

    .line 2783
    :cond_1
    iget-object v0, p0, Liux;->a:Livj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2770
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1748
    iget-object v0, p0, Liux;->a:Livj;

    if-eqz v0, :cond_0

    .line 1749
    const/4 v0, 0x1

    iget-object v1, p0, Liux;->a:Livj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1751
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1752
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1756
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1757
    iget-object v1, p0, Liux;->a:Livj;

    if-eqz v1, :cond_0

    .line 1758
    const/4 v1, 0x1

    iget-object v2, p0, Liux;->a:Livj;

    .line 1759
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1761
    :cond_0
    return v0
.end method
