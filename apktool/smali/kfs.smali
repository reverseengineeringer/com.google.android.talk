.class public final Lkfs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkfs;


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13338
    invoke-direct {p0}, Llyb;-><init>()V

    .line 14343
    iput-object v0, p0, Lkfs;->a:Ljxw;

    .line 14344
    iput-object v0, p0, Lkfs;->b:Ljava/lang/Long;

    .line 14345
    iput-object v0, p0, Lkfs;->eD:Llyd;

    .line 14346
    const/4 v0, -0x1

    iput v0, p0, Lkfs;->eE:I

    .line 13340
    return-void
.end method

.method public static d()[Lkfs;
    .locals 2

    .prologue
    .line 13319
    sget-object v0, Lkfs;->c:[Lkfs;

    if-nez v0, :cond_1

    .line 13320
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 13322
    :try_start_0
    sget-object v0, Lkfs;->c:[Lkfs;

    if-nez v0, :cond_0

    .line 13323
    const/4 v0, 0x0

    new-array v0, v0, [Lkfs;

    sput-object v0, Lkfs;->c:[Lkfs;

    .line 13325
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13327
    :cond_1
    sget-object v0, Lkfs;->c:[Lkfs;

    return-object v0

    .line 13325
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
    .line 14381
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 14382
    sparse-switch v0, :sswitch_data_0

    .line 14386
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14387
    :sswitch_0
    return-object p0

    .line 14392
    :sswitch_1
    iget-object v0, p0, Lkfs;->a:Ljxw;

    if-nez v0, :cond_1

    .line 14393
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkfs;->a:Ljxw;

    .line 14395
    :cond_1
    iget-object v0, p0, Lkfs;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14399
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkfs;->b:Ljava/lang/Long;

    goto :goto_0

    .line 14382
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 13353
    iget-object v0, p0, Lkfs;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 13354
    const/4 v0, 0x1

    iget-object v1, p0, Lkfs;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 13356
    :cond_0
    iget-object v0, p0, Lkfs;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 13357
    const/4 v0, 0x2

    iget-object v1, p0, Lkfs;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 13359
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 13360
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 13364
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 13365
    iget-object v1, p0, Lkfs;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 13366
    const/4 v1, 0x1

    iget-object v2, p0, Lkfs;->a:Ljxw;

    .line 13367
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13369
    :cond_0
    iget-object v1, p0, Lkfs;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 13370
    const/4 v1, 0x2

    iget-object v2, p0, Lkfs;->b:Ljava/lang/Long;

    .line 13371
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13373
    :cond_1
    return v0
.end method
