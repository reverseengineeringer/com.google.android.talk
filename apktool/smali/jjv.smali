.class public final Ljjv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljjt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2820
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3825
    iput-object v0, p0, Ljjv;->a:Ljava/lang/Integer;

    .line 3826
    iput-object v0, p0, Ljjv;->b:Ljjt;

    .line 3827
    iput-object v0, p0, Ljjv;->eD:Llyd;

    .line 3828
    const/4 v0, -0x1

    iput v0, p0, Ljjv;->eE:I

    .line 2822
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3863
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3864
    sparse-switch v0, :sswitch_data_0

    .line 3868
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3869
    :sswitch_0
    return-object p0

    .line 3874
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3875
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3880
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjv;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3886
    :sswitch_2
    iget-object v0, p0, Ljjv;->b:Ljjt;

    if-nez v0, :cond_1

    .line 3887
    new-instance v0, Ljjt;

    invoke-direct {v0}, Ljjt;-><init>()V

    iput-object v0, p0, Ljjv;->b:Ljjt;

    .line 3889
    :cond_1
    iget-object v0, p0, Ljjv;->b:Ljjt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3864
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 3875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2835
    iget-object v0, p0, Ljjv;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2836
    const/4 v0, 0x1

    iget-object v1, p0, Ljjv;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2838
    :cond_0
    iget-object v0, p0, Ljjv;->b:Ljjt;

    if-eqz v0, :cond_1

    .line 2839
    const/4 v0, 0x2

    iget-object v1, p0, Ljjv;->b:Ljjt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2841
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2842
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2846
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2847
    iget-object v1, p0, Ljjv;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2848
    const/4 v1, 0x1

    iget-object v2, p0, Ljjv;->a:Ljava/lang/Integer;

    .line 2849
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2851
    :cond_0
    iget-object v1, p0, Ljjv;->b:Ljjt;

    if-eqz v1, :cond_1

    .line 2852
    const/4 v1, 0x2

    iget-object v2, p0, Ljjv;->b:Ljjt;

    .line 2853
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2855
    :cond_1
    return v0
.end method
