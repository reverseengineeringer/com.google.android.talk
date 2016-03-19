.class public final Llip;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llip;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Llip;


# instance fields
.field public a:Llmh;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/String;

.field public d:Llqg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3267
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4272
    iput-object v0, p0, Llip;->a:Llmh;

    .line 4273
    iput-object v0, p0, Llip;->b:Ljava/lang/Float;

    .line 4274
    iput-object v0, p0, Llip;->c:Ljava/lang/String;

    .line 4275
    iput-object v0, p0, Llip;->d:Llqg;

    .line 4276
    iput-object v0, p0, Llip;->eD:Llyd;

    .line 4277
    const/4 v0, -0x1

    iput v0, p0, Llip;->eE:I

    .line 3269
    return-void
.end method

.method public static d()[Llip;
    .locals 2

    .prologue
    .line 3242
    sget-object v0, Llip;->e:[Llip;

    if-nez v0, :cond_1

    .line 3243
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3245
    :try_start_0
    sget-object v0, Llip;->e:[Llip;

    if-nez v0, :cond_0

    .line 3246
    const/4 v0, 0x0

    new-array v0, v0, [Llip;

    sput-object v0, Llip;->e:[Llip;

    .line 3248
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3250
    :cond_1
    sget-object v0, Llip;->e:[Llip;

    return-object v0

    .line 3248
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
    .line 5326
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5327
    sparse-switch v0, :sswitch_data_0

    .line 5331
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5332
    :sswitch_0
    return-object p0

    .line 5337
    :sswitch_1
    iget-object v0, p0, Llip;->a:Llmh;

    if-nez v0, :cond_1

    .line 5338
    new-instance v0, Llmh;

    invoke-direct {v0}, Llmh;-><init>()V

    iput-object v0, p0, Llip;->a:Llmh;

    .line 5340
    :cond_1
    iget-object v0, p0, Llip;->a:Llmh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5344
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llip;->b:Ljava/lang/Float;

    goto :goto_0

    .line 5348
    :sswitch_3
    iget-object v0, p0, Llip;->d:Llqg;

    if-nez v0, :cond_2

    .line 5349
    new-instance v0, Llqg;

    invoke-direct {v0}, Llqg;-><init>()V

    iput-object v0, p0, Llip;->d:Llqg;

    .line 5351
    :cond_2
    iget-object v0, p0, Llip;->d:Llqg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5355
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llip;->c:Ljava/lang/String;

    goto :goto_0

    .line 5327
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3284
    iget-object v0, p0, Llip;->a:Llmh;

    if-eqz v0, :cond_0

    .line 3285
    const/4 v0, 0x1

    iget-object v1, p0, Llip;->a:Llmh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3287
    :cond_0
    iget-object v0, p0, Llip;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 3288
    const/4 v0, 0x2

    iget-object v1, p0, Llip;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 3290
    :cond_1
    iget-object v0, p0, Llip;->d:Llqg;

    if-eqz v0, :cond_2

    .line 3291
    const/4 v0, 0x3

    iget-object v1, p0, Llip;->d:Llqg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3293
    :cond_2
    iget-object v0, p0, Llip;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3294
    const/4 v0, 0x4

    iget-object v1, p0, Llip;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3296
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3297
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3301
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3302
    iget-object v1, p0, Llip;->a:Llmh;

    if-eqz v1, :cond_0

    .line 3303
    const/4 v1, 0x1

    iget-object v2, p0, Llip;->a:Llmh;

    .line 3304
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3306
    :cond_0
    iget-object v1, p0, Llip;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 3307
    const/4 v1, 0x2

    iget-object v2, p0, Llip;->b:Ljava/lang/Float;

    .line 3308
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3308
    add-int/2addr v0, v1

    .line 3310
    :cond_1
    iget-object v1, p0, Llip;->d:Llqg;

    if-eqz v1, :cond_2

    .line 3311
    const/4 v1, 0x3

    iget-object v2, p0, Llip;->d:Llqg;

    .line 3312
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3314
    :cond_2
    iget-object v1, p0, Llip;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3315
    const/4 v1, 0x4

    iget-object v2, p0, Llip;->c:Ljava/lang/String;

    .line 3316
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3318
    :cond_3
    return v0
.end method
