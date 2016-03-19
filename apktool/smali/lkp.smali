.class public final Llkp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llko;

.field public b:Lljg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2024
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3029
    iput-object v0, p0, Llkp;->a:Llko;

    .line 3030
    iput-object v0, p0, Llkp;->b:Lljg;

    .line 3031
    iput-object v0, p0, Llkp;->eD:Llyd;

    .line 3032
    const/4 v0, -0x1

    iput v0, p0, Llkp;->eE:I

    .line 2026
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3067
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3068
    sparse-switch v0, :sswitch_data_0

    .line 3072
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3073
    :sswitch_0
    return-object p0

    .line 3078
    :sswitch_1
    iget-object v0, p0, Llkp;->a:Llko;

    if-nez v0, :cond_1

    .line 3079
    new-instance v0, Llko;

    invoke-direct {v0}, Llko;-><init>()V

    iput-object v0, p0, Llkp;->a:Llko;

    .line 3081
    :cond_1
    iget-object v0, p0, Llkp;->a:Llko;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3085
    :sswitch_2
    iget-object v0, p0, Llkp;->b:Lljg;

    if-nez v0, :cond_2

    .line 3086
    new-instance v0, Lljg;

    invoke-direct {v0}, Lljg;-><init>()V

    iput-object v0, p0, Llkp;->b:Lljg;

    .line 3088
    :cond_2
    iget-object v0, p0, Llkp;->b:Lljg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3068
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2039
    iget-object v0, p0, Llkp;->a:Llko;

    if-eqz v0, :cond_0

    .line 2040
    const/4 v0, 0x1

    iget-object v1, p0, Llkp;->a:Llko;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2042
    :cond_0
    iget-object v0, p0, Llkp;->b:Lljg;

    if-eqz v0, :cond_1

    .line 2043
    const/4 v0, 0x2

    iget-object v1, p0, Llkp;->b:Lljg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2045
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2046
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2050
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2051
    iget-object v1, p0, Llkp;->a:Llko;

    if-eqz v1, :cond_0

    .line 2052
    const/4 v1, 0x1

    iget-object v2, p0, Llkp;->a:Llko;

    .line 2053
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2055
    :cond_0
    iget-object v1, p0, Llkp;->b:Lljg;

    if-eqz v1, :cond_1

    .line 2056
    const/4 v1, 0x2

    iget-object v2, p0, Llkp;->b:Lljg;

    .line 2057
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2059
    :cond_1
    return v0
.end method
