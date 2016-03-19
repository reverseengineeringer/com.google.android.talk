.class public final Ljkc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljkc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile j:[Ljkc;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljpd;

.field public i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 671
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1676
    iput-object v0, p0, Ljkc;->a:Ljava/lang/String;

    .line 1677
    iput-object v0, p0, Ljkc;->b:Ljava/lang/String;

    .line 1678
    iput-object v0, p0, Ljkc;->c:Ljava/lang/Boolean;

    .line 1679
    iput-object v0, p0, Ljkc;->d:Ljava/lang/Boolean;

    .line 1680
    iput-object v0, p0, Ljkc;->e:Ljava/lang/String;

    .line 1681
    iput-object v0, p0, Ljkc;->f:Ljava/lang/String;

    .line 1682
    iput-object v0, p0, Ljkc;->g:Ljava/lang/String;

    .line 1683
    iput-object v0, p0, Ljkc;->h:Ljpd;

    .line 1684
    iput-object v0, p0, Ljkc;->i:Ljava/lang/Boolean;

    .line 1685
    iput-object v0, p0, Ljkc;->eD:Llyd;

    .line 1686
    const/4 v0, -0x1

    iput v0, p0, Ljkc;->eE:I

    .line 673
    return-void
.end method

.method public static d()[Ljkc;
    .locals 2

    .prologue
    .line 631
    sget-object v0, Ljkc;->j:[Ljkc;

    if-nez v0, :cond_1

    .line 632
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 634
    :try_start_0
    sget-object v0, Ljkc;->j:[Ljkc;

    if-nez v0, :cond_0

    .line 635
    const/4 v0, 0x0

    new-array v0, v0, [Ljkc;

    sput-object v0, Ljkc;->j:[Ljkc;

    .line 637
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    :cond_1
    sget-object v0, Ljkc;->j:[Ljkc;

    return-object v0

    .line 637
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
    .line 4754
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4755
    sparse-switch v0, :sswitch_data_0

    .line 4759
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4760
    :sswitch_0
    return-object p0

    .line 4765
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkc;->a:Ljava/lang/String;

    goto :goto_0

    .line 4769
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkc;->b:Ljava/lang/String;

    goto :goto_0

    .line 4773
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljkc;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 4777
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljkc;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 4781
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkc;->e:Ljava/lang/String;

    goto :goto_0

    .line 4785
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkc;->f:Ljava/lang/String;

    goto :goto_0

    .line 4789
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkc;->g:Ljava/lang/String;

    goto :goto_0

    .line 4793
    :sswitch_8
    iget-object v0, p0, Ljkc;->h:Ljpd;

    if-nez v0, :cond_1

    .line 4794
    new-instance v0, Ljpd;

    invoke-direct {v0}, Ljpd;-><init>()V

    iput-object v0, p0, Ljkc;->h:Ljpd;

    .line 4796
    :cond_1
    iget-object v0, p0, Ljkc;->h:Ljpd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4800
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljkc;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 4755
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 693
    const/4 v0, 0x1

    iget-object v1, p0, Ljkc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 694
    const/4 v0, 0x2

    iget-object v1, p0, Ljkc;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 695
    const/4 v0, 0x3

    iget-object v1, p0, Ljkc;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 696
    const/4 v0, 0x4

    iget-object v1, p0, Ljkc;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 697
    iget-object v0, p0, Ljkc;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 698
    const/4 v0, 0x5

    iget-object v1, p0, Ljkc;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 700
    :cond_0
    iget-object v0, p0, Ljkc;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 701
    const/4 v0, 0x6

    iget-object v1, p0, Ljkc;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 703
    :cond_1
    iget-object v0, p0, Ljkc;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 704
    const/4 v0, 0x7

    iget-object v1, p0, Ljkc;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 706
    :cond_2
    iget-object v0, p0, Ljkc;->h:Ljpd;

    if-eqz v0, :cond_3

    .line 707
    const/16 v0, 0x8

    iget-object v1, p0, Ljkc;->h:Ljpd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 709
    :cond_3
    iget-object v0, p0, Ljkc;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 710
    const/16 v0, 0x9

    iget-object v1, p0, Ljkc;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 712
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 713
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 717
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 718
    const/4 v1, 0x1

    iget-object v2, p0, Ljkc;->a:Ljava/lang/String;

    .line 719
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 720
    const/4 v1, 0x2

    iget-object v2, p0, Ljkc;->b:Ljava/lang/String;

    .line 721
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    const/4 v1, 0x3

    iget-object v2, p0, Ljkc;->c:Ljava/lang/Boolean;

    .line 723
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 723
    add-int/2addr v0, v1

    .line 724
    const/4 v1, 0x4

    iget-object v2, p0, Ljkc;->d:Ljava/lang/Boolean;

    .line 725
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 725
    add-int/2addr v0, v1

    .line 726
    iget-object v1, p0, Ljkc;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 727
    const/4 v1, 0x5

    iget-object v2, p0, Ljkc;->e:Ljava/lang/String;

    .line 728
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    :cond_0
    iget-object v1, p0, Ljkc;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 731
    const/4 v1, 0x6

    iget-object v2, p0, Ljkc;->f:Ljava/lang/String;

    .line 732
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    :cond_1
    iget-object v1, p0, Ljkc;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 735
    const/4 v1, 0x7

    iget-object v2, p0, Ljkc;->g:Ljava/lang/String;

    .line 736
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_2
    iget-object v1, p0, Ljkc;->h:Ljpd;

    if-eqz v1, :cond_3

    .line 739
    const/16 v1, 0x8

    iget-object v2, p0, Ljkc;->h:Ljpd;

    .line 740
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 742
    :cond_3
    iget-object v1, p0, Ljkc;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 743
    const/16 v1, 0x9

    iget-object v2, p0, Ljkc;->i:Ljava/lang/Boolean;

    .line 744
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 744
    add-int/2addr v0, v1

    .line 746
    :cond_4
    return v0
.end method
