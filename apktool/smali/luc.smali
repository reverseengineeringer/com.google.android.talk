.class public final Lluc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lluc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lluc;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Llku;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Llku;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 722
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1727
    iput-object v0, p0, Lluc;->a:Ljava/lang/Integer;

    .line 1728
    iput-object v0, p0, Lluc;->b:Llku;

    .line 1729
    iput-object v0, p0, Lluc;->c:Ljava/lang/String;

    .line 1730
    iput-object v0, p0, Lluc;->d:Ljava/lang/String;

    .line 1731
    iput-object v0, p0, Lluc;->e:Llku;

    .line 1732
    iput-object v0, p0, Lluc;->eD:Llyd;

    .line 1733
    const/4 v0, -0x1

    iput v0, p0, Lluc;->eE:I

    .line 724
    return-void
.end method

.method public static d()[Lluc;
    .locals 2

    .prologue
    .line 694
    sget-object v0, Lluc;->f:[Lluc;

    if-nez v0, :cond_1

    .line 695
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    :try_start_0
    sget-object v0, Lluc;->f:[Lluc;

    if-nez v0, :cond_0

    .line 698
    const/4 v0, 0x0

    new-array v0, v0, [Lluc;

    sput-object v0, Lluc;->f:[Lluc;

    .line 700
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :cond_1
    sget-object v0, Lluc;->f:[Lluc;

    return-object v0

    .line 700
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
    .line 1789
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1790
    sparse-switch v0, :sswitch_data_0

    .line 1794
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1795
    :sswitch_0
    return-object p0

    .line 1800
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1801
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1806
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lluc;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1812
    :sswitch_2
    iget-object v0, p0, Lluc;->b:Llku;

    if-nez v0, :cond_1

    .line 1813
    new-instance v0, Llku;

    invoke-direct {v0}, Llku;-><init>()V

    iput-object v0, p0, Lluc;->b:Llku;

    .line 1815
    :cond_1
    iget-object v0, p0, Lluc;->b:Llku;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1819
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lluc;->c:Ljava/lang/String;

    goto :goto_0

    .line 1823
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lluc;->d:Ljava/lang/String;

    goto :goto_0

    .line 1827
    :sswitch_5
    iget-object v0, p0, Lluc;->e:Llku;

    if-nez v0, :cond_2

    .line 1828
    new-instance v0, Llku;

    invoke-direct {v0}, Llku;-><init>()V

    iput-object v0, p0, Lluc;->e:Llku;

    .line 1830
    :cond_2
    iget-object v0, p0, Lluc;->e:Llku;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1790
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 1801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lluc;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 741
    const/4 v0, 0x1

    iget-object v1, p0, Lluc;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 743
    :cond_0
    iget-object v0, p0, Lluc;->b:Llku;

    if-eqz v0, :cond_1

    .line 744
    const/4 v0, 0x2

    iget-object v1, p0, Lluc;->b:Llku;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 746
    :cond_1
    iget-object v0, p0, Lluc;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 747
    const/4 v0, 0x3

    iget-object v1, p0, Lluc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 749
    :cond_2
    iget-object v0, p0, Lluc;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 750
    const/4 v0, 0x4

    iget-object v1, p0, Lluc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 752
    :cond_3
    iget-object v0, p0, Lluc;->e:Llku;

    if-eqz v0, :cond_4

    .line 753
    const/4 v0, 0x5

    iget-object v1, p0, Lluc;->e:Llku;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 755
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 756
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 760
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 761
    iget-object v1, p0, Lluc;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 762
    const/4 v1, 0x1

    iget-object v2, p0, Lluc;->a:Ljava/lang/Integer;

    .line 763
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 765
    :cond_0
    iget-object v1, p0, Lluc;->b:Llku;

    if-eqz v1, :cond_1

    .line 766
    const/4 v1, 0x2

    iget-object v2, p0, Lluc;->b:Llku;

    .line 767
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    :cond_1
    iget-object v1, p0, Lluc;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 770
    const/4 v1, 0x3

    iget-object v2, p0, Lluc;->c:Ljava/lang/String;

    .line 771
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 773
    :cond_2
    iget-object v1, p0, Lluc;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 774
    const/4 v1, 0x4

    iget-object v2, p0, Lluc;->d:Ljava/lang/String;

    .line 775
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    :cond_3
    iget-object v1, p0, Lluc;->e:Llku;

    if-eqz v1, :cond_4

    .line 778
    const/4 v1, 0x5

    iget-object v2, p0, Lluc;->e:Llku;

    .line 779
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 781
    :cond_4
    return v0
.end method
