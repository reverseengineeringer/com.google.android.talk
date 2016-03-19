.class public final Lixo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lixo;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9599
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10604
    iput-object v0, p0, Lixo;->a:Ljava/lang/Integer;

    .line 10605
    iput-object v0, p0, Lixo;->b:Ljava/lang/String;

    .line 10606
    iput-object v0, p0, Lixo;->c:Ljava/lang/Boolean;

    .line 10607
    iput-object v0, p0, Lixo;->d:Ljava/lang/Long;

    .line 10608
    iput-object v0, p0, Lixo;->e:Ljava/lang/String;

    .line 10609
    iput-object v0, p0, Lixo;->eD:Llyd;

    .line 10610
    const/4 v0, -0x1

    iput v0, p0, Lixo;->eE:I

    .line 9601
    return-void
.end method

.method public static d()[Lixo;
    .locals 2

    .prologue
    .line 9571
    sget-object v0, Lixo;->f:[Lixo;

    if-nez v0, :cond_1

    .line 9572
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 9574
    :try_start_0
    sget-object v0, Lixo;->f:[Lixo;

    if-nez v0, :cond_0

    .line 9575
    const/4 v0, 0x0

    new-array v0, v0, [Lixo;

    sput-object v0, Lixo;->f:[Lixo;

    .line 9577
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9579
    :cond_1
    sget-object v0, Lixo;->f:[Lixo;

    return-object v0

    .line 9577
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
    .locals 2

    .prologue
    .line 10666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10667
    sparse-switch v0, :sswitch_data_0

    .line 10671
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10672
    :sswitch_0
    return-object p0

    .line 10677
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 10678
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10687
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lixo;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 10693
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixo;->b:Ljava/lang/String;

    goto :goto_0

    .line 10697
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lixo;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 10701
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lixo;->d:Ljava/lang/Long;

    goto :goto_0

    .line 10705
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixo;->e:Ljava/lang/String;

    goto :goto_0

    .line 10667
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 10678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 9617
    iget-object v0, p0, Lixo;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 9618
    const/4 v0, 0x1

    iget-object v1, p0, Lixo;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9620
    :cond_0
    iget-object v0, p0, Lixo;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9621
    const/4 v0, 0x2

    iget-object v1, p0, Lixo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9623
    :cond_1
    iget-object v0, p0, Lixo;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 9624
    const/4 v0, 0x3

    iget-object v1, p0, Lixo;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9626
    :cond_2
    iget-object v0, p0, Lixo;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 9627
    const/4 v0, 0x4

    iget-object v1, p0, Lixo;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 9629
    :cond_3
    iget-object v0, p0, Lixo;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 9630
    const/4 v0, 0x5

    iget-object v1, p0, Lixo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9632
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9633
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 9637
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9638
    iget-object v1, p0, Lixo;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 9639
    const/4 v1, 0x1

    iget-object v2, p0, Lixo;->a:Ljava/lang/Integer;

    .line 9640
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9642
    :cond_0
    iget-object v1, p0, Lixo;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9643
    const/4 v1, 0x2

    iget-object v2, p0, Lixo;->b:Ljava/lang/String;

    .line 9644
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9646
    :cond_1
    iget-object v1, p0, Lixo;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 9647
    const/4 v1, 0x3

    iget-object v2, p0, Lixo;->c:Ljava/lang/Boolean;

    .line 9648
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9648
    add-int/2addr v0, v1

    .line 9650
    :cond_2
    iget-object v1, p0, Lixo;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 9651
    const/4 v1, 0x4

    iget-object v2, p0, Lixo;->d:Ljava/lang/Long;

    .line 9652
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9654
    :cond_3
    iget-object v1, p0, Lixo;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 9655
    const/4 v1, 0x5

    iget-object v2, p0, Lixo;->e:Ljava/lang/String;

    .line 9656
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9658
    :cond_4
    return v0
.end method
