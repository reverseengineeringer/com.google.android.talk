.class public final Ljnl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljlq;

.field public c:Ljlq;

.field public d:Ljlq;

.field public e:Ljnf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 616
    invoke-direct {p0}, Llyb;-><init>()V

    .line 617
    iput-object v0, p0, Ljnl;->a:Ljava/lang/Boolean;

    .line 618
    iput-object v0, p0, Ljnl;->b:Ljlq;

    .line 619
    iput-object v0, p0, Ljnl;->c:Ljlq;

    .line 620
    iput-object v0, p0, Ljnl;->d:Ljlq;

    .line 621
    iput-object v0, p0, Ljnl;->e:Ljnf;

    .line 622
    iput-object v0, p0, Ljnl;->eD:Llyd;

    .line 623
    const/4 v0, -0x1

    iput v0, p0, Ljnl;->eE:I

    .line 624
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1678
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1679
    sparse-switch v0, :sswitch_data_0

    .line 1683
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1684
    :sswitch_0
    return-object p0

    .line 1689
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljnl;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 1693
    :sswitch_2
    iget-object v0, p0, Ljnl;->b:Ljlq;

    if-nez v0, :cond_1

    .line 1694
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    iput-object v0, p0, Ljnl;->b:Ljlq;

    .line 1696
    :cond_1
    iget-object v0, p0, Ljnl;->b:Ljlq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1700
    :sswitch_3
    iget-object v0, p0, Ljnl;->c:Ljlq;

    if-nez v0, :cond_2

    .line 1701
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    iput-object v0, p0, Ljnl;->c:Ljlq;

    .line 1703
    :cond_2
    iget-object v0, p0, Ljnl;->c:Ljlq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1707
    :sswitch_4
    iget-object v0, p0, Ljnl;->d:Ljlq;

    if-nez v0, :cond_3

    .line 1708
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    iput-object v0, p0, Ljnl;->d:Ljlq;

    .line 1710
    :cond_3
    iget-object v0, p0, Ljnl;->d:Ljlq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1714
    :sswitch_5
    iget-object v0, p0, Ljnl;->e:Ljnf;

    if-nez v0, :cond_4

    .line 1715
    new-instance v0, Ljnf;

    invoke-direct {v0}, Ljnf;-><init>()V

    iput-object v0, p0, Ljnl;->e:Ljnf;

    .line 1717
    :cond_4
    iget-object v0, p0, Ljnl;->e:Ljnf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1679
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x28 -> :sswitch_1
        0x32 -> :sswitch_2
        0x3a -> :sswitch_3
        0x42 -> :sswitch_4
        0x4a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Ljnl;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 630
    const/4 v0, 0x5

    iget-object v1, p0, Ljnl;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 632
    :cond_0
    iget-object v0, p0, Ljnl;->b:Ljlq;

    if-eqz v0, :cond_1

    .line 633
    const/4 v0, 0x6

    iget-object v1, p0, Ljnl;->b:Ljlq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 635
    :cond_1
    iget-object v0, p0, Ljnl;->c:Ljlq;

    if-eqz v0, :cond_2

    .line 636
    const/4 v0, 0x7

    iget-object v1, p0, Ljnl;->c:Ljlq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 638
    :cond_2
    iget-object v0, p0, Ljnl;->d:Ljlq;

    if-eqz v0, :cond_3

    .line 639
    const/16 v0, 0x8

    iget-object v1, p0, Ljnl;->d:Ljlq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 641
    :cond_3
    iget-object v0, p0, Ljnl;->e:Ljnf;

    if-eqz v0, :cond_4

    .line 642
    const/16 v0, 0x9

    iget-object v1, p0, Ljnl;->e:Ljnf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 644
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 645
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 649
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 650
    iget-object v1, p0, Ljnl;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 651
    const/4 v1, 0x5

    iget-object v2, p0, Ljnl;->a:Ljava/lang/Boolean;

    .line 652
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 652
    add-int/2addr v0, v1

    .line 654
    :cond_0
    iget-object v1, p0, Ljnl;->b:Ljlq;

    if-eqz v1, :cond_1

    .line 655
    const/4 v1, 0x6

    iget-object v2, p0, Ljnl;->b:Ljlq;

    .line 656
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 658
    :cond_1
    iget-object v1, p0, Ljnl;->c:Ljlq;

    if-eqz v1, :cond_2

    .line 659
    const/4 v1, 0x7

    iget-object v2, p0, Ljnl;->c:Ljlq;

    .line 660
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 662
    :cond_2
    iget-object v1, p0, Ljnl;->d:Ljlq;

    if-eqz v1, :cond_3

    .line 663
    const/16 v1, 0x8

    iget-object v2, p0, Ljnl;->d:Ljlq;

    .line 664
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 666
    :cond_3
    iget-object v1, p0, Ljnl;->e:Ljnf;

    if-eqz v1, :cond_4

    .line 667
    const/16 v1, 0x9

    iget-object v2, p0, Ljnl;->e:Ljnf;

    .line 668
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 670
    :cond_4
    return v0
.end method
