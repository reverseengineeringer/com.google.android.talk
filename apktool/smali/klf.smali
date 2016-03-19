.class public final Lklf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lklf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2298
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3303
    iput-object v0, p0, Lklf;->a:Ljava/lang/String;

    .line 3304
    iput-object v0, p0, Lklf;->b:Ljava/lang/Integer;

    .line 3305
    iput-object v0, p0, Lklf;->c:Ljava/lang/Integer;

    .line 3306
    iput-object v0, p0, Lklf;->eD:Llyd;

    .line 3307
    const/4 v0, -0x1

    iput v0, p0, Lklf;->eE:I

    .line 2300
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3349
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3350
    sparse-switch v0, :sswitch_data_0

    .line 3354
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3355
    :sswitch_0
    return-object p0

    .line 3360
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklf;->a:Ljava/lang/String;

    goto :goto_0

    .line 3364
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklf;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3368
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklf;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3350
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2314
    iget-object v0, p0, Lklf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2315
    const/4 v0, 0x1

    iget-object v1, p0, Lklf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2317
    :cond_0
    iget-object v0, p0, Lklf;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2318
    const/4 v0, 0x2

    iget-object v1, p0, Lklf;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2320
    :cond_1
    iget-object v0, p0, Lklf;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2321
    const/4 v0, 0x3

    iget-object v1, p0, Lklf;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2323
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2324
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2328
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2329
    iget-object v1, p0, Lklf;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2330
    const/4 v1, 0x1

    iget-object v2, p0, Lklf;->a:Ljava/lang/String;

    .line 2331
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2333
    :cond_0
    iget-object v1, p0, Lklf;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2334
    const/4 v1, 0x2

    iget-object v2, p0, Lklf;->b:Ljava/lang/Integer;

    .line 2335
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2337
    :cond_1
    iget-object v1, p0, Lklf;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2338
    const/4 v1, 0x3

    iget-object v2, p0, Lklf;->c:Ljava/lang/Integer;

    .line 2339
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2341
    :cond_2
    return v0
.end method
