.class public final Ljbz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbz;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile k:[Ljbz;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5658
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6663
    iput-object v0, p0, Ljbz;->a:Ljava/lang/String;

    .line 6664
    iput-object v0, p0, Ljbz;->b:Ljava/lang/String;

    .line 6665
    iput-object v0, p0, Ljbz;->c:Ljava/lang/String;

    .line 6666
    iput-object v0, p0, Ljbz;->d:Ljava/lang/Integer;

    .line 6667
    iput-object v0, p0, Ljbz;->e:Ljava/lang/Integer;

    .line 6668
    iput-object v0, p0, Ljbz;->f:Ljava/lang/String;

    .line 6669
    iput-object v0, p0, Ljbz;->g:Ljava/lang/Boolean;

    .line 6670
    iput-object v0, p0, Ljbz;->h:Ljava/lang/String;

    .line 6671
    iput-object v0, p0, Ljbz;->i:Ljava/lang/Integer;

    .line 6672
    iput-object v0, p0, Ljbz;->j:Ljava/lang/Integer;

    .line 6673
    iput-object v0, p0, Ljbz;->eD:Llyd;

    .line 6674
    const/4 v0, -0x1

    iput v0, p0, Ljbz;->eE:I

    .line 5660
    return-void
.end method

.method public static d()[Ljbz;
    .locals 2

    .prologue
    .line 5615
    sget-object v0, Ljbz;->k:[Ljbz;

    if-nez v0, :cond_1

    .line 5616
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5618
    :try_start_0
    sget-object v0, Ljbz;->k:[Ljbz;

    if-nez v0, :cond_0

    .line 5619
    const/4 v0, 0x0

    new-array v0, v0, [Ljbz;

    sput-object v0, Ljbz;->k:[Ljbz;

    .line 5621
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5623
    :cond_1
    sget-object v0, Ljbz;->k:[Ljbz;

    return-object v0

    .line 5621
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
    .line 7765
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7766
    sparse-switch v0, :sswitch_data_0

    .line 7770
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7771
    :sswitch_0
    return-object p0

    .line 7776
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbz;->a:Ljava/lang/String;

    goto :goto_0

    .line 7780
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbz;->b:Ljava/lang/String;

    goto :goto_0

    .line 7784
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbz;->c:Ljava/lang/String;

    goto :goto_0

    .line 7788
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbz;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 7792
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbz;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 7796
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbz;->f:Ljava/lang/String;

    goto :goto_0

    .line 7800
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljbz;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 7804
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbz;->h:Ljava/lang/String;

    goto :goto_0

    .line 7808
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbz;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 7812
    :sswitch_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbz;->j:Ljava/lang/Integer;

    goto :goto_0

    .line 7766
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 5681
    iget-object v0, p0, Ljbz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5682
    const/4 v0, 0x1

    iget-object v1, p0, Ljbz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5684
    :cond_0
    iget-object v0, p0, Ljbz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5685
    const/4 v0, 0x2

    iget-object v1, p0, Ljbz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5687
    :cond_1
    iget-object v0, p0, Ljbz;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5688
    const/4 v0, 0x3

    iget-object v1, p0, Ljbz;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5690
    :cond_2
    iget-object v0, p0, Ljbz;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 5691
    const/4 v0, 0x4

    iget-object v1, p0, Ljbz;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5693
    :cond_3
    iget-object v0, p0, Ljbz;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 5694
    const/4 v0, 0x5

    iget-object v1, p0, Ljbz;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5696
    :cond_4
    iget-object v0, p0, Ljbz;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 5697
    const/4 v0, 0x6

    iget-object v1, p0, Ljbz;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5699
    :cond_5
    iget-object v0, p0, Ljbz;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 5700
    const/4 v0, 0x7

    iget-object v1, p0, Ljbz;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 5702
    :cond_6
    iget-object v0, p0, Ljbz;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 5703
    const/16 v0, 0x8

    iget-object v1, p0, Ljbz;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5705
    :cond_7
    iget-object v0, p0, Ljbz;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 5706
    const/16 v0, 0x9

    iget-object v1, p0, Ljbz;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5708
    :cond_8
    iget-object v0, p0, Ljbz;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 5709
    const/16 v0, 0xa

    iget-object v1, p0, Ljbz;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5711
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5712
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5716
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5717
    iget-object v1, p0, Ljbz;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5718
    const/4 v1, 0x1

    iget-object v2, p0, Ljbz;->a:Ljava/lang/String;

    .line 5719
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5721
    :cond_0
    iget-object v1, p0, Ljbz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5722
    const/4 v1, 0x2

    iget-object v2, p0, Ljbz;->b:Ljava/lang/String;

    .line 5723
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5725
    :cond_1
    iget-object v1, p0, Ljbz;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5726
    const/4 v1, 0x3

    iget-object v2, p0, Ljbz;->c:Ljava/lang/String;

    .line 5727
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5729
    :cond_2
    iget-object v1, p0, Ljbz;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 5730
    const/4 v1, 0x4

    iget-object v2, p0, Ljbz;->d:Ljava/lang/Integer;

    .line 5731
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5733
    :cond_3
    iget-object v1, p0, Ljbz;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 5734
    const/4 v1, 0x5

    iget-object v2, p0, Ljbz;->e:Ljava/lang/Integer;

    .line 5735
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5737
    :cond_4
    iget-object v1, p0, Ljbz;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 5738
    const/4 v1, 0x6

    iget-object v2, p0, Ljbz;->f:Ljava/lang/String;

    .line 5739
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5741
    :cond_5
    iget-object v1, p0, Ljbz;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 5742
    const/4 v1, 0x7

    iget-object v2, p0, Ljbz;->g:Ljava/lang/Boolean;

    .line 5743
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 5743
    add-int/2addr v0, v1

    .line 5745
    :cond_6
    iget-object v1, p0, Ljbz;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 5746
    const/16 v1, 0x8

    iget-object v2, p0, Ljbz;->h:Ljava/lang/String;

    .line 5747
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5749
    :cond_7
    iget-object v1, p0, Ljbz;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 5750
    const/16 v1, 0x9

    iget-object v2, p0, Ljbz;->i:Ljava/lang/Integer;

    .line 5751
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5753
    :cond_8
    iget-object v1, p0, Ljbz;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 5754
    const/16 v1, 0xa

    iget-object v2, p0, Ljbz;->j:Ljava/lang/Integer;

    .line 5755
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5757
    :cond_9
    return v0
.end method
