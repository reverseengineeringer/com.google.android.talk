.class public final Llgm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llpi;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-direct {p0}, Llyb;-><init>()V

    .line 420
    iput-object v0, p0, Llgm;->a:Llpi;

    .line 421
    iput-object v0, p0, Llgm;->b:Ljava/lang/Boolean;

    .line 422
    iput-object v0, p0, Llgm;->eD:Llyd;

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Llgm;->eE:I

    .line 424
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2457
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2458
    sparse-switch v0, :sswitch_data_0

    .line 2462
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2463
    :sswitch_0
    return-object p0

    .line 2468
    :sswitch_1
    iget-object v0, p0, Llgm;->a:Llpi;

    if-nez v0, :cond_1

    .line 2469
    new-instance v0, Llpi;

    invoke-direct {v0}, Llpi;-><init>()V

    iput-object v0, p0, Llgm;->a:Llpi;

    .line 2471
    :cond_1
    iget-object v0, p0, Llgm;->a:Llpi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2475
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llgm;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 2458
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Llgm;->a:Llpi;

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x1

    iget-object v1, p0, Llgm;->a:Llpi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 432
    :cond_0
    iget-object v0, p0, Llgm;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 433
    const/4 v0, 0x2

    iget-object v1, p0, Llgm;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 435
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 436
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 440
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 441
    iget-object v1, p0, Llgm;->a:Llpi;

    if-eqz v1, :cond_0

    .line 442
    const/4 v1, 0x1

    iget-object v2, p0, Llgm;->a:Llpi;

    .line 443
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_0
    iget-object v1, p0, Llgm;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 446
    const/4 v1, 0x2

    iget-object v2, p0, Llgm;->b:Ljava/lang/Boolean;

    .line 447
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 447
    add-int/2addr v0, v1

    .line 449
    :cond_1
    return v0
.end method
