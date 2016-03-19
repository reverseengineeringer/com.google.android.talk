.class public final Llmt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llmt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1445
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2450
    iput-object v0, p0, Llmt;->a:Llow;

    .line 2451
    iput-object v0, p0, Llmt;->eD:Llyd;

    .line 2452
    const/4 v0, -0x1

    iput v0, p0, Llmt;->eE:I

    .line 1447
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2480
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2481
    sparse-switch v0, :sswitch_data_0

    .line 2485
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2486
    :sswitch_0
    return-object p0

    .line 2491
    :sswitch_1
    iget-object v0, p0, Llmt;->a:Llow;

    if-nez v0, :cond_1

    .line 2492
    new-instance v0, Llow;

    invoke-direct {v0}, Llow;-><init>()V

    iput-object v0, p0, Llmt;->a:Llow;

    .line 2494
    :cond_1
    iget-object v0, p0, Llmt;->a:Llow;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2481
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
    .line 1459
    iget-object v0, p0, Llmt;->a:Llow;

    if-eqz v0, :cond_0

    .line 1460
    const/4 v0, 0x1

    iget-object v1, p0, Llmt;->a:Llow;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1462
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1463
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1467
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1468
    iget-object v1, p0, Llmt;->a:Llow;

    if-eqz v1, :cond_0

    .line 1469
    const/4 v1, 0x1

    iget-object v2, p0, Llmt;->a:Llow;

    .line 1470
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1472
    :cond_0
    return v0
.end method
