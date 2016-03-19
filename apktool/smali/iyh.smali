.class public final Liyh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lizb;

.field public apiHeader:Liyd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2075
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3080
    iput-object v0, p0, Liyh;->apiHeader:Liyd;

    .line 3081
    iput-object v0, p0, Liyh;->a:Lizb;

    .line 3082
    iput-object v0, p0, Liyh;->eD:Llyd;

    .line 3083
    const/4 v0, -0x1

    iput v0, p0, Liyh;->eE:I

    .line 2077
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3118
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3119
    sparse-switch v0, :sswitch_data_0

    .line 3123
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3124
    :sswitch_0
    return-object p0

    .line 3129
    :sswitch_1
    iget-object v0, p0, Liyh;->apiHeader:Liyd;

    if-nez v0, :cond_1

    .line 3130
    new-instance v0, Liyd;

    invoke-direct {v0}, Liyd;-><init>()V

    iput-object v0, p0, Liyh;->apiHeader:Liyd;

    .line 3132
    :cond_1
    iget-object v0, p0, Liyh;->apiHeader:Liyd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3136
    :sswitch_2
    iget-object v0, p0, Liyh;->a:Lizb;

    if-nez v0, :cond_2

    .line 3137
    new-instance v0, Lizb;

    invoke-direct {v0}, Lizb;-><init>()V

    iput-object v0, p0, Liyh;->a:Lizb;

    .line 3139
    :cond_2
    iget-object v0, p0, Liyh;->a:Lizb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3119
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
    .line 2090
    iget-object v0, p0, Liyh;->apiHeader:Liyd;

    if-eqz v0, :cond_0

    .line 2091
    const/4 v0, 0x1

    iget-object v1, p0, Liyh;->apiHeader:Liyd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2093
    :cond_0
    iget-object v0, p0, Liyh;->a:Lizb;

    if-eqz v0, :cond_1

    .line 2094
    const/4 v0, 0x2

    iget-object v1, p0, Liyh;->a:Lizb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2096
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2097
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2101
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2102
    iget-object v1, p0, Liyh;->apiHeader:Liyd;

    if-eqz v1, :cond_0

    .line 2103
    const/4 v1, 0x1

    iget-object v2, p0, Liyh;->apiHeader:Liyd;

    .line 2104
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2106
    :cond_0
    iget-object v1, p0, Liyh;->a:Lizb;

    if-eqz v1, :cond_1

    .line 2107
    const/4 v1, 0x2

    iget-object v2, p0, Liyh;->a:Lizb;

    .line 2108
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2110
    :cond_1
    return v0
.end method
