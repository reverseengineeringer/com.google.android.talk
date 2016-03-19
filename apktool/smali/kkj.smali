.class public final Lkkj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Lkkj;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1237
    iput-object v0, p0, Lkkj;->a:Ljava/lang/String;

    .line 1238
    iput-object v0, p0, Lkkj;->eD:Llyd;

    .line 1239
    const/4 v0, -0x1

    iput v0, p0, Lkkj;->eE:I

    .line 234
    return-void
.end method

.method public static d()[Lkkj;
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lkkj;->b:[Lkkj;

    if-nez v0, :cond_1

    .line 217
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    sget-object v0, Lkkj;->b:[Lkkj;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    new-array v0, v0, [Lkkj;

    sput-object v0, Lkkj;->b:[Lkkj;

    .line 222
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_1
    sget-object v0, Lkkj;->b:[Lkkj;

    return-object v0

    .line 222
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
    .line 1267
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1268
    sparse-switch v0, :sswitch_data_0

    .line 1272
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    :sswitch_0
    return-object p0

    .line 1278
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkj;->a:Ljava/lang/String;

    goto :goto_0

    .line 1268
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
    .line 246
    iget-object v0, p0, Lkkj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iget-object v1, p0, Lkkj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 249
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 250
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 254
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 255
    iget-object v1, p0, Lkkj;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x1

    iget-object v2, p0, Lkkj;->a:Ljava/lang/String;

    .line 257
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 259
    :cond_0
    return v0
.end method
