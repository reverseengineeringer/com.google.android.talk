.class public final Ljyk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljyk;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22409
    invoke-direct {p0}, Llyb;-><init>()V

    .line 23414
    iput-object v0, p0, Ljyk;->a:Ljava/lang/Long;

    .line 23415
    iput-object v0, p0, Ljyk;->b:Ljava/lang/Integer;

    .line 23416
    iput-object v0, p0, Ljyk;->eD:Llyd;

    .line 23417
    const/4 v0, -0x1

    iput v0, p0, Ljyk;->eE:I

    .line 22411
    return-void
.end method

.method public static d()[Ljyk;
    .locals 2

    .prologue
    .line 22390
    sget-object v0, Ljyk;->c:[Ljyk;

    if-nez v0, :cond_1

    .line 22391
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22393
    :try_start_0
    sget-object v0, Ljyk;->c:[Ljyk;

    if-nez v0, :cond_0

    .line 22394
    const/4 v0, 0x0

    new-array v0, v0, [Ljyk;

    sput-object v0, Ljyk;->c:[Ljyk;

    .line 22396
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22398
    :cond_1
    sget-object v0, Ljyk;->c:[Ljyk;

    return-object v0

    .line 22396
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
    .line 23452
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 23453
    sparse-switch v0, :sswitch_data_0

    .line 23457
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23458
    :sswitch_0
    return-object p0

    .line 23463
    :sswitch_1
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljyk;->a:Ljava/lang/Long;

    goto :goto_0

    .line 23467
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 23468
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 23472
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljyk;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 23453
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 23468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 22424
    iget-object v0, p0, Ljyk;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 22425
    const/4 v0, 0x1

    iget-object v1, p0, Ljyk;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 22427
    :cond_0
    iget-object v0, p0, Ljyk;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 22428
    const/4 v0, 0x2

    iget-object v1, p0, Ljyk;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 22430
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 22431
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 22435
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 22436
    iget-object v1, p0, Ljyk;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 22437
    const/4 v1, 0x1

    iget-object v2, p0, Ljyk;->a:Ljava/lang/Long;

    .line 22438
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22440
    :cond_0
    iget-object v1, p0, Ljyk;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 22441
    const/4 v1, 0x2

    iget-object v2, p0, Ljyk;->b:Ljava/lang/Integer;

    .line 22442
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22444
    :cond_1
    return v0
.end method
