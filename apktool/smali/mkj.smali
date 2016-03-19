.class public final Lmkj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmkj;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 580
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1585
    iput-object v0, p0, Lmkj;->a:Ljava/lang/String;

    .line 1586
    iput-object v0, p0, Lmkj;->b:Ljava/lang/Integer;

    .line 1587
    iput-object v0, p0, Lmkj;->c:Ljava/lang/Integer;

    .line 1588
    iput-object v0, p0, Lmkj;->eD:Llyd;

    .line 1589
    const/4 v0, -0x1

    iput v0, p0, Lmkj;->eE:I

    .line 582
    return-void
.end method

.method public static d()[Lmkj;
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lmkj;->d:[Lmkj;

    if-nez v0, :cond_1

    .line 559
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_0
    sget-object v0, Lmkj;->d:[Lmkj;

    if-nez v0, :cond_0

    .line 562
    const/4 v0, 0x0

    new-array v0, v0, [Lmkj;

    sput-object v0, Lmkj;->d:[Lmkj;

    .line 564
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :cond_1
    sget-object v0, Lmkj;->d:[Lmkj;

    return-object v0

    .line 564
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
    .line 1631
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1632
    sparse-switch v0, :sswitch_data_0

    .line 1636
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1637
    :sswitch_0
    return-object p0

    .line 1642
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkj;->a:Ljava/lang/String;

    goto :goto_0

    .line 1646
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1647
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1650
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmkj;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1656
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmkj;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1632
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lmkj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x1

    iget-object v1, p0, Lmkj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 599
    :cond_0
    iget-object v0, p0, Lmkj;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 600
    const/4 v0, 0x2

    iget-object v1, p0, Lmkj;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 602
    :cond_1
    iget-object v0, p0, Lmkj;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 603
    const/4 v0, 0x3

    iget-object v1, p0, Lmkj;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 605
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 606
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 610
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 611
    iget-object v1, p0, Lmkj;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 612
    const/4 v1, 0x1

    iget-object v2, p0, Lmkj;->a:Ljava/lang/String;

    .line 613
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 615
    :cond_0
    iget-object v1, p0, Lmkj;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 616
    const/4 v1, 0x2

    iget-object v2, p0, Lmkj;->b:Ljava/lang/Integer;

    .line 617
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 619
    :cond_1
    iget-object v1, p0, Lmkj;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 620
    const/4 v1, 0x3

    iget-object v2, p0, Lmkj;->c:Ljava/lang/Integer;

    .line 621
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 623
    :cond_2
    return v0
.end method
