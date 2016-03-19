.class public final Ljxx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35933
    invoke-direct {p0}, Llyb;-><init>()V

    .line 36938
    iput-object v0, p0, Ljxx;->a:Ljxr;

    .line 36939
    iput-object v0, p0, Ljxx;->eD:Llyd;

    .line 36940
    const/4 v0, -0x1

    iput v0, p0, Ljxx;->eE:I

    .line 35935
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 36968
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 36969
    sparse-switch v0, :sswitch_data_0

    .line 36973
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36974
    :sswitch_0
    return-object p0

    .line 36979
    :sswitch_1
    iget-object v0, p0, Ljxx;->a:Ljxr;

    if-nez v0, :cond_1

    .line 36980
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iput-object v0, p0, Ljxx;->a:Ljxr;

    .line 36982
    :cond_1
    iget-object v0, p0, Ljxx;->a:Ljxr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 36969
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
    .line 35947
    iget-object v0, p0, Ljxx;->a:Ljxr;

    if-eqz v0, :cond_0

    .line 35948
    const/4 v0, 0x1

    iget-object v1, p0, Ljxx;->a:Ljxr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 35950
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 35951
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 35955
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 35956
    iget-object v1, p0, Ljxx;->a:Ljxr;

    if-eqz v1, :cond_0

    .line 35957
    const/4 v1, 0x1

    iget-object v2, p0, Ljxx;->a:Ljxr;

    .line 35958
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35960
    :cond_0
    return v0
.end method
