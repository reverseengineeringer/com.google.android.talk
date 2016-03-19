.class public final Ljzp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[B

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12454
    invoke-direct {p0}, Llyb;-><init>()V

    .line 13459
    iput-object v0, p0, Ljzp;->a:Ljava/lang/Long;

    .line 13460
    iput-object v0, p0, Ljzp;->b:[B

    .line 13461
    iput-object v0, p0, Ljzp;->c:Ljava/lang/String;

    .line 13462
    iput-object v0, p0, Ljzp;->eD:Llyd;

    .line 13463
    const/4 v0, -0x1

    iput v0, p0, Ljzp;->eE:I

    .line 12456
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 13505
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 13506
    sparse-switch v0, :sswitch_data_0

    .line 13510
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13511
    :sswitch_0
    return-object p0

    .line 13516
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljzp;->c:Ljava/lang/String;

    goto :goto_0

    .line 13520
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljzp;->b:[B

    goto :goto_0

    .line 13524
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljzp;->a:Ljava/lang/Long;

    goto :goto_0

    .line 13506
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 12470
    iget-object v0, p0, Ljzp;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 12471
    const/4 v0, 0x1

    iget-object v1, p0, Ljzp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 12473
    :cond_0
    iget-object v0, p0, Ljzp;->b:[B

    if-eqz v0, :cond_1

    .line 12474
    const/4 v0, 0x2

    iget-object v1, p0, Ljzp;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 12476
    :cond_1
    iget-object v0, p0, Ljzp;->a:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 12477
    const/4 v0, 0x3

    iget-object v1, p0, Ljzp;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 12479
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 12480
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 12484
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 12485
    iget-object v1, p0, Ljzp;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12486
    const/4 v1, 0x1

    iget-object v2, p0, Ljzp;->c:Ljava/lang/String;

    .line 12487
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12489
    :cond_0
    iget-object v1, p0, Ljzp;->b:[B

    if-eqz v1, :cond_1

    .line 12490
    const/4 v1, 0x2

    iget-object v2, p0, Ljzp;->b:[B

    .line 12491
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 12493
    :cond_1
    iget-object v1, p0, Ljzp;->a:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 12494
    const/4 v1, 0x3

    iget-object v2, p0, Ljzp;->a:Ljava/lang/Long;

    .line 12495
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12497
    :cond_2
    return v0
.end method
