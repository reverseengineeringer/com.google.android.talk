.class public final Lljr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lljr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llkl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1406
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2411
    iput-object v0, p0, Lljr;->a:Llkl;

    .line 2412
    iput-object v0, p0, Lljr;->eD:Llyd;

    .line 2413
    const/4 v0, -0x1

    iput v0, p0, Lljr;->eE:I

    .line 1408
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2441
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2442
    sparse-switch v0, :sswitch_data_0

    .line 2446
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2447
    :sswitch_0
    return-object p0

    .line 2452
    :sswitch_1
    iget-object v0, p0, Lljr;->a:Llkl;

    if-nez v0, :cond_1

    .line 2453
    new-instance v0, Llkl;

    invoke-direct {v0}, Llkl;-><init>()V

    iput-object v0, p0, Lljr;->a:Llkl;

    .line 2455
    :cond_1
    iget-object v0, p0, Lljr;->a:Llkl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2442
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
    .line 1420
    iget-object v0, p0, Lljr;->a:Llkl;

    if-eqz v0, :cond_0

    .line 1421
    const/4 v0, 0x1

    iget-object v1, p0, Lljr;->a:Llkl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1423
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1424
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1428
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1429
    iget-object v1, p0, Lljr;->a:Llkl;

    if-eqz v1, :cond_0

    .line 1430
    const/4 v1, 0x1

    iget-object v2, p0, Lljr;->a:Llkl;

    .line 1431
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1433
    :cond_0
    return v0
.end method
