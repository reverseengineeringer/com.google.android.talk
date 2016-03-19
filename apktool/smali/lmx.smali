.class public final Llmx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llmx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Llni;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1256
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2261
    iput-object v0, p0, Llmx;->a:Ljava/lang/Boolean;

    .line 2262
    iput-object v0, p0, Llmx;->b:Llni;

    .line 2263
    iput-object v0, p0, Llmx;->eD:Llyd;

    .line 2264
    const/4 v0, -0x1

    iput v0, p0, Llmx;->eE:I

    .line 1258
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3299
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3300
    sparse-switch v0, :sswitch_data_0

    .line 3304
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3305
    :sswitch_0
    return-object p0

    .line 3310
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llmx;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 3314
    :sswitch_2
    iget-object v0, p0, Llmx;->b:Llni;

    if-nez v0, :cond_1

    .line 3315
    new-instance v0, Llni;

    invoke-direct {v0}, Llni;-><init>()V

    iput-object v0, p0, Llmx;->b:Llni;

    .line 3317
    :cond_1
    iget-object v0, p0, Llmx;->b:Llni;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3300
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1271
    iget-object v0, p0, Llmx;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1272
    const/4 v0, 0x1

    iget-object v1, p0, Llmx;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1274
    :cond_0
    iget-object v0, p0, Llmx;->b:Llni;

    if-eqz v0, :cond_1

    .line 1275
    const/4 v0, 0x2

    iget-object v1, p0, Llmx;->b:Llni;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1277
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1278
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1282
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1283
    iget-object v1, p0, Llmx;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1284
    const/4 v1, 0x1

    iget-object v2, p0, Llmx;->a:Ljava/lang/Boolean;

    .line 1285
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1285
    add-int/2addr v0, v1

    .line 1287
    :cond_0
    iget-object v1, p0, Llmx;->b:Llni;

    if-eqz v1, :cond_1

    .line 1288
    const/4 v1, 0x2

    iget-object v2, p0, Llmx;->b:Llni;

    .line 1289
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1291
    :cond_1
    return v0
.end method
