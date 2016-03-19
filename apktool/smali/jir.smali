.class public final Ljir;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljir;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 456
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1461
    iput-object v0, p0, Ljir;->a:Ljava/lang/Boolean;

    .line 1462
    iput-object v0, p0, Ljir;->b:Ljava/lang/Boolean;

    .line 1463
    iput-object v0, p0, Ljir;->c:Ljava/lang/Boolean;

    .line 1464
    iput-object v0, p0, Ljir;->eD:Llyd;

    .line 1465
    const/4 v0, -0x1

    iput v0, p0, Ljir;->eE:I

    .line 458
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4507
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4508
    sparse-switch v0, :sswitch_data_0

    .line 4512
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4513
    :sswitch_0
    return-object p0

    .line 4518
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljir;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 4522
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljir;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 4526
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljir;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 4508
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Ljir;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 473
    const/4 v0, 0x1

    iget-object v1, p0, Ljir;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 475
    :cond_0
    iget-object v0, p0, Ljir;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 476
    const/4 v0, 0x2

    iget-object v1, p0, Ljir;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 478
    :cond_1
    iget-object v0, p0, Ljir;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 479
    const/4 v0, 0x3

    iget-object v1, p0, Ljir;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 481
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 482
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 486
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 487
    iget-object v1, p0, Ljir;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 488
    const/4 v1, 0x1

    iget-object v2, p0, Ljir;->a:Ljava/lang/Boolean;

    .line 489
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 489
    add-int/2addr v0, v1

    .line 491
    :cond_0
    iget-object v1, p0, Ljir;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 492
    const/4 v1, 0x2

    iget-object v2, p0, Ljir;->b:Ljava/lang/Boolean;

    .line 493
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 493
    add-int/2addr v0, v1

    .line 495
    :cond_1
    iget-object v1, p0, Ljir;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 496
    const/4 v1, 0x3

    iget-object v2, p0, Ljir;->c:Ljava/lang/Boolean;

    .line 497
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 497
    add-int/2addr v0, v1

    .line 499
    :cond_2
    return v0
.end method
