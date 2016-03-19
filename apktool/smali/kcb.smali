.class public final Lkcb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Lkcb;


# instance fields
.field public a:Lmed;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3311
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4316
    iput-object v0, p0, Lkcb;->a:Lmed;

    .line 4317
    iput-object v0, p0, Lkcb;->eD:Llyd;

    .line 4318
    const/4 v0, -0x1

    iput v0, p0, Lkcb;->eE:I

    .line 3313
    return-void
.end method

.method public static d()[Lkcb;
    .locals 2

    .prologue
    .line 3295
    sget-object v0, Lkcb;->b:[Lkcb;

    if-nez v0, :cond_1

    .line 3296
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3298
    :try_start_0
    sget-object v0, Lkcb;->b:[Lkcb;

    if-nez v0, :cond_0

    .line 3299
    const/4 v0, 0x0

    new-array v0, v0, [Lkcb;

    sput-object v0, Lkcb;->b:[Lkcb;

    .line 3301
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3303
    :cond_1
    sget-object v0, Lkcb;->b:[Lkcb;

    return-object v0

    .line 3301
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
    .line 4346
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4347
    sparse-switch v0, :sswitch_data_0

    .line 4351
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4352
    :sswitch_0
    return-object p0

    .line 4357
    :sswitch_1
    iget-object v0, p0, Lkcb;->a:Lmed;

    if-nez v0, :cond_1

    .line 4358
    new-instance v0, Lmed;

    invoke-direct {v0}, Lmed;-><init>()V

    iput-object v0, p0, Lkcb;->a:Lmed;

    .line 4360
    :cond_1
    iget-object v0, p0, Lkcb;->a:Lmed;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4347
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3325
    iget-object v0, p0, Lkcb;->a:Lmed;

    if-eqz v0, :cond_0

    .line 3326
    const/4 v0, 0x1

    iget-object v1, p0, Lkcb;->a:Lmed;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3328
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3329
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3333
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3334
    iget-object v1, p0, Lkcb;->a:Lmed;

    if-eqz v1, :cond_0

    .line 3335
    const/4 v1, 0x1

    iget-object v2, p0, Lkcb;->a:Lmed;

    .line 3336
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3338
    :cond_0
    return v0
.end method
