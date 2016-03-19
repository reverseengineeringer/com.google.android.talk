.class public final Ljps;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljps;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2102
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3107
    iput-object v0, p0, Ljps;->a:Ljava/lang/Integer;

    .line 3108
    iput-object v0, p0, Ljps;->b:Ljava/lang/String;

    .line 3109
    iput-object v0, p0, Ljps;->c:Ljava/lang/String;

    .line 3110
    iput-object v0, p0, Ljps;->d:Ljava/lang/Integer;

    .line 3111
    iput-object v0, p0, Ljps;->eD:Llyd;

    .line 3112
    const/4 v0, -0x1

    iput v0, p0, Ljps;->eE:I

    .line 2104
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3161
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3162
    sparse-switch v0, :sswitch_data_0

    .line 3166
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3167
    :sswitch_0
    return-object p0

    .line 3172
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljps;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3176
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljps;->b:Ljava/lang/String;

    goto :goto_0

    .line 3180
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljps;->c:Ljava/lang/String;

    goto :goto_0

    .line 3184
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljps;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 3162
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2119
    iget-object v0, p0, Ljps;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2120
    const/4 v0, 0x1

    iget-object v1, p0, Ljps;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2122
    :cond_0
    iget-object v0, p0, Ljps;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2123
    const/4 v0, 0x2

    iget-object v1, p0, Ljps;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2125
    :cond_1
    iget-object v0, p0, Ljps;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2126
    const/4 v0, 0x3

    iget-object v1, p0, Ljps;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2128
    :cond_2
    iget-object v0, p0, Ljps;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 2129
    const/4 v0, 0x5

    iget-object v1, p0, Ljps;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2131
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2132
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2136
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2137
    iget-object v1, p0, Ljps;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2138
    const/4 v1, 0x1

    iget-object v2, p0, Ljps;->a:Ljava/lang/Integer;

    .line 2139
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2141
    :cond_0
    iget-object v1, p0, Ljps;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2142
    const/4 v1, 0x2

    iget-object v2, p0, Ljps;->b:Ljava/lang/String;

    .line 2143
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2145
    :cond_1
    iget-object v1, p0, Ljps;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2146
    const/4 v1, 0x3

    iget-object v2, p0, Ljps;->c:Ljava/lang/String;

    .line 2147
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2149
    :cond_2
    iget-object v1, p0, Ljps;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 2150
    const/4 v1, 0x5

    iget-object v2, p0, Ljps;->d:Ljava/lang/Integer;

    .line 2151
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2153
    :cond_3
    return v0
.end method
