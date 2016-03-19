.class public final Lkau;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkau;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lkau;


# instance fields
.field public a:Ljzh;

.field public b:Ljxw;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27542
    invoke-direct {p0}, Llyb;-><init>()V

    .line 28547
    iput-object v0, p0, Lkau;->a:Ljzh;

    .line 28548
    iput-object v0, p0, Lkau;->b:Ljxw;

    .line 28549
    iput-object v0, p0, Lkau;->c:Ljava/lang/Integer;

    .line 28550
    iput-object v0, p0, Lkau;->eD:Llyd;

    .line 28551
    const/4 v0, -0x1

    iput v0, p0, Lkau;->eE:I

    .line 27544
    return-void
.end method

.method public static d()[Lkau;
    .locals 2

    .prologue
    .line 27520
    sget-object v0, Lkau;->d:[Lkau;

    if-nez v0, :cond_1

    .line 27521
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 27523
    :try_start_0
    sget-object v0, Lkau;->d:[Lkau;

    if-nez v0, :cond_0

    .line 27524
    const/4 v0, 0x0

    new-array v0, v0, [Lkau;

    sput-object v0, Lkau;->d:[Lkau;

    .line 27526
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27528
    :cond_1
    sget-object v0, Lkau;->d:[Lkau;

    return-object v0

    .line 27526
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
    .line 28593
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 28594
    sparse-switch v0, :sswitch_data_0

    .line 28598
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28599
    :sswitch_0
    return-object p0

    .line 28604
    :sswitch_1
    iget-object v0, p0, Lkau;->a:Ljzh;

    if-nez v0, :cond_1

    .line 28605
    new-instance v0, Ljzh;

    invoke-direct {v0}, Ljzh;-><init>()V

    iput-object v0, p0, Lkau;->a:Ljzh;

    .line 28607
    :cond_1
    iget-object v0, p0, Lkau;->a:Ljzh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 28611
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 28612
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 28617
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkau;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 28623
    :sswitch_3
    iget-object v0, p0, Lkau;->b:Ljxw;

    if-nez v0, :cond_2

    .line 28624
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkau;->b:Ljxw;

    .line 28626
    :cond_2
    iget-object v0, p0, Lkau;->b:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 28594
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 28612
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
    .line 27558
    iget-object v0, p0, Lkau;->a:Ljzh;

    if-eqz v0, :cond_0

    .line 27559
    const/4 v0, 0x1

    iget-object v1, p0, Lkau;->a:Ljzh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27561
    :cond_0
    iget-object v0, p0, Lkau;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 27562
    const/4 v0, 0x2

    iget-object v1, p0, Lkau;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 27564
    :cond_1
    iget-object v0, p0, Lkau;->b:Ljxw;

    if-eqz v0, :cond_2

    .line 27565
    const/4 v0, 0x3

    iget-object v1, p0, Lkau;->b:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27567
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 27568
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 27572
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 27573
    iget-object v1, p0, Lkau;->a:Ljzh;

    if-eqz v1, :cond_0

    .line 27574
    const/4 v1, 0x1

    iget-object v2, p0, Lkau;->a:Ljzh;

    .line 27575
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27577
    :cond_0
    iget-object v1, p0, Lkau;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 27578
    const/4 v1, 0x2

    iget-object v2, p0, Lkau;->c:Ljava/lang/Integer;

    .line 27579
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27581
    :cond_1
    iget-object v1, p0, Lkau;->b:Ljxw;

    if-eqz v1, :cond_2

    .line 27582
    const/4 v1, 0x3

    iget-object v2, p0, Lkau;->b:Ljxw;

    .line 27583
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27585
    :cond_2
    return v0
.end method
