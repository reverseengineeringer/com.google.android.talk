.class public final Lllg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lllg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmem;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2101
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3106
    iput-object v0, p0, Lllg;->a:Lmem;

    .line 3107
    iput-object v0, p0, Lllg;->b:Ljava/lang/Long;

    .line 3108
    iput-object v0, p0, Lllg;->eD:Llyd;

    .line 3109
    const/4 v0, -0x1

    iput v0, p0, Lllg;->eE:I

    .line 2103
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 3144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3145
    sparse-switch v0, :sswitch_data_0

    .line 3149
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3150
    :sswitch_0
    return-object p0

    .line 3155
    :sswitch_1
    iget-object v0, p0, Lllg;->a:Lmem;

    if-nez v0, :cond_1

    .line 3156
    new-instance v0, Lmem;

    invoke-direct {v0}, Lmem;-><init>()V

    iput-object v0, p0, Lllg;->a:Lmem;

    .line 3158
    :cond_1
    iget-object v0, p0, Lllg;->a:Lmem;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3162
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lllg;->b:Ljava/lang/Long;

    goto :goto_0

    .line 3145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 2116
    iget-object v0, p0, Lllg;->a:Lmem;

    if-eqz v0, :cond_0

    .line 2117
    const/4 v0, 0x1

    iget-object v1, p0, Lllg;->a:Lmem;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2119
    :cond_0
    iget-object v0, p0, Lllg;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2120
    const/4 v0, 0x2

    iget-object v1, p0, Lllg;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 2122
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2123
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 2127
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2128
    iget-object v1, p0, Lllg;->a:Lmem;

    if-eqz v1, :cond_0

    .line 2129
    const/4 v1, 0x1

    iget-object v2, p0, Lllg;->a:Lmem;

    .line 2130
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2132
    :cond_0
    iget-object v1, p0, Lllg;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 2133
    const/4 v1, 0x2

    iget-object v2, p0, Lllg;->b:Ljava/lang/Long;

    .line 2134
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2136
    :cond_1
    return v0
.end method
