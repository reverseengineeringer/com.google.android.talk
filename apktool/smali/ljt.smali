.class public final Lljt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lljt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lljg;

.field public b:Lljr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1301
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2306
    iput-object v0, p0, Lljt;->a:Lljg;

    .line 2307
    iput-object v0, p0, Lljt;->b:Lljr;

    .line 2308
    iput-object v0, p0, Lljt;->eD:Llyd;

    .line 2309
    const/4 v0, -0x1

    iput v0, p0, Lljt;->eE:I

    .line 1303
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2344
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2345
    sparse-switch v0, :sswitch_data_0

    .line 2349
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2350
    :sswitch_0
    return-object p0

    .line 2355
    :sswitch_1
    iget-object v0, p0, Lljt;->a:Lljg;

    if-nez v0, :cond_1

    .line 2356
    new-instance v0, Lljg;

    invoke-direct {v0}, Lljg;-><init>()V

    iput-object v0, p0, Lljt;->a:Lljg;

    .line 2358
    :cond_1
    iget-object v0, p0, Lljt;->a:Lljg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2362
    :sswitch_2
    iget-object v0, p0, Lljt;->b:Lljr;

    if-nez v0, :cond_2

    .line 2363
    new-instance v0, Lljr;

    invoke-direct {v0}, Lljr;-><init>()V

    iput-object v0, p0, Lljt;->b:Lljr;

    .line 2365
    :cond_2
    iget-object v0, p0, Lljt;->b:Lljr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2345
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
    .line 1316
    iget-object v0, p0, Lljt;->a:Lljg;

    if-eqz v0, :cond_0

    .line 1317
    const/4 v0, 0x1

    iget-object v1, p0, Lljt;->a:Lljg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1319
    :cond_0
    iget-object v0, p0, Lljt;->b:Lljr;

    if-eqz v0, :cond_1

    .line 1320
    const/4 v0, 0x2

    iget-object v1, p0, Lljt;->b:Lljr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1322
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1323
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1327
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1328
    iget-object v1, p0, Lljt;->a:Lljg;

    if-eqz v1, :cond_0

    .line 1329
    const/4 v1, 0x1

    iget-object v2, p0, Lljt;->a:Lljg;

    .line 1330
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1332
    :cond_0
    iget-object v1, p0, Lljt;->b:Lljr;

    if-eqz v1, :cond_1

    .line 1333
    const/4 v1, 0x2

    iget-object v2, p0, Lljt;->b:Lljr;

    .line 1334
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1336
    :cond_1
    return v0
.end method
