.class public final Llkn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llkm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1028
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2033
    iput-object v0, p0, Llkn;->a:Llkm;

    .line 2034
    iput-object v0, p0, Llkn;->eD:Llyd;

    .line 2035
    const/4 v0, -0x1

    iput v0, p0, Llkn;->eE:I

    .line 1030
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2063
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2064
    sparse-switch v0, :sswitch_data_0

    .line 2068
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2069
    :sswitch_0
    return-object p0

    .line 2074
    :sswitch_1
    iget-object v0, p0, Llkn;->a:Llkm;

    if-nez v0, :cond_1

    .line 2075
    new-instance v0, Llkm;

    invoke-direct {v0}, Llkm;-><init>()V

    iput-object v0, p0, Llkn;->a:Llkm;

    .line 2077
    :cond_1
    iget-object v0, p0, Llkn;->a:Llkm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2064
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
    .line 1042
    iget-object v0, p0, Llkn;->a:Llkm;

    if-eqz v0, :cond_0

    .line 1043
    const/4 v0, 0x1

    iget-object v1, p0, Llkn;->a:Llkm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1045
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1046
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1050
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1051
    iget-object v1, p0, Llkn;->a:Llkm;

    if-eqz v1, :cond_0

    .line 1052
    const/4 v1, 0x1

    iget-object v2, p0, Llkn;->a:Llkm;

    .line 1053
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1055
    :cond_0
    return v0
.end method
