.class public final Ljyp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Llcf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3047
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4052
    iput-object v0, p0, Ljyp;->a:Ljava/lang/Integer;

    .line 4053
    iput-object v0, p0, Ljyp;->b:Llcf;

    .line 4054
    iput-object v0, p0, Ljyp;->eD:Llyd;

    .line 4055
    const/4 v0, -0x1

    iput v0, p0, Ljyp;->eE:I

    .line 3049
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4090
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4091
    sparse-switch v0, :sswitch_data_0

    .line 4095
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4096
    :sswitch_0
    return-object p0

    .line 4101
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4102
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4107
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljyp;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4113
    :sswitch_2
    iget-object v0, p0, Ljyp;->b:Llcf;

    if-nez v0, :cond_1

    .line 4114
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Ljyp;->b:Llcf;

    .line 4116
    :cond_1
    iget-object v0, p0, Ljyp;->b:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4091
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 4102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3062
    iget-object v0, p0, Ljyp;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3063
    const/4 v0, 0x1

    iget-object v1, p0, Ljyp;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3065
    :cond_0
    iget-object v0, p0, Ljyp;->b:Llcf;

    if-eqz v0, :cond_1

    .line 3066
    const/4 v0, 0x2

    iget-object v1, p0, Ljyp;->b:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3068
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3069
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3073
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3074
    iget-object v1, p0, Ljyp;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3075
    const/4 v1, 0x1

    iget-object v2, p0, Ljyp;->a:Ljava/lang/Integer;

    .line 3076
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3078
    :cond_0
    iget-object v1, p0, Ljyp;->b:Llcf;

    if-eqz v1, :cond_1

    .line 3079
    const/4 v1, 0x2

    iget-object v2, p0, Ljyp;->b:Llcf;

    .line 3080
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3082
    :cond_1
    return v0
.end method
