.class public final Ljfp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljfp;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9430
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9431
    iput-object v0, p0, Ljfp;->a:Ljava/lang/String;

    .line 9432
    iput-object v0, p0, Ljfp;->b:Ljava/lang/String;

    .line 9433
    iput-object v0, p0, Ljfp;->eD:Llyd;

    .line 9434
    const/4 v0, -0x1

    iput v0, p0, Ljfp;->eE:I

    .line 9435
    return-void
.end method

.method public static d()[Ljfp;
    .locals 2

    .prologue
    .line 9411
    sget-object v0, Ljfp;->c:[Ljfp;

    if-nez v0, :cond_1

    .line 9412
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 9414
    :try_start_0
    sget-object v0, Ljfp;->c:[Ljfp;

    if-nez v0, :cond_0

    .line 9415
    const/4 v0, 0x0

    new-array v0, v0, [Ljfp;

    sput-object v0, Ljfp;->c:[Ljfp;

    .line 9417
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9419
    :cond_1
    sget-object v0, Ljfp;->c:[Ljfp;

    return-object v0

    .line 9417
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
    .line 10468
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10469
    sparse-switch v0, :sswitch_data_0

    .line 10473
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10474
    :sswitch_0
    return-object p0

    .line 10479
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfp;->a:Ljava/lang/String;

    goto :goto_0

    .line 10483
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfp;->b:Ljava/lang/String;

    goto :goto_0

    .line 10469
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
    .line 9440
    iget-object v0, p0, Ljfp;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9441
    const/4 v0, 0x1

    iget-object v1, p0, Ljfp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9443
    :cond_0
    iget-object v0, p0, Ljfp;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9444
    const/4 v0, 0x2

    iget-object v1, p0, Ljfp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9446
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9447
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9451
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9452
    iget-object v1, p0, Ljfp;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9453
    const/4 v1, 0x1

    iget-object v2, p0, Ljfp;->a:Ljava/lang/String;

    .line 9454
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9456
    :cond_0
    iget-object v1, p0, Ljfp;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9457
    const/4 v1, 0x2

    iget-object v2, p0, Ljfp;->b:Ljava/lang/String;

    .line 9458
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9460
    :cond_1
    return v0
.end method
