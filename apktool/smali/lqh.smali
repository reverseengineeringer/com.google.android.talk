.class public final Llqh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 829
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1834
    iput-object v0, p0, Llqh;->a:Llod;

    .line 1835
    iput-object v0, p0, Llqh;->eD:Llyd;

    .line 1836
    const/4 v0, -0x1

    iput v0, p0, Llqh;->eE:I

    .line 831
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1864
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1865
    sparse-switch v0, :sswitch_data_0

    .line 1869
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1870
    :sswitch_0
    return-object p0

    .line 1875
    :sswitch_1
    iget-object v0, p0, Llqh;->a:Llod;

    if-nez v0, :cond_1

    .line 1876
    new-instance v0, Llod;

    invoke-direct {v0}, Llod;-><init>()V

    iput-object v0, p0, Llqh;->a:Llod;

    .line 1878
    :cond_1
    iget-object v0, p0, Llqh;->a:Llod;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1865
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
    .line 843
    iget-object v0, p0, Llqh;->a:Llod;

    if-eqz v0, :cond_0

    .line 844
    const/4 v0, 0x1

    iget-object v1, p0, Llqh;->a:Llod;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 846
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 847
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 851
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 852
    iget-object v1, p0, Llqh;->a:Llod;

    if-eqz v1, :cond_0

    .line 853
    const/4 v1, 0x1

    iget-object v2, p0, Llqh;->a:Llod;

    .line 854
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 856
    :cond_0
    return v0
.end method
