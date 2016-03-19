.class public final Ljxk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxk;",
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

    .line 801
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1806
    iput-object v0, p0, Ljxk;->a:Ljava/lang/Long;

    .line 1807
    iput-object v0, p0, Ljxk;->eD:Llyd;

    .line 1808
    const/4 v0, -0x1

    iput v0, p0, Ljxk;->eE:I

    .line 803
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1836
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1837
    sparse-switch v0, :sswitch_data_0

    .line 1841
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1842
    :sswitch_0
    return-object p0

    .line 1847
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljxk;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1837
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
    .line 815
    iget-object v0, p0, Ljxk;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 816
    const/4 v0, 0x1

    iget-object v1, p0, Ljxk;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 818
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 819
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 823
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 824
    iget-object v1, p0, Ljxk;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 825
    const/4 v1, 0x1

    iget-object v2, p0, Ljxk;->a:Ljava/lang/Long;

    .line 826
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 828
    :cond_0
    return v0
.end method
