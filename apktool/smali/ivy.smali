.class public final Livy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Livy;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8553
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9558
    iput-object v0, p0, Livy;->a:Lixc;

    .line 9559
    iput-object v0, p0, Livy;->b:Ljava/lang/String;

    .line 9560
    iput-object v0, p0, Livy;->c:Ljava/lang/String;

    .line 9561
    iput-object v0, p0, Livy;->d:Ljava/lang/String;

    .line 9562
    iput-object v0, p0, Livy;->eD:Llyd;

    .line 9563
    const/4 v0, -0x1

    iput v0, p0, Livy;->eE:I

    .line 8555
    return-void
.end method

.method public static d()[Livy;
    .locals 2

    .prologue
    .line 8528
    sget-object v0, Livy;->e:[Livy;

    if-nez v0, :cond_1

    .line 8529
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8531
    :try_start_0
    sget-object v0, Livy;->e:[Livy;

    if-nez v0, :cond_0

    .line 8532
    const/4 v0, 0x0

    new-array v0, v0, [Livy;

    sput-object v0, Livy;->e:[Livy;

    .line 8534
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8536
    :cond_1
    sget-object v0, Livy;->e:[Livy;

    return-object v0

    .line 8534
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
    .line 9612
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9613
    sparse-switch v0, :sswitch_data_0

    .line 9617
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9618
    :sswitch_0
    return-object p0

    .line 9623
    :sswitch_1
    iget-object v0, p0, Livy;->a:Lixc;

    if-nez v0, :cond_1

    .line 9624
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Livy;->a:Lixc;

    .line 9626
    :cond_1
    iget-object v0, p0, Livy;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9630
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livy;->b:Ljava/lang/String;

    goto :goto_0

    .line 9634
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livy;->c:Ljava/lang/String;

    goto :goto_0

    .line 9638
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livy;->d:Ljava/lang/String;

    goto :goto_0

    .line 9613
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
    .line 8570
    iget-object v0, p0, Livy;->a:Lixc;

    if-eqz v0, :cond_0

    .line 8571
    const/4 v0, 0x1

    iget-object v1, p0, Livy;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8573
    :cond_0
    iget-object v0, p0, Livy;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8574
    const/4 v0, 0x2

    iget-object v1, p0, Livy;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8576
    :cond_1
    iget-object v0, p0, Livy;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8577
    const/4 v0, 0x3

    iget-object v1, p0, Livy;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8579
    :cond_2
    iget-object v0, p0, Livy;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8580
    const/4 v0, 0x4

    iget-object v1, p0, Livy;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8582
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8583
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8587
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8588
    iget-object v1, p0, Livy;->a:Lixc;

    if-eqz v1, :cond_0

    .line 8589
    const/4 v1, 0x1

    iget-object v2, p0, Livy;->a:Lixc;

    .line 8590
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8592
    :cond_0
    iget-object v1, p0, Livy;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8593
    const/4 v1, 0x2

    iget-object v2, p0, Livy;->b:Ljava/lang/String;

    .line 8594
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8596
    :cond_1
    iget-object v1, p0, Livy;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8597
    const/4 v1, 0x3

    iget-object v2, p0, Livy;->c:Ljava/lang/String;

    .line 8598
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8600
    :cond_2
    iget-object v1, p0, Livy;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 8601
    const/4 v1, 0x4

    iget-object v2, p0, Livy;->d:Ljava/lang/String;

    .line 8602
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8604
    :cond_3
    return v0
.end method
