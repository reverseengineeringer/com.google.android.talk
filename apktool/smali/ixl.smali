.class public final Lixl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lixl;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8178
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9183
    iput-object v0, p0, Lixl;->a:Lixc;

    .line 9184
    iput-object v0, p0, Lixl;->b:Ljava/lang/String;

    .line 9185
    iput-object v0, p0, Lixl;->c:Ljava/lang/String;

    .line 9186
    iput-object v0, p0, Lixl;->d:Ljava/lang/String;

    .line 9187
    iput-object v0, p0, Lixl;->eD:Llyd;

    .line 9188
    const/4 v0, -0x1

    iput v0, p0, Lixl;->eE:I

    .line 8180
    return-void
.end method

.method public static d()[Lixl;
    .locals 2

    .prologue
    .line 8153
    sget-object v0, Lixl;->e:[Lixl;

    if-nez v0, :cond_1

    .line 8154
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8156
    :try_start_0
    sget-object v0, Lixl;->e:[Lixl;

    if-nez v0, :cond_0

    .line 8157
    const/4 v0, 0x0

    new-array v0, v0, [Lixl;

    sput-object v0, Lixl;->e:[Lixl;

    .line 8159
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8161
    :cond_1
    sget-object v0, Lixl;->e:[Lixl;

    return-object v0

    .line 8159
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
    .line 9237
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9238
    sparse-switch v0, :sswitch_data_0

    .line 9242
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9243
    :sswitch_0
    return-object p0

    .line 9248
    :sswitch_1
    iget-object v0, p0, Lixl;->a:Lixc;

    if-nez v0, :cond_1

    .line 9249
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixl;->a:Lixc;

    .line 9251
    :cond_1
    iget-object v0, p0, Lixl;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9255
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixl;->b:Ljava/lang/String;

    goto :goto_0

    .line 9259
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixl;->c:Ljava/lang/String;

    goto :goto_0

    .line 9263
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixl;->d:Ljava/lang/String;

    goto :goto_0

    .line 9238
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 8195
    iget-object v0, p0, Lixl;->a:Lixc;

    if-eqz v0, :cond_0

    .line 8196
    const/4 v0, 0x1

    iget-object v1, p0, Lixl;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8198
    :cond_0
    iget-object v0, p0, Lixl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8199
    const/4 v0, 0x2

    iget-object v1, p0, Lixl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8201
    :cond_1
    iget-object v0, p0, Lixl;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8202
    const/4 v0, 0x3

    iget-object v1, p0, Lixl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8204
    :cond_2
    iget-object v0, p0, Lixl;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8205
    const/4 v0, 0x4

    iget-object v1, p0, Lixl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8207
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8208
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8212
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8213
    iget-object v1, p0, Lixl;->a:Lixc;

    if-eqz v1, :cond_0

    .line 8214
    const/4 v1, 0x1

    iget-object v2, p0, Lixl;->a:Lixc;

    .line 8215
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8217
    :cond_0
    iget-object v1, p0, Lixl;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8218
    const/4 v1, 0x2

    iget-object v2, p0, Lixl;->b:Ljava/lang/String;

    .line 8219
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8221
    :cond_1
    iget-object v1, p0, Lixl;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8222
    const/4 v1, 0x3

    iget-object v2, p0, Lixl;->c:Ljava/lang/String;

    .line 8223
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8225
    :cond_2
    iget-object v1, p0, Lixl;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 8226
    const/4 v1, 0x4

    iget-object v2, p0, Lixl;->d:Ljava/lang/String;

    .line 8227
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8229
    :cond_3
    return v0
.end method
