.class public final Ljaq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljaq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljar;

.field public b:Ljar;

.field public c:Ljar;

.field public d:Ljar;

.field public e:Ljar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9223
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10228
    iput-object v0, p0, Ljaq;->a:Ljar;

    .line 10229
    iput-object v0, p0, Ljaq;->b:Ljar;

    .line 10230
    iput-object v0, p0, Ljaq;->c:Ljar;

    .line 10231
    iput-object v0, p0, Ljaq;->d:Ljar;

    .line 10232
    iput-object v0, p0, Ljaq;->e:Ljar;

    .line 10233
    iput-object v0, p0, Ljaq;->eD:Llyd;

    .line 10234
    const/4 v0, -0x1

    iput v0, p0, Ljaq;->eE:I

    .line 9225
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 10290
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10291
    sparse-switch v0, :sswitch_data_0

    .line 10295
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10296
    :sswitch_0
    return-object p0

    .line 10301
    :sswitch_1
    iget-object v0, p0, Ljaq;->a:Ljar;

    if-nez v0, :cond_1

    .line 10302
    new-instance v0, Ljar;

    invoke-direct {v0}, Ljar;-><init>()V

    iput-object v0, p0, Ljaq;->a:Ljar;

    .line 10304
    :cond_1
    iget-object v0, p0, Ljaq;->a:Ljar;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10308
    :sswitch_2
    iget-object v0, p0, Ljaq;->b:Ljar;

    if-nez v0, :cond_2

    .line 10309
    new-instance v0, Ljar;

    invoke-direct {v0}, Ljar;-><init>()V

    iput-object v0, p0, Ljaq;->b:Ljar;

    .line 10311
    :cond_2
    iget-object v0, p0, Ljaq;->b:Ljar;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10315
    :sswitch_3
    iget-object v0, p0, Ljaq;->c:Ljar;

    if-nez v0, :cond_3

    .line 10316
    new-instance v0, Ljar;

    invoke-direct {v0}, Ljar;-><init>()V

    iput-object v0, p0, Ljaq;->c:Ljar;

    .line 10318
    :cond_3
    iget-object v0, p0, Ljaq;->c:Ljar;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10322
    :sswitch_4
    iget-object v0, p0, Ljaq;->d:Ljar;

    if-nez v0, :cond_4

    .line 10323
    new-instance v0, Ljar;

    invoke-direct {v0}, Ljar;-><init>()V

    iput-object v0, p0, Ljaq;->d:Ljar;

    .line 10325
    :cond_4
    iget-object v0, p0, Ljaq;->d:Ljar;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10329
    :sswitch_5
    iget-object v0, p0, Ljaq;->e:Ljar;

    if-nez v0, :cond_5

    .line 10330
    new-instance v0, Ljar;

    invoke-direct {v0}, Ljar;-><init>()V

    iput-object v0, p0, Ljaq;->e:Ljar;

    .line 10332
    :cond_5
    iget-object v0, p0, Ljaq;->e:Ljar;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10291
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9241
    iget-object v0, p0, Ljaq;->a:Ljar;

    if-eqz v0, :cond_0

    .line 9242
    const/4 v0, 0x1

    iget-object v1, p0, Ljaq;->a:Ljar;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9244
    :cond_0
    iget-object v0, p0, Ljaq;->b:Ljar;

    if-eqz v0, :cond_1

    .line 9245
    const/4 v0, 0x2

    iget-object v1, p0, Ljaq;->b:Ljar;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9247
    :cond_1
    iget-object v0, p0, Ljaq;->c:Ljar;

    if-eqz v0, :cond_2

    .line 9248
    const/4 v0, 0x3

    iget-object v1, p0, Ljaq;->c:Ljar;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9250
    :cond_2
    iget-object v0, p0, Ljaq;->d:Ljar;

    if-eqz v0, :cond_3

    .line 9251
    const/4 v0, 0x4

    iget-object v1, p0, Ljaq;->d:Ljar;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9253
    :cond_3
    iget-object v0, p0, Ljaq;->e:Ljar;

    if-eqz v0, :cond_4

    .line 9254
    const/4 v0, 0x5

    iget-object v1, p0, Ljaq;->e:Ljar;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9256
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9257
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9261
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9262
    iget-object v1, p0, Ljaq;->a:Ljar;

    if-eqz v1, :cond_0

    .line 9263
    const/4 v1, 0x1

    iget-object v2, p0, Ljaq;->a:Ljar;

    .line 9264
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9266
    :cond_0
    iget-object v1, p0, Ljaq;->b:Ljar;

    if-eqz v1, :cond_1

    .line 9267
    const/4 v1, 0x2

    iget-object v2, p0, Ljaq;->b:Ljar;

    .line 9268
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9270
    :cond_1
    iget-object v1, p0, Ljaq;->c:Ljar;

    if-eqz v1, :cond_2

    .line 9271
    const/4 v1, 0x3

    iget-object v2, p0, Ljaq;->c:Ljar;

    .line 9272
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9274
    :cond_2
    iget-object v1, p0, Ljaq;->d:Ljar;

    if-eqz v1, :cond_3

    .line 9275
    const/4 v1, 0x4

    iget-object v2, p0, Ljaq;->d:Ljar;

    .line 9276
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9278
    :cond_3
    iget-object v1, p0, Ljaq;->e:Ljar;

    if-eqz v1, :cond_4

    .line 9279
    const/4 v1, 0x5

    iget-object v2, p0, Ljaq;->e:Ljar;

    .line 9280
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9282
    :cond_4
    return v0
.end method
