.class public final Lkky;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkky;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 562
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1567
    iput-object v0, p0, Lkky;->a:Ljava/lang/Integer;

    .line 1568
    iput-object v0, p0, Lkky;->b:Ljava/lang/Boolean;

    .line 1569
    iput-object v0, p0, Lkky;->c:Ljava/lang/Integer;

    .line 1570
    iput-object v0, p0, Lkky;->eD:Llyd;

    .line 1571
    const/4 v0, -0x1

    iput v0, p0, Lkky;->eE:I

    .line 564
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2613
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2614
    sparse-switch v0, :sswitch_data_0

    .line 2618
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2619
    :sswitch_0
    return-object p0

    .line 2624
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2625
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2629
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkky;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2635
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkky;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 2639
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2640
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2644
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkky;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2614
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 2625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2640
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lkky;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 579
    const/4 v0, 0x1

    iget-object v1, p0, Lkky;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 581
    :cond_0
    iget-object v0, p0, Lkky;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 582
    const/4 v0, 0x2

    iget-object v1, p0, Lkky;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 584
    :cond_1
    iget-object v0, p0, Lkky;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 585
    const/4 v0, 0x3

    iget-object v1, p0, Lkky;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 587
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 588
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 592
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 593
    iget-object v1, p0, Lkky;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 594
    const/4 v1, 0x1

    iget-object v2, p0, Lkky;->a:Ljava/lang/Integer;

    .line 595
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_0
    iget-object v1, p0, Lkky;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 598
    const/4 v1, 0x2

    iget-object v2, p0, Lkky;->b:Ljava/lang/Boolean;

    .line 599
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 599
    add-int/2addr v0, v1

    .line 601
    :cond_1
    iget-object v1, p0, Lkky;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 602
    const/4 v1, 0x3

    iget-object v2, p0, Lkky;->c:Ljava/lang/Integer;

    .line 603
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 605
    :cond_2
    return v0
.end method
