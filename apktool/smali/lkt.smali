.class public final Llkt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 769
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1774
    iput-object v0, p0, Llkt;->a:Ljava/lang/Long;

    .line 1775
    iput-object v0, p0, Llkt;->eD:Llyd;

    .line 1776
    const/4 v0, -0x1

    iput v0, p0, Llkt;->eE:I

    .line 771
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1805
    sparse-switch v0, :sswitch_data_0

    .line 1809
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1810
    :sswitch_0
    return-object p0

    .line 1815
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llkt;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1805
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 783
    iget-object v0, p0, Llkt;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 784
    const/4 v0, 0x1

    iget-object v1, p0, Llkt;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 786
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 787
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 791
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 792
    iget-object v1, p0, Llkt;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 793
    const/4 v1, 0x1

    iget-object v2, p0, Llkt;->a:Ljava/lang/Long;

    .line 794
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 796
    :cond_0
    return v0
.end method
