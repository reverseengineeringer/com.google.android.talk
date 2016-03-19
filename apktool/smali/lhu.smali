.class public final Llhu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llhu;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1210
    iput-object v0, p0, Llhu;->a:Ljava/lang/Integer;

    .line 1211
    iput-object v0, p0, Llhu;->b:Ljava/lang/String;

    .line 1212
    iput-object v0, p0, Llhu;->eD:Llyd;

    .line 1213
    const/4 v0, -0x1

    iput v0, p0, Llhu;->eE:I

    .line 207
    return-void
.end method

.method public static d()[Llhu;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Llhu;->c:[Llhu;

    if-nez v0, :cond_1

    .line 187
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Llhu;->c:[Llhu;

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [Llhu;

    sput-object v0, Llhu;->c:[Llhu;

    .line 192
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    sget-object v0, Llhu;->c:[Llhu;

    return-object v0

    .line 192
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
    .line 1248
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1249
    sparse-switch v0, :sswitch_data_0

    .line 1253
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    :sswitch_0
    return-object p0

    .line 1259
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llhu;->b:Ljava/lang/String;

    goto :goto_0

    .line 1263
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llhu;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1249
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Llhu;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x2

    iget-object v1, p0, Llhu;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 223
    :cond_0
    iget-object v0, p0, Llhu;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x3

    iget-object v1, p0, Llhu;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 226
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 227
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 232
    iget-object v1, p0, Llhu;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x2

    iget-object v2, p0, Llhu;->b:Ljava/lang/String;

    .line 234
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_0
    iget-object v1, p0, Llhu;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 237
    const/4 v1, 0x3

    iget-object v2, p0, Llhu;->a:Ljava/lang/Integer;

    .line 238
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_1
    return v0
.end method
