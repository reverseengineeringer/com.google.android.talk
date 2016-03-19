.class public final Lixq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lixq;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7612
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8617
    iput-object v0, p0, Lixq;->a:Lixc;

    .line 8618
    iput-object v0, p0, Lixq;->b:Ljava/lang/String;

    .line 8619
    iput-object v0, p0, Lixq;->c:Ljava/lang/String;

    .line 8620
    iput-object v0, p0, Lixq;->eD:Llyd;

    .line 8621
    const/4 v0, -0x1

    iput v0, p0, Lixq;->eE:I

    .line 7614
    return-void
.end method

.method public static d()[Lixq;
    .locals 2

    .prologue
    .line 7590
    sget-object v0, Lixq;->d:[Lixq;

    if-nez v0, :cond_1

    .line 7591
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 7593
    :try_start_0
    sget-object v0, Lixq;->d:[Lixq;

    if-nez v0, :cond_0

    .line 7594
    const/4 v0, 0x0

    new-array v0, v0, [Lixq;

    sput-object v0, Lixq;->d:[Lixq;

    .line 7596
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7598
    :cond_1
    sget-object v0, Lixq;->d:[Lixq;

    return-object v0

    .line 7596
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
    .line 8663
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8664
    sparse-switch v0, :sswitch_data_0

    .line 8668
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8669
    :sswitch_0
    return-object p0

    .line 8674
    :sswitch_1
    iget-object v0, p0, Lixq;->a:Lixc;

    if-nez v0, :cond_1

    .line 8675
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixq;->a:Lixc;

    .line 8677
    :cond_1
    iget-object v0, p0, Lixq;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8681
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixq;->b:Ljava/lang/String;

    goto :goto_0

    .line 8685
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixq;->c:Ljava/lang/String;

    goto :goto_0

    .line 8664
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 7628
    iget-object v0, p0, Lixq;->a:Lixc;

    if-eqz v0, :cond_0

    .line 7629
    const/4 v0, 0x1

    iget-object v1, p0, Lixq;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7631
    :cond_0
    iget-object v0, p0, Lixq;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7632
    const/4 v0, 0x2

    iget-object v1, p0, Lixq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7634
    :cond_1
    iget-object v0, p0, Lixq;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7635
    const/4 v0, 0x3

    iget-object v1, p0, Lixq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7637
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7638
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7642
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7643
    iget-object v1, p0, Lixq;->a:Lixc;

    if-eqz v1, :cond_0

    .line 7644
    const/4 v1, 0x1

    iget-object v2, p0, Lixq;->a:Lixc;

    .line 7645
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7647
    :cond_0
    iget-object v1, p0, Lixq;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7648
    const/4 v1, 0x2

    iget-object v2, p0, Lixq;->b:Ljava/lang/String;

    .line 7649
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7651
    :cond_1
    iget-object v1, p0, Lixq;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7652
    const/4 v1, 0x3

    iget-object v2, p0, Lixq;->c:Ljava/lang/String;

    .line 7653
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7655
    :cond_2
    return v0
.end method
