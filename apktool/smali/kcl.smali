.class public final Lkcl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljza;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35522
    invoke-direct {p0}, Llyb;-><init>()V

    .line 36527
    iput-object v0, p0, Lkcl;->a:Ljza;

    .line 36528
    iput-object v0, p0, Lkcl;->eD:Llyd;

    .line 36529
    const/4 v0, -0x1

    iput v0, p0, Lkcl;->eE:I

    .line 35524
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 36557
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 36558
    sparse-switch v0, :sswitch_data_0

    .line 36562
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36563
    :sswitch_0
    return-object p0

    .line 36568
    :sswitch_1
    iget-object v0, p0, Lkcl;->a:Ljza;

    if-nez v0, :cond_1

    .line 36569
    new-instance v0, Ljza;

    invoke-direct {v0}, Ljza;-><init>()V

    iput-object v0, p0, Lkcl;->a:Ljza;

    .line 36571
    :cond_1
    iget-object v0, p0, Lkcl;->a:Ljza;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 36558
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
    .line 35536
    iget-object v0, p0, Lkcl;->a:Ljza;

    if-eqz v0, :cond_0

    .line 35537
    const/4 v0, 0x1

    iget-object v1, p0, Lkcl;->a:Ljza;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 35539
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 35540
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 35544
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 35545
    iget-object v1, p0, Lkcl;->a:Ljza;

    if-eqz v1, :cond_0

    .line 35546
    const/4 v1, 0x1

    iget-object v2, p0, Lkcl;->a:Ljza;

    .line 35547
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35549
    :cond_0
    return v0
.end method
