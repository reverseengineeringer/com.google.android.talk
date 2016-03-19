.class public final Lkjm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile j:[Lkjm;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lkjn;

.field public i:Lkjs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3624
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4629
    iput-object v0, p0, Lkjm;->a:Ljava/lang/Integer;

    .line 4630
    iput-object v0, p0, Lkjm;->b:Ljava/lang/Integer;

    .line 4631
    iput-object v0, p0, Lkjm;->c:Ljava/lang/String;

    .line 4632
    iput-object v0, p0, Lkjm;->d:Ljava/lang/String;

    .line 4633
    iput-object v0, p0, Lkjm;->e:Ljava/lang/String;

    .line 4634
    iput-object v0, p0, Lkjm;->f:Ljava/lang/String;

    .line 4635
    iput-object v0, p0, Lkjm;->g:Ljava/lang/String;

    .line 4636
    iput-object v0, p0, Lkjm;->h:Lkjn;

    .line 4637
    iput-object v0, p0, Lkjm;->i:Lkjs;

    .line 4638
    iput-object v0, p0, Lkjm;->eD:Llyd;

    .line 4639
    const/4 v0, -0x1

    iput v0, p0, Lkjm;->eE:I

    .line 3626
    return-void
.end method

.method public static d()[Lkjm;
    .locals 2

    .prologue
    .line 3584
    sget-object v0, Lkjm;->j:[Lkjm;

    if-nez v0, :cond_1

    .line 3585
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3587
    :try_start_0
    sget-object v0, Lkjm;->j:[Lkjm;

    if-nez v0, :cond_0

    .line 3588
    const/4 v0, 0x0

    new-array v0, v0, [Lkjm;

    sput-object v0, Lkjm;->j:[Lkjm;

    .line 3590
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3592
    :cond_1
    sget-object v0, Lkjm;->j:[Lkjm;

    return-object v0

    .line 3590
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
    .line 4723
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4724
    sparse-switch v0, :sswitch_data_0

    .line 4728
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4729
    :sswitch_0
    return-object p0

    .line 4734
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4735
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4738
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkjm;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4744
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4745
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4750
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkjm;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 4756
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjm;->c:Ljava/lang/String;

    goto :goto_0

    .line 4760
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjm;->d:Ljava/lang/String;

    goto :goto_0

    .line 4764
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjm;->e:Ljava/lang/String;

    goto :goto_0

    .line 4768
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjm;->f:Ljava/lang/String;

    goto :goto_0

    .line 4772
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjm;->g:Ljava/lang/String;

    goto :goto_0

    .line 4776
    :sswitch_8
    iget-object v0, p0, Lkjm;->h:Lkjn;

    if-nez v0, :cond_1

    .line 4777
    new-instance v0, Lkjn;

    invoke-direct {v0}, Lkjn;-><init>()V

    iput-object v0, p0, Lkjm;->h:Lkjn;

    .line 4779
    :cond_1
    iget-object v0, p0, Lkjm;->h:Lkjn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4783
    :sswitch_9
    iget-object v0, p0, Lkjm;->i:Lkjs;

    if-nez v0, :cond_2

    .line 4784
    new-instance v0, Lkjs;

    invoke-direct {v0}, Lkjs;-><init>()V

    iput-object v0, p0, Lkjm;->i:Lkjs;

    .line 4786
    :cond_2
    iget-object v0, p0, Lkjm;->i:Lkjs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4724
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch

    .line 4735
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4745
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3646
    iget-object v0, p0, Lkjm;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3647
    const/4 v0, 0x1

    iget-object v1, p0, Lkjm;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3649
    :cond_0
    iget-object v0, p0, Lkjm;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3650
    const/4 v0, 0x2

    iget-object v1, p0, Lkjm;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3652
    :cond_1
    iget-object v0, p0, Lkjm;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3653
    const/4 v0, 0x3

    iget-object v1, p0, Lkjm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3655
    :cond_2
    iget-object v0, p0, Lkjm;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3656
    const/4 v0, 0x4

    iget-object v1, p0, Lkjm;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3658
    :cond_3
    iget-object v0, p0, Lkjm;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3659
    const/4 v0, 0x5

    iget-object v1, p0, Lkjm;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3661
    :cond_4
    iget-object v0, p0, Lkjm;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3662
    const/4 v0, 0x6

    iget-object v1, p0, Lkjm;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3664
    :cond_5
    iget-object v0, p0, Lkjm;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3665
    const/4 v0, 0x7

    iget-object v1, p0, Lkjm;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3667
    :cond_6
    iget-object v0, p0, Lkjm;->h:Lkjn;

    if-eqz v0, :cond_7

    .line 3668
    const/16 v0, 0x8

    iget-object v1, p0, Lkjm;->h:Lkjn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3670
    :cond_7
    iget-object v0, p0, Lkjm;->i:Lkjs;

    if-eqz v0, :cond_8

    .line 3671
    const/16 v0, 0x9

    iget-object v1, p0, Lkjm;->i:Lkjs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3673
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3674
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3678
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3679
    iget-object v1, p0, Lkjm;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3680
    const/4 v1, 0x1

    iget-object v2, p0, Lkjm;->a:Ljava/lang/Integer;

    .line 3681
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3683
    :cond_0
    iget-object v1, p0, Lkjm;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3684
    const/4 v1, 0x2

    iget-object v2, p0, Lkjm;->b:Ljava/lang/Integer;

    .line 3685
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3687
    :cond_1
    iget-object v1, p0, Lkjm;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3688
    const/4 v1, 0x3

    iget-object v2, p0, Lkjm;->c:Ljava/lang/String;

    .line 3689
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3691
    :cond_2
    iget-object v1, p0, Lkjm;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3692
    const/4 v1, 0x4

    iget-object v2, p0, Lkjm;->d:Ljava/lang/String;

    .line 3693
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3695
    :cond_3
    iget-object v1, p0, Lkjm;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3696
    const/4 v1, 0x5

    iget-object v2, p0, Lkjm;->e:Ljava/lang/String;

    .line 3697
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3699
    :cond_4
    iget-object v1, p0, Lkjm;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3700
    const/4 v1, 0x6

    iget-object v2, p0, Lkjm;->f:Ljava/lang/String;

    .line 3701
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3703
    :cond_5
    iget-object v1, p0, Lkjm;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 3704
    const/4 v1, 0x7

    iget-object v2, p0, Lkjm;->g:Ljava/lang/String;

    .line 3705
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3707
    :cond_6
    iget-object v1, p0, Lkjm;->h:Lkjn;

    if-eqz v1, :cond_7

    .line 3708
    const/16 v1, 0x8

    iget-object v2, p0, Lkjm;->h:Lkjn;

    .line 3709
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3711
    :cond_7
    iget-object v1, p0, Lkjm;->i:Lkjs;

    if-eqz v1, :cond_8

    .line 3712
    const/16 v1, 0x9

    iget-object v2, p0, Lkjm;->i:Lkjs;

    .line 3713
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3715
    :cond_8
    return v0
.end method
