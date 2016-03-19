.class public final Llms;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llms;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llhl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 989
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1994
    iput-object v0, p0, Llms;->a:Llhl;

    .line 1995
    iput-object v0, p0, Llms;->eD:Llyd;

    .line 1996
    const/4 v0, -0x1

    iput v0, p0, Llms;->eE:I

    .line 991
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2024
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2025
    sparse-switch v0, :sswitch_data_0

    .line 2029
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2030
    :sswitch_0
    return-object p0

    .line 2035
    :sswitch_1
    iget-object v0, p0, Llms;->a:Llhl;

    if-nez v0, :cond_1

    .line 2036
    new-instance v0, Llhl;

    invoke-direct {v0}, Llhl;-><init>()V

    iput-object v0, p0, Llms;->a:Llhl;

    .line 2038
    :cond_1
    iget-object v0, p0, Llms;->a:Llhl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2025
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
    .line 1003
    iget-object v0, p0, Llms;->a:Llhl;

    if-eqz v0, :cond_0

    .line 1004
    const/4 v0, 0x1

    iget-object v1, p0, Llms;->a:Llhl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1006
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1007
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1011
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1012
    iget-object v1, p0, Llms;->a:Llhl;

    if-eqz v1, :cond_0

    .line 1013
    const/4 v1, 0x1

    iget-object v2, p0, Llms;->a:Llhl;

    .line 1014
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1016
    :cond_0
    return v0
.end method
