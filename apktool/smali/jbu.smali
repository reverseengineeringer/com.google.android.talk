.class public final Ljbu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1569
    iput-object v0, p0, Ljbu;->a:Ljbn;

    .line 1570
    iput-object v0, p0, Ljbu;->b:Ljava/lang/Float;

    .line 1571
    iput-object v0, p0, Ljbu;->eD:Llyd;

    .line 1572
    const/4 v0, -0x1

    iput v0, p0, Ljbu;->eE:I

    .line 566
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2603
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2604
    sparse-switch v0, :sswitch_data_0

    .line 2608
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2609
    :sswitch_0
    return-object p0

    .line 2614
    :sswitch_1
    iget-object v0, p0, Ljbu;->a:Ljbn;

    if-nez v0, :cond_1

    .line 2615
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbu;->a:Ljbn;

    .line 2617
    :cond_1
    iget-object v0, p0, Ljbu;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2621
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljbu;->b:Ljava/lang/Float;

    goto :goto_0

    .line 2604
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Ljbu;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x1

    iget-object v1, p0, Ljbu;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 582
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Ljbu;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 583
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 584
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 588
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 589
    iget-object v1, p0, Ljbu;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 590
    const/4 v1, 0x1

    iget-object v2, p0, Ljbu;->a:Ljbn;

    .line 591
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Ljbu;->b:Ljava/lang/Float;

    .line 594
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 594
    add-int/2addr v0, v1

    .line 595
    return v0
.end method
