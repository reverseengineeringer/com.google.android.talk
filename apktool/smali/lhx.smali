.class public final Llhx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llhy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1958
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2963
    iput-object v0, p0, Llhx;->a:Llhy;

    .line 2964
    iput-object v0, p0, Llhx;->eD:Llyd;

    .line 2965
    const/4 v0, -0x1

    iput v0, p0, Llhx;->eE:I

    .line 1960
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2993
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2994
    sparse-switch v0, :sswitch_data_0

    .line 2998
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2999
    :sswitch_0
    return-object p0

    .line 3004
    :sswitch_1
    iget-object v0, p0, Llhx;->a:Llhy;

    if-nez v0, :cond_1

    .line 3005
    new-instance v0, Llhy;

    invoke-direct {v0}, Llhy;-><init>()V

    iput-object v0, p0, Llhx;->a:Llhy;

    .line 3007
    :cond_1
    iget-object v0, p0, Llhx;->a:Llhy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2994
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
    .line 1972
    iget-object v0, p0, Llhx;->a:Llhy;

    if-eqz v0, :cond_0

    .line 1973
    const/4 v0, 0x1

    iget-object v1, p0, Llhx;->a:Llhy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1975
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1976
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1980
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1981
    iget-object v1, p0, Llhx;->a:Llhy;

    if-eqz v1, :cond_0

    .line 1982
    const/4 v1, 0x1

    iget-object v2, p0, Llhx;->a:Llhy;

    .line 1983
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1985
    :cond_0
    return v0
.end method
