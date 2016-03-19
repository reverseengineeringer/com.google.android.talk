.class public final Llhy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llpz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1868
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2873
    iput-object v0, p0, Llhy;->a:Llpz;

    .line 2874
    iput-object v0, p0, Llhy;->eD:Llyd;

    .line 2875
    const/4 v0, -0x1

    iput v0, p0, Llhy;->eE:I

    .line 1870
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2903
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2904
    sparse-switch v0, :sswitch_data_0

    .line 2908
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2909
    :sswitch_0
    return-object p0

    .line 2914
    :sswitch_1
    iget-object v0, p0, Llhy;->a:Llpz;

    if-nez v0, :cond_1

    .line 2915
    new-instance v0, Llpz;

    invoke-direct {v0}, Llpz;-><init>()V

    iput-object v0, p0, Llhy;->a:Llpz;

    .line 2917
    :cond_1
    iget-object v0, p0, Llhy;->a:Llpz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2904
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
    .line 1882
    iget-object v0, p0, Llhy;->a:Llpz;

    if-eqz v0, :cond_0

    .line 1883
    const/4 v0, 0x1

    iget-object v1, p0, Llhy;->a:Llpz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1885
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1886
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1890
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1891
    iget-object v1, p0, Llhy;->a:Llpz;

    if-eqz v1, :cond_0

    .line 1892
    const/4 v1, 0x1

    iget-object v2, p0, Llhy;->a:Llpz;

    .line 1893
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1895
    :cond_0
    return v0
.end method
