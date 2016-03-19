.class public final Lkiw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkiw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lkiw;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2212
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3217
    iput-object v0, p0, Lkiw;->a:Ljava/lang/Integer;

    .line 3218
    iput-object v0, p0, Lkiw;->b:Ljava/lang/String;

    .line 3219
    iput-object v0, p0, Lkiw;->c:Ljava/lang/Integer;

    .line 3220
    iput-object v0, p0, Lkiw;->eD:Llyd;

    .line 3221
    const/4 v0, -0x1

    iput v0, p0, Lkiw;->eE:I

    .line 2214
    return-void
.end method

.method public static d()[Lkiw;
    .locals 2

    .prologue
    .line 2190
    sget-object v0, Lkiw;->d:[Lkiw;

    if-nez v0, :cond_1

    .line 2191
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2193
    :try_start_0
    sget-object v0, Lkiw;->d:[Lkiw;

    if-nez v0, :cond_0

    .line 2194
    const/4 v0, 0x0

    new-array v0, v0, [Lkiw;

    sput-object v0, Lkiw;->d:[Lkiw;

    .line 2196
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2198
    :cond_1
    sget-object v0, Lkiw;->d:[Lkiw;

    return-object v0

    .line 2196
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
    .line 3263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3264
    sparse-switch v0, :sswitch_data_0

    .line 3268
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3269
    :sswitch_0
    return-object p0

    .line 3274
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkiw;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3278
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkiw;->b:Ljava/lang/String;

    goto :goto_0

    .line 3282
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3283
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3288
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkiw;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3264
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 3283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2228
    iget-object v0, p0, Lkiw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2229
    const/4 v0, 0x1

    iget-object v1, p0, Lkiw;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2231
    :cond_0
    iget-object v0, p0, Lkiw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2232
    const/4 v0, 0x2

    iget-object v1, p0, Lkiw;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2234
    :cond_1
    iget-object v0, p0, Lkiw;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2235
    const/4 v0, 0x3

    iget-object v1, p0, Lkiw;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2237
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2238
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2242
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2243
    iget-object v1, p0, Lkiw;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2244
    const/4 v1, 0x1

    iget-object v2, p0, Lkiw;->a:Ljava/lang/Integer;

    .line 2245
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2247
    :cond_0
    iget-object v1, p0, Lkiw;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2248
    const/4 v1, 0x2

    iget-object v2, p0, Lkiw;->b:Ljava/lang/String;

    .line 2249
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2251
    :cond_1
    iget-object v1, p0, Lkiw;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2252
    const/4 v1, 0x3

    iget-object v2, p0, Lkiw;->c:Ljava/lang/Integer;

    .line 2253
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2255
    :cond_2
    return v0
.end method
