.class public final Llgb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v0, p0, Llgb;->a:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Llgb;->b:Ljava/lang/Long;

    .line 40
    iput-object v0, p0, Llgb;->c:Ljava/lang/Long;

    .line 41
    iput-object v0, p0, Llgb;->eD:Llyd;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Llgb;->eE:I

    .line 43
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 3083
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3084
    sparse-switch v0, :sswitch_data_0

    .line 3088
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3089
    :sswitch_0
    return-object p0

    .line 3094
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llgb;->a:Ljava/lang/String;

    goto :goto_0

    .line 3098
    :sswitch_2
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llgb;->b:Ljava/lang/Long;

    goto :goto_0

    .line 3102
    :sswitch_3
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llgb;->c:Ljava/lang/Long;

    goto :goto_0

    .line 3084
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Llgb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iget-object v1, p0, Llgb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 51
    :cond_0
    iget-object v0, p0, Llgb;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x2

    iget-object v1, p0, Llgb;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 54
    :cond_1
    iget-object v0, p0, Llgb;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 55
    const/4 v0, 0x3

    iget-object v1, p0, Llgb;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 57
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 58
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 63
    iget-object v1, p0, Llgb;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x1

    iget-object v2, p0, Llgb;->a:Ljava/lang/String;

    .line 65
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_0
    iget-object v1, p0, Llgb;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 68
    const/4 v1, 0x2

    iget-object v2, p0, Llgb;->b:Ljava/lang/Long;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 69
    add-int/2addr v0, v1

    .line 71
    :cond_1
    iget-object v1, p0, Llgb;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 72
    const/4 v1, 0x3

    iget-object v2, p0, Llgb;->c:Ljava/lang/Long;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 2602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 73
    add-int/2addr v0, v1

    .line 75
    :cond_2
    return v0
.end method
