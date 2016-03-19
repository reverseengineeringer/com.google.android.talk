.class public final Ljum;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljum;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2012
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3017
    iput-object v0, p0, Ljum;->a:Ljava/lang/Integer;

    .line 3018
    iput-object v0, p0, Ljum;->b:Ljava/lang/Integer;

    .line 3019
    iput-object v0, p0, Ljum;->c:Ljava/lang/Integer;

    .line 3020
    iput-object v0, p0, Ljum;->d:Ljava/lang/Integer;

    .line 3021
    iput-object v0, p0, Ljum;->eD:Llyd;

    .line 3022
    const/4 v0, -0x1

    iput v0, p0, Ljum;->eE:I

    .line 2014
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3071
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3072
    sparse-switch v0, :sswitch_data_0

    .line 3076
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3077
    :sswitch_0
    return-object p0

    .line 3082
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljum;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3086
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljum;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3090
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljum;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3094
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljum;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 3072
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2029
    iget-object v0, p0, Ljum;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2030
    const/4 v0, 0x1

    iget-object v1, p0, Ljum;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2032
    :cond_0
    iget-object v0, p0, Ljum;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2033
    const/4 v0, 0x2

    iget-object v1, p0, Ljum;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2035
    :cond_1
    iget-object v0, p0, Ljum;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2036
    const/4 v0, 0x3

    iget-object v1, p0, Ljum;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2038
    :cond_2
    iget-object v0, p0, Ljum;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 2039
    const/4 v0, 0x4

    iget-object v1, p0, Ljum;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2041
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2042
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2046
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2047
    iget-object v1, p0, Ljum;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2048
    const/4 v1, 0x1

    iget-object v2, p0, Ljum;->a:Ljava/lang/Integer;

    .line 2049
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2051
    :cond_0
    iget-object v1, p0, Ljum;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2052
    const/4 v1, 0x2

    iget-object v2, p0, Ljum;->b:Ljava/lang/Integer;

    .line 2053
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2055
    :cond_1
    iget-object v1, p0, Ljum;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2056
    const/4 v1, 0x3

    iget-object v2, p0, Ljum;->c:Ljava/lang/Integer;

    .line 2057
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2059
    :cond_2
    iget-object v1, p0, Ljum;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 2060
    const/4 v1, 0x4

    iget-object v2, p0, Ljum;->d:Ljava/lang/Integer;

    .line 2061
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2063
    :cond_3
    return v0
.end method
