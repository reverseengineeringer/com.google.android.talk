.class public final Ljck;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljck;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljck;


# instance fields
.field public a:Ljbn;

.field public b:Ljas;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8293
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9298
    iput-object v0, p0, Ljck;->a:Ljbn;

    .line 9299
    iput-object v0, p0, Ljck;->b:Ljas;

    .line 9300
    iput-object v0, p0, Ljck;->c:Ljava/lang/String;

    .line 9301
    iput-object v0, p0, Ljck;->d:Ljava/lang/Boolean;

    .line 9302
    iput-object v0, p0, Ljck;->eD:Llyd;

    .line 9303
    const/4 v0, -0x1

    iput v0, p0, Ljck;->eE:I

    .line 8295
    return-void
.end method

.method public static d()[Ljck;
    .locals 2

    .prologue
    .line 8268
    sget-object v0, Ljck;->e:[Ljck;

    if-nez v0, :cond_1

    .line 8269
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8271
    :try_start_0
    sget-object v0, Ljck;->e:[Ljck;

    if-nez v0, :cond_0

    .line 8272
    const/4 v0, 0x0

    new-array v0, v0, [Ljck;

    sput-object v0, Ljck;->e:[Ljck;

    .line 8274
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8276
    :cond_1
    sget-object v0, Ljck;->e:[Ljck;

    return-object v0

    .line 8274
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
    .line 10352
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10353
    sparse-switch v0, :sswitch_data_0

    .line 10357
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10358
    :sswitch_0
    return-object p0

    .line 10363
    :sswitch_1
    iget-object v0, p0, Ljck;->a:Ljbn;

    if-nez v0, :cond_1

    .line 10364
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljck;->a:Ljbn;

    .line 10366
    :cond_1
    iget-object v0, p0, Ljck;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10370
    :sswitch_2
    iget-object v0, p0, Ljck;->b:Ljas;

    if-nez v0, :cond_2

    .line 10371
    new-instance v0, Ljas;

    invoke-direct {v0}, Ljas;-><init>()V

    iput-object v0, p0, Ljck;->b:Ljas;

    .line 10373
    :cond_2
    iget-object v0, p0, Ljck;->b:Ljas;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10377
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljck;->c:Ljava/lang/String;

    goto :goto_0

    .line 10381
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljck;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 10353
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 8310
    iget-object v0, p0, Ljck;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 8311
    const/4 v0, 0x1

    iget-object v1, p0, Ljck;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8313
    :cond_0
    iget-object v0, p0, Ljck;->b:Ljas;

    if-eqz v0, :cond_1

    .line 8314
    const/4 v0, 0x2

    iget-object v1, p0, Ljck;->b:Ljas;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8316
    :cond_1
    iget-object v0, p0, Ljck;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8317
    const/4 v0, 0x3

    iget-object v1, p0, Ljck;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8319
    :cond_2
    iget-object v0, p0, Ljck;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 8320
    const/4 v0, 0x4

    iget-object v1, p0, Ljck;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 8322
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8323
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8327
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8328
    iget-object v1, p0, Ljck;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 8329
    const/4 v1, 0x1

    iget-object v2, p0, Ljck;->a:Ljbn;

    .line 8330
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8332
    :cond_0
    iget-object v1, p0, Ljck;->b:Ljas;

    if-eqz v1, :cond_1

    .line 8333
    const/4 v1, 0x2

    iget-object v2, p0, Ljck;->b:Ljas;

    .line 8334
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8336
    :cond_1
    iget-object v1, p0, Ljck;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8337
    const/4 v1, 0x3

    iget-object v2, p0, Ljck;->c:Ljava/lang/String;

    .line 8338
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8340
    :cond_2
    iget-object v1, p0, Ljck;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 8341
    const/4 v1, 0x4

    iget-object v2, p0, Ljck;->d:Ljava/lang/Boolean;

    .line 8342
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 8342
    add-int/2addr v0, v1

    .line 8344
    :cond_3
    return v0
.end method
