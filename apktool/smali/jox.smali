.class public final Ljox;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljox;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljox;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljow;

.field public c:Ljou;

.field public d:Ljoy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 598
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1603
    iput-object v0, p0, Ljox;->a:Ljava/lang/String;

    .line 1604
    iput-object v0, p0, Ljox;->b:Ljow;

    .line 1605
    iput-object v0, p0, Ljox;->c:Ljou;

    .line 1606
    iput-object v0, p0, Ljox;->d:Ljoy;

    .line 1607
    iput-object v0, p0, Ljox;->eD:Llyd;

    .line 1608
    const/4 v0, -0x1

    iput v0, p0, Ljox;->eE:I

    .line 600
    return-void
.end method

.method public static d()[Ljox;
    .locals 2

    .prologue
    .line 573
    sget-object v0, Ljox;->e:[Ljox;

    if-nez v0, :cond_1

    .line 574
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    sget-object v0, Ljox;->e:[Ljox;

    if-nez v0, :cond_0

    .line 577
    const/4 v0, 0x0

    new-array v0, v0, [Ljox;

    sput-object v0, Ljox;->e:[Ljox;

    .line 579
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_1
    sget-object v0, Ljox;->e:[Ljox;

    return-object v0

    .line 579
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
    .line 1657
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1658
    sparse-switch v0, :sswitch_data_0

    .line 1662
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    :sswitch_0
    return-object p0

    .line 1668
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljox;->a:Ljava/lang/String;

    goto :goto_0

    .line 1672
    :sswitch_2
    iget-object v0, p0, Ljox;->c:Ljou;

    if-nez v0, :cond_1

    .line 1673
    new-instance v0, Ljou;

    invoke-direct {v0}, Ljou;-><init>()V

    iput-object v0, p0, Ljox;->c:Ljou;

    .line 1675
    :cond_1
    iget-object v0, p0, Ljox;->c:Ljou;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1679
    :sswitch_3
    iget-object v0, p0, Ljox;->d:Ljoy;

    if-nez v0, :cond_2

    .line 1680
    new-instance v0, Ljoy;

    invoke-direct {v0}, Ljoy;-><init>()V

    iput-object v0, p0, Ljox;->d:Ljoy;

    .line 1682
    :cond_2
    iget-object v0, p0, Ljox;->d:Ljoy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1686
    :sswitch_4
    iget-object v0, p0, Ljox;->b:Ljow;

    if-nez v0, :cond_3

    .line 1687
    new-instance v0, Ljow;

    invoke-direct {v0}, Ljow;-><init>()V

    iput-object v0, p0, Ljox;->b:Ljow;

    .line 1689
    :cond_3
    iget-object v0, p0, Ljox;->b:Ljow;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1658
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Ljox;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 616
    const/4 v0, 0x1

    iget-object v1, p0, Ljox;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 618
    :cond_0
    iget-object v0, p0, Ljox;->c:Ljou;

    if-eqz v0, :cond_1

    .line 619
    const/4 v0, 0x2

    iget-object v1, p0, Ljox;->c:Ljou;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 621
    :cond_1
    iget-object v0, p0, Ljox;->d:Ljoy;

    if-eqz v0, :cond_2

    .line 622
    const/4 v0, 0x3

    iget-object v1, p0, Ljox;->d:Ljoy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 624
    :cond_2
    iget-object v0, p0, Ljox;->b:Ljow;

    if-eqz v0, :cond_3

    .line 625
    const/4 v0, 0x4

    iget-object v1, p0, Ljox;->b:Ljow;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 627
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 628
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 632
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 633
    iget-object v1, p0, Ljox;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 634
    const/4 v1, 0x1

    iget-object v2, p0, Ljox;->a:Ljava/lang/String;

    .line 635
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 637
    :cond_0
    iget-object v1, p0, Ljox;->c:Ljou;

    if-eqz v1, :cond_1

    .line 638
    const/4 v1, 0x2

    iget-object v2, p0, Ljox;->c:Ljou;

    .line 639
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 641
    :cond_1
    iget-object v1, p0, Ljox;->d:Ljoy;

    if-eqz v1, :cond_2

    .line 642
    const/4 v1, 0x3

    iget-object v2, p0, Ljox;->d:Ljoy;

    .line 643
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 645
    :cond_2
    iget-object v1, p0, Ljox;->b:Ljow;

    if-eqz v1, :cond_3

    .line 646
    const/4 v1, 0x4

    iget-object v2, p0, Ljox;->b:Ljow;

    .line 647
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 649
    :cond_3
    return v0
.end method
