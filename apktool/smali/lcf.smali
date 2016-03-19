.class public final Llcf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llcf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llcf;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Llcg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1220
    iput-object v0, p0, Llcf;->a:Ljava/lang/String;

    .line 1221
    iput-object v0, p0, Llcf;->b:Llcg;

    .line 1222
    iput-object v0, p0, Llcf;->eD:Llyd;

    .line 1223
    const/4 v0, -0x1

    iput v0, p0, Llcf;->eE:I

    .line 217
    return-void
.end method

.method public static d()[Llcf;
    .locals 2

    .prologue
    .line 196
    sget-object v0, Llcf;->c:[Llcf;

    if-nez v0, :cond_1

    .line 197
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    sget-object v0, Llcf;->c:[Llcf;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    new-array v0, v0, [Llcf;

    sput-object v0, Llcf;->c:[Llcf;

    .line 202
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_1
    sget-object v0, Llcf;->c:[Llcf;

    return-object v0

    .line 202
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
    .line 1258
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1259
    sparse-switch v0, :sswitch_data_0

    .line 1263
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    :sswitch_0
    return-object p0

    .line 1269
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llcf;->a:Ljava/lang/String;

    goto :goto_0

    .line 1273
    :sswitch_2
    iget-object v0, p0, Llcf;->b:Llcg;

    if-nez v0, :cond_1

    .line 1274
    new-instance v0, Llcg;

    invoke-direct {v0}, Llcg;-><init>()V

    iput-object v0, p0, Llcf;->b:Llcg;

    .line 1276
    :cond_1
    iget-object v0, p0, Llcf;->b:Llcg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1259
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
    .line 230
    iget-object v0, p0, Llcf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    iget-object v1, p0, Llcf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 233
    :cond_0
    iget-object v0, p0, Llcf;->b:Llcg;

    if-eqz v0, :cond_1

    .line 234
    const/4 v0, 0x2

    iget-object v1, p0, Llcf;->b:Llcg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 236
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 237
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 241
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 242
    iget-object v1, p0, Llcf;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x1

    iget-object v2, p0, Llcf;->a:Ljava/lang/String;

    .line 244
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_0
    iget-object v1, p0, Llcf;->b:Llcg;

    if-eqz v1, :cond_1

    .line 247
    const/4 v1, 0x2

    iget-object v2, p0, Llcf;->b:Llcg;

    .line 248
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_1
    return v0
.end method
