.class public final Ljqc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljqc;


# instance fields
.field public a:Ljpp;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8229
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9234
    iput-object v0, p0, Ljqc;->a:Ljpp;

    .line 9235
    iput-object v0, p0, Ljqc;->b:Ljava/lang/String;

    .line 9236
    iput-object v0, p0, Ljqc;->eD:Llyd;

    .line 9237
    const/4 v0, -0x1

    iput v0, p0, Ljqc;->eE:I

    .line 8231
    return-void
.end method

.method public static d()[Ljqc;
    .locals 2

    .prologue
    .line 8210
    sget-object v0, Ljqc;->c:[Ljqc;

    if-nez v0, :cond_1

    .line 8211
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8213
    :try_start_0
    sget-object v0, Ljqc;->c:[Ljqc;

    if-nez v0, :cond_0

    .line 8214
    const/4 v0, 0x0

    new-array v0, v0, [Ljqc;

    sput-object v0, Ljqc;->c:[Ljqc;

    .line 8216
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8218
    :cond_1
    sget-object v0, Ljqc;->c:[Ljqc;

    return-object v0

    .line 8216
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
    .line 9272
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9273
    sparse-switch v0, :sswitch_data_0

    .line 9277
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9278
    :sswitch_0
    return-object p0

    .line 9283
    :sswitch_1
    iget-object v0, p0, Ljqc;->a:Ljpp;

    if-nez v0, :cond_1

    .line 9284
    new-instance v0, Ljpp;

    invoke-direct {v0}, Ljpp;-><init>()V

    iput-object v0, p0, Ljqc;->a:Ljpp;

    .line 9286
    :cond_1
    iget-object v0, p0, Ljqc;->a:Ljpp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9290
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqc;->b:Ljava/lang/String;

    goto :goto_0

    .line 9273
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
    .line 8244
    iget-object v0, p0, Ljqc;->a:Ljpp;

    if-eqz v0, :cond_0

    .line 8245
    const/4 v0, 0x1

    iget-object v1, p0, Ljqc;->a:Ljpp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8247
    :cond_0
    iget-object v0, p0, Ljqc;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8248
    const/4 v0, 0x2

    iget-object v1, p0, Ljqc;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8250
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8251
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8255
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8256
    iget-object v1, p0, Ljqc;->a:Ljpp;

    if-eqz v1, :cond_0

    .line 8257
    const/4 v1, 0x1

    iget-object v2, p0, Ljqc;->a:Ljpp;

    .line 8258
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8260
    :cond_0
    iget-object v1, p0, Ljqc;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8261
    const/4 v1, 0x2

    iget-object v2, p0, Ljqc;->b:Ljava/lang/String;

    .line 8262
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8264
    :cond_1
    return v0
.end method
