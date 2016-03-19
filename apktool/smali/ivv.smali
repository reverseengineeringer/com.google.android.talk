.class public final Livv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4860
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5865
    iput-object v0, p0, Livv;->a:Ljava/lang/Long;

    .line 5866
    iput-object v0, p0, Livv;->b:Ljava/lang/Integer;

    .line 5867
    iput-object v0, p0, Livv;->eD:Llyd;

    .line 5868
    const/4 v0, -0x1

    iput v0, p0, Livv;->eE:I

    .line 4862
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 5903
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5904
    sparse-switch v0, :sswitch_data_0

    .line 5908
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5909
    :sswitch_0
    return-object p0

    .line 5914
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Livv;->a:Ljava/lang/Long;

    goto :goto_0

    .line 5918
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5919
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5925
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livv;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 5904
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 5919
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 4875
    iget-object v0, p0, Livv;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 4876
    const/4 v0, 0x1

    iget-object v1, p0, Livv;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 4878
    :cond_0
    iget-object v0, p0, Livv;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 4879
    const/4 v0, 0x2

    iget-object v1, p0, Livv;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4881
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4882
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 4886
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4887
    iget-object v1, p0, Livv;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 4888
    const/4 v1, 0x1

    iget-object v2, p0, Livv;->a:Ljava/lang/Long;

    .line 4889
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4891
    :cond_0
    iget-object v1, p0, Livv;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 4892
    const/4 v1, 0x2

    iget-object v2, p0, Livv;->b:Ljava/lang/Integer;

    .line 4893
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4895
    :cond_1
    return v0
.end method
