.class public final Ljjm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6530
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7535
    iput-object v0, p0, Ljjm;->a:Ljava/lang/Integer;

    .line 7536
    iput-object v0, p0, Ljjm;->b:Ljava/lang/String;

    .line 7537
    iput-object v0, p0, Ljjm;->eD:Llyd;

    .line 7538
    const/4 v0, -0x1

    iput v0, p0, Ljjm;->eE:I

    .line 6532
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 7573
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7574
    sparse-switch v0, :sswitch_data_0

    .line 7578
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7579
    :sswitch_0
    return-object p0

    .line 7584
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 7585
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 7589
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjm;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 7595
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjm;->b:Ljava/lang/String;

    goto :goto_0

    .line 7574
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 7585
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_2
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6545
    iget-object v0, p0, Ljjm;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6546
    const/4 v0, 0x1

    iget-object v1, p0, Ljjm;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 6548
    :cond_0
    iget-object v0, p0, Ljjm;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6549
    const/4 v0, 0x2

    iget-object v1, p0, Ljjm;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6551
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6552
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6556
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6557
    iget-object v1, p0, Ljjm;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 6558
    const/4 v1, 0x1

    iget-object v2, p0, Ljjm;->a:Ljava/lang/Integer;

    .line 6559
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6561
    :cond_0
    iget-object v1, p0, Ljjm;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6562
    const/4 v1, 0x2

    iget-object v2, p0, Ljjm;->b:Ljava/lang/String;

    .line 6563
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6565
    :cond_1
    return v0
.end method
