.class public final Livo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Livo;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7264
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8269
    iput-object v0, p0, Livo;->a:Lixc;

    .line 8270
    iput-object v0, p0, Livo;->b:Ljava/lang/String;

    .line 8271
    iput-object v0, p0, Livo;->eD:Llyd;

    .line 8272
    const/4 v0, -0x1

    iput v0, p0, Livo;->eE:I

    .line 7266
    return-void
.end method

.method public static d()[Livo;
    .locals 2

    .prologue
    .line 7245
    sget-object v0, Livo;->c:[Livo;

    if-nez v0, :cond_1

    .line 7246
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 7248
    :try_start_0
    sget-object v0, Livo;->c:[Livo;

    if-nez v0, :cond_0

    .line 7249
    const/4 v0, 0x0

    new-array v0, v0, [Livo;

    sput-object v0, Livo;->c:[Livo;

    .line 7251
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7253
    :cond_1
    sget-object v0, Livo;->c:[Livo;

    return-object v0

    .line 7251
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
    .line 8307
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8308
    sparse-switch v0, :sswitch_data_0

    .line 8312
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8313
    :sswitch_0
    return-object p0

    .line 8318
    :sswitch_1
    iget-object v0, p0, Livo;->a:Lixc;

    if-nez v0, :cond_1

    .line 8319
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Livo;->a:Lixc;

    .line 8321
    :cond_1
    iget-object v0, p0, Livo;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8325
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livo;->b:Ljava/lang/String;

    goto :goto_0

    .line 8308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 7279
    iget-object v0, p0, Livo;->a:Lixc;

    if-eqz v0, :cond_0

    .line 7280
    const/4 v0, 0x1

    iget-object v1, p0, Livo;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7282
    :cond_0
    iget-object v0, p0, Livo;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7283
    const/4 v0, 0x2

    iget-object v1, p0, Livo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7285
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7286
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7290
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7291
    iget-object v1, p0, Livo;->a:Lixc;

    if-eqz v1, :cond_0

    .line 7292
    const/4 v1, 0x1

    iget-object v2, p0, Livo;->a:Lixc;

    .line 7293
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7295
    :cond_0
    iget-object v1, p0, Livo;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7296
    const/4 v1, 0x2

    iget-object v2, p0, Livo;->b:Ljava/lang/String;

    .line 7297
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7299
    :cond_1
    return v0
.end method
