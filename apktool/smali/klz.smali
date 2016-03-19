.class public final Lklz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lklz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 835
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1840
    iput-object v0, p0, Lklz;->a:Ljava/lang/Integer;

    .line 1841
    iput-object v0, p0, Lklz;->eD:Llyd;

    .line 1842
    const/4 v0, -0x1

    iput v0, p0, Lklz;->eE:I

    .line 837
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1870
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1871
    sparse-switch v0, :sswitch_data_0

    .line 1875
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1876
    :sswitch_0
    return-object p0

    .line 1881
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklz;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1871
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lklz;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 850
    const/4 v0, 0x1

    iget-object v1, p0, Lklz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 852
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 853
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 857
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 858
    iget-object v1, p0, Lklz;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 859
    const/4 v1, 0x1

    iget-object v2, p0, Lklz;->a:Ljava/lang/Integer;

    .line 860
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 862
    :cond_0
    return v0
.end method
