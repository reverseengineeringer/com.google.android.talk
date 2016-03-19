.class public final Lixm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lixm;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7159
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8164
    iput-object v0, p0, Lixm;->a:Lixc;

    .line 8165
    iput-object v0, p0, Lixm;->b:Ljava/lang/String;

    .line 8166
    iput-object v0, p0, Lixm;->eD:Llyd;

    .line 8167
    const/4 v0, -0x1

    iput v0, p0, Lixm;->eE:I

    .line 7161
    return-void
.end method

.method public static d()[Lixm;
    .locals 2

    .prologue
    .line 7140
    sget-object v0, Lixm;->c:[Lixm;

    if-nez v0, :cond_1

    .line 7141
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 7143
    :try_start_0
    sget-object v0, Lixm;->c:[Lixm;

    if-nez v0, :cond_0

    .line 7144
    const/4 v0, 0x0

    new-array v0, v0, [Lixm;

    sput-object v0, Lixm;->c:[Lixm;

    .line 7146
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7148
    :cond_1
    sget-object v0, Lixm;->c:[Lixm;

    return-object v0

    .line 7146
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
    .line 8202
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8203
    sparse-switch v0, :sswitch_data_0

    .line 8207
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8208
    :sswitch_0
    return-object p0

    .line 8213
    :sswitch_1
    iget-object v0, p0, Lixm;->a:Lixc;

    if-nez v0, :cond_1

    .line 8214
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixm;->a:Lixc;

    .line 8216
    :cond_1
    iget-object v0, p0, Lixm;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8220
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixm;->b:Ljava/lang/String;

    goto :goto_0

    .line 8203
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
    .line 7174
    iget-object v0, p0, Lixm;->a:Lixc;

    if-eqz v0, :cond_0

    .line 7175
    const/4 v0, 0x1

    iget-object v1, p0, Lixm;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7177
    :cond_0
    iget-object v0, p0, Lixm;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7178
    const/4 v0, 0x2

    iget-object v1, p0, Lixm;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7180
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7181
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7185
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7186
    iget-object v1, p0, Lixm;->a:Lixc;

    if-eqz v1, :cond_0

    .line 7187
    const/4 v1, 0x1

    iget-object v2, p0, Lixm;->a:Lixc;

    .line 7188
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7190
    :cond_0
    iget-object v1, p0, Lixm;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7191
    const/4 v1, 0x2

    iget-object v2, p0, Lixm;->b:Ljava/lang/String;

    .line 7192
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7194
    :cond_1
    return v0
.end method
