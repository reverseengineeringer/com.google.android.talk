.class public final Llmg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llmg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 733
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1738
    iput-object v0, p0, Llmg;->a:Ljava/lang/String;

    .line 1739
    iput-object v0, p0, Llmg;->b:Ljava/lang/Long;

    .line 1740
    iput-object v0, p0, Llmg;->eD:Llyd;

    .line 1741
    const/4 v0, -0x1

    iput v0, p0, Llmg;->eE:I

    .line 735
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2776
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2777
    sparse-switch v0, :sswitch_data_0

    .line 2781
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2782
    :sswitch_0
    return-object p0

    .line 2787
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmg;->a:Ljava/lang/String;

    goto :goto_0

    .line 2791
    :sswitch_2
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llmg;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2777
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 748
    iget-object v0, p0, Llmg;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 749
    const/4 v0, 0x1

    iget-object v1, p0, Llmg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 751
    :cond_0
    iget-object v0, p0, Llmg;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 752
    const/4 v0, 0x2

    iget-object v1, p0, Llmg;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 754
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 755
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 759
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 760
    iget-object v1, p0, Llmg;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 761
    const/4 v1, 0x1

    iget-object v2, p0, Llmg;->a:Ljava/lang/String;

    .line 762
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    :cond_0
    iget-object v1, p0, Llmg;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 765
    const/4 v1, 0x2

    iget-object v2, p0, Llmg;->b:Ljava/lang/Long;

    .line 766
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 2602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 766
    add-int/2addr v0, v1

    .line 768
    :cond_1
    return v0
.end method
