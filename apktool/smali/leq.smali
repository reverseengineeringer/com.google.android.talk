.class public final Lleq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lleq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Lleq;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1298
    iput-object v0, p0, Lleq;->a:Ljava/lang/Integer;

    .line 1299
    iput-object v0, p0, Lleq;->eD:Llyd;

    .line 1300
    const/4 v0, -0x1

    iput v0, p0, Lleq;->eE:I

    .line 295
    return-void
.end method

.method public static d()[Lleq;
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lleq;->b:[Lleq;

    if-nez v0, :cond_1

    .line 278
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    sget-object v0, Lleq;->b:[Lleq;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    new-array v0, v0, [Lleq;

    sput-object v0, Lleq;->b:[Lleq;

    .line 283
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :cond_1
    sget-object v0, Lleq;->b:[Lleq;

    return-object v0

    .line 283
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
    .line 1328
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1329
    sparse-switch v0, :sswitch_data_0

    .line 1333
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    :sswitch_0
    return-object p0

    .line 1339
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lleq;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1329
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lleq;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x1

    iget-object v1, p0, Lleq;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 310
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 311
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 316
    iget-object v1, p0, Lleq;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 317
    const/4 v1, 0x1

    iget-object v2, p0, Lleq;->a:Ljava/lang/Integer;

    .line 318
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_0
    return v0
.end method
