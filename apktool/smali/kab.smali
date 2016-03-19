.class public final Lkab;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkab;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkab;


# instance fields
.field public a:Lkaa;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29315
    invoke-direct {p0}, Llyb;-><init>()V

    .line 30320
    iput-object v0, p0, Lkab;->a:Lkaa;

    .line 30321
    iput-object v0, p0, Lkab;->b:Ljava/lang/Boolean;

    .line 30322
    iput-object v0, p0, Lkab;->eD:Llyd;

    .line 30323
    const/4 v0, -0x1

    iput v0, p0, Lkab;->eE:I

    .line 29317
    return-void
.end method

.method public static d()[Lkab;
    .locals 2

    .prologue
    .line 29296
    sget-object v0, Lkab;->c:[Lkab;

    if-nez v0, :cond_1

    .line 29297
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 29299
    :try_start_0
    sget-object v0, Lkab;->c:[Lkab;

    if-nez v0, :cond_0

    .line 29300
    const/4 v0, 0x0

    new-array v0, v0, [Lkab;

    sput-object v0, Lkab;->c:[Lkab;

    .line 29302
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29304
    :cond_1
    sget-object v0, Lkab;->c:[Lkab;

    return-object v0

    .line 29302
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
    .line 31358
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 31359
    sparse-switch v0, :sswitch_data_0

    .line 31363
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31364
    :sswitch_0
    return-object p0

    .line 31369
    :sswitch_1
    iget-object v0, p0, Lkab;->a:Lkaa;

    if-nez v0, :cond_1

    .line 31370
    new-instance v0, Lkaa;

    invoke-direct {v0}, Lkaa;-><init>()V

    iput-object v0, p0, Lkab;->a:Lkaa;

    .line 31372
    :cond_1
    iget-object v0, p0, Lkab;->a:Lkaa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 31376
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkab;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 31359
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 29330
    iget-object v0, p0, Lkab;->a:Lkaa;

    if-eqz v0, :cond_0

    .line 29331
    const/4 v0, 0x1

    iget-object v1, p0, Lkab;->a:Lkaa;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 29333
    :cond_0
    iget-object v0, p0, Lkab;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 29334
    const/4 v0, 0x2

    iget-object v1, p0, Lkab;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 29336
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 29337
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 29341
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 29342
    iget-object v1, p0, Lkab;->a:Lkaa;

    if-eqz v1, :cond_0

    .line 29343
    const/4 v1, 0x1

    iget-object v2, p0, Lkab;->a:Lkaa;

    .line 29344
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29346
    :cond_0
    iget-object v1, p0, Lkab;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 29347
    const/4 v1, 0x2

    iget-object v2, p0, Lkab;->b:Ljava/lang/Boolean;

    .line 29348
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 29348
    add-int/2addr v0, v1

    .line 29350
    :cond_1
    return v0
.end method
