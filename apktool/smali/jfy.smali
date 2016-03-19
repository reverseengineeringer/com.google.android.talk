.class public final Ljfy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7050
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7051
    iput-object v0, p0, Ljfy;->a:Ljava/lang/Long;

    .line 7052
    iput-object v0, p0, Ljfy;->b:Ljava/lang/Long;

    .line 7053
    iput-object v0, p0, Ljfy;->c:Ljava/lang/Boolean;

    .line 7054
    iput-object v0, p0, Ljfy;->d:Ljava/lang/Boolean;

    .line 7055
    iput-object v0, p0, Ljfy;->eD:Llyd;

    .line 7056
    const/4 v0, -0x1

    iput v0, p0, Ljfy;->eE:I

    .line 7057
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 9092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9093
    sparse-switch v0, :sswitch_data_0

    .line 9097
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9098
    :sswitch_0
    return-object p0

    .line 9103
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljfy;->a:Ljava/lang/Long;

    goto :goto_0

    .line 9107
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljfy;->b:Ljava/lang/Long;

    goto :goto_0

    .line 9111
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljfy;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 9115
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljfy;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 9093
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
    .locals 4

    .prologue
    .line 7062
    const/4 v0, 0x1

    iget-object v1, p0, Ljfy;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 7063
    const/4 v0, 0x2

    iget-object v1, p0, Ljfy;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 7064
    const/4 v0, 0x3

    iget-object v1, p0, Ljfy;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 7065
    iget-object v0, p0, Ljfy;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 7066
    const/4 v0, 0x4

    iget-object v1, p0, Ljfy;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 7068
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7069
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 7073
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7074
    const/4 v1, 0x1

    iget-object v2, p0, Ljfy;->a:Ljava/lang/Long;

    .line 7075
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7076
    const/4 v1, 0x2

    iget-object v2, p0, Ljfy;->b:Ljava/lang/Long;

    .line 7077
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7078
    const/4 v1, 0x3

    iget-object v2, p0, Ljfy;->c:Ljava/lang/Boolean;

    .line 7079
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 7079
    add-int/2addr v0, v1

    .line 7080
    iget-object v1, p0, Ljfy;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 7081
    const/4 v1, 0x4

    iget-object v2, p0, Ljfy;->d:Ljava/lang/Boolean;

    .line 7082
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 7082
    add-int/2addr v0, v1

    .line 7084
    :cond_0
    return v0
.end method
