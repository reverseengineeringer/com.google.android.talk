.class public final Ljzw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25007
    invoke-direct {p0}, Llyb;-><init>()V

    .line 26012
    iput-object v0, p0, Ljzw;->a:Ljava/lang/Long;

    .line 26013
    iput-object v0, p0, Ljzw;->b:Ljava/lang/Double;

    .line 26014
    iput-object v0, p0, Ljzw;->c:Ljava/lang/String;

    .line 26015
    iput-object v0, p0, Ljzw;->d:Ljava/lang/Boolean;

    .line 26016
    iput-object v0, p0, Ljzw;->eD:Llyd;

    .line 26017
    const/4 v0, -0x1

    iput v0, p0, Ljzw;->eE:I

    .line 25009
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 27066
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 27067
    sparse-switch v0, :sswitch_data_0

    .line 27071
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27072
    :sswitch_0
    return-object p0

    .line 27077
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljzw;->a:Ljava/lang/Long;

    goto :goto_0

    .line 27081
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljzw;->b:Ljava/lang/Double;

    goto :goto_0

    .line 27085
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljzw;->c:Ljava/lang/String;

    goto :goto_0

    .line 27089
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzw;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 27067
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 25024
    iget-object v0, p0, Ljzw;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 25025
    const/4 v0, 0x1

    iget-object v1, p0, Ljzw;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 25027
    :cond_0
    iget-object v0, p0, Ljzw;->b:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 25028
    const/4 v0, 0x2

    iget-object v1, p0, Ljzw;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 25030
    :cond_1
    iget-object v0, p0, Ljzw;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 25031
    const/4 v0, 0x3

    iget-object v1, p0, Ljzw;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 25033
    :cond_2
    iget-object v0, p0, Ljzw;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 25034
    const/4 v0, 0x4

    iget-object v1, p0, Ljzw;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 25036
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 25037
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 25041
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 25042
    iget-object v1, p0, Ljzw;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 25043
    const/4 v1, 0x1

    iget-object v2, p0, Ljzw;->a:Ljava/lang/Long;

    .line 25044
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 25046
    :cond_0
    iget-object v1, p0, Ljzw;->b:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 25047
    const/4 v1, 0x2

    iget-object v2, p0, Ljzw;->b:Ljava/lang/Double;

    .line 25048
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 26561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 25048
    add-int/2addr v0, v1

    .line 25050
    :cond_1
    iget-object v1, p0, Ljzw;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 25051
    const/4 v1, 0x3

    iget-object v2, p0, Ljzw;->c:Ljava/lang/String;

    .line 25052
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25054
    :cond_2
    iget-object v1, p0, Ljzw;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 25055
    const/4 v1, 0x4

    iget-object v2, p0, Ljzw;->d:Ljava/lang/Boolean;

    .line 25056
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25056
    add-int/2addr v0, v1

    .line 25058
    :cond_3
    return v0
.end method
