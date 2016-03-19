.class public final Ljpy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljpy;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1683
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2688
    iput-object v0, p0, Ljpy;->a:Ljava/lang/Integer;

    .line 2689
    iput-object v0, p0, Ljpy;->b:Ljava/lang/String;

    .line 2690
    iput-object v0, p0, Ljpy;->c:Ljava/lang/String;

    .line 2691
    iput-object v0, p0, Ljpy;->d:Ljava/lang/Boolean;

    .line 2692
    iput-object v0, p0, Ljpy;->eD:Llyd;

    .line 2693
    const/4 v0, -0x1

    iput v0, p0, Ljpy;->eE:I

    .line 1685
    return-void
.end method

.method public static d()[Ljpy;
    .locals 2

    .prologue
    .line 1658
    sget-object v0, Ljpy;->e:[Ljpy;

    if-nez v0, :cond_1

    .line 1659
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1661
    :try_start_0
    sget-object v0, Ljpy;->e:[Ljpy;

    if-nez v0, :cond_0

    .line 1662
    const/4 v0, 0x0

    new-array v0, v0, [Ljpy;

    sput-object v0, Ljpy;->e:[Ljpy;

    .line 1664
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    :cond_1
    sget-object v0, Ljpy;->e:[Ljpy;

    return-object v0

    .line 1664
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3738
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3739
    sparse-switch v0, :sswitch_data_0

    .line 3743
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3744
    :sswitch_0
    return-object p0

    .line 3749
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljpy;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3753
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljpy;->b:Ljava/lang/String;

    goto :goto_0

    .line 3757
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljpy;->c:Ljava/lang/String;

    goto :goto_0

    .line 3761
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljpy;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 3739
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Ljpy;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1701
    const/4 v0, 0x1

    iget-object v1, p0, Ljpy;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1703
    :cond_0
    iget-object v0, p0, Ljpy;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1704
    const/4 v0, 0x2

    iget-object v1, p0, Ljpy;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1706
    :cond_1
    const/4 v0, 0x3

    iget-object v1, p0, Ljpy;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1707
    iget-object v0, p0, Ljpy;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1708
    const/4 v0, 0x4

    iget-object v1, p0, Ljpy;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1710
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1711
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1715
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1716
    iget-object v1, p0, Ljpy;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1717
    const/4 v1, 0x1

    iget-object v2, p0, Ljpy;->a:Ljava/lang/Integer;

    .line 1718
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1720
    :cond_0
    iget-object v1, p0, Ljpy;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1721
    const/4 v1, 0x2

    iget-object v2, p0, Ljpy;->b:Ljava/lang/String;

    .line 1722
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1724
    :cond_1
    const/4 v1, 0x3

    iget-object v2, p0, Ljpy;->c:Ljava/lang/String;

    .line 1725
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1726
    iget-object v1, p0, Ljpy;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1727
    const/4 v1, 0x4

    iget-object v2, p0, Ljpy;->d:Ljava/lang/Boolean;

    .line 1728
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1728
    add-int/2addr v0, v1

    .line 1730
    :cond_2
    return v0
.end method
