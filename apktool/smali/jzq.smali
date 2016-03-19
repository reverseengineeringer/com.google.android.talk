.class public final Ljzq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36023
    invoke-direct {p0}, Llyb;-><init>()V

    .line 37028
    iput-object v0, p0, Ljzq;->a:Ljzl;

    .line 37029
    iput-object v0, p0, Ljzq;->eD:Llyd;

    .line 37030
    const/4 v0, -0x1

    iput v0, p0, Ljzq;->eE:I

    .line 36025
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 37058
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 37059
    sparse-switch v0, :sswitch_data_0

    .line 37063
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37064
    :sswitch_0
    return-object p0

    .line 37069
    :sswitch_1
    iget-object v0, p0, Ljzq;->a:Ljzl;

    if-nez v0, :cond_1

    .line 37070
    new-instance v0, Ljzl;

    invoke-direct {v0}, Ljzl;-><init>()V

    iput-object v0, p0, Ljzq;->a:Ljzl;

    .line 37072
    :cond_1
    iget-object v0, p0, Ljzq;->a:Ljzl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 37059
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
    .line 36037
    iget-object v0, p0, Ljzq;->a:Ljzl;

    if-eqz v0, :cond_0

    .line 36038
    const/4 v0, 0x1

    iget-object v1, p0, Ljzq;->a:Ljzl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 36040
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 36041
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 36045
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 36046
    iget-object v1, p0, Ljzq;->a:Ljzl;

    if-eqz v1, :cond_0

    .line 36047
    const/4 v1, 0x1

    iget-object v2, p0, Ljzq;->a:Ljzl;

    .line 36048
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36050
    :cond_0
    return v0
.end method
