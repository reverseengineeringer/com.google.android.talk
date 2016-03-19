.class public final Llmn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llmn;",
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

    .line 943
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1948
    iput-object v0, p0, Llmn;->a:Ljava/lang/String;

    .line 1949
    iput-object v0, p0, Llmn;->b:Ljava/lang/Long;

    .line 1950
    iput-object v0, p0, Llmn;->c:Ljava/lang/Long;

    .line 1951
    iput-object v0, p0, Llmn;->eD:Llyd;

    .line 1952
    const/4 v0, -0x1

    iput v0, p0, Llmn;->eE:I

    .line 945
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2994
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2995
    sparse-switch v0, :sswitch_data_0

    .line 2999
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3000
    :sswitch_0
    return-object p0

    .line 3005
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmn;->a:Ljava/lang/String;

    goto :goto_0

    .line 3009
    :sswitch_2
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llmn;->b:Ljava/lang/Long;

    goto :goto_0

    .line 3013
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llmn;->c:Ljava/lang/Long;

    goto :goto_0

    .line 2995
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 959
    iget-object v0, p0, Llmn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 960
    const/4 v0, 0x1

    iget-object v1, p0, Llmn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 962
    :cond_0
    iget-object v0, p0, Llmn;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 963
    const/4 v0, 0x2

    iget-object v1, p0, Llmn;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 965
    :cond_1
    iget-object v0, p0, Llmn;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 966
    const/4 v0, 0x3

    iget-object v1, p0, Llmn;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 968
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 969
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 973
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 974
    iget-object v1, p0, Llmn;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 975
    const/4 v1, 0x1

    iget-object v2, p0, Llmn;->a:Ljava/lang/String;

    .line 976
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 978
    :cond_0
    iget-object v1, p0, Llmn;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 979
    const/4 v1, 0x2

    iget-object v2, p0, Llmn;->b:Ljava/lang/Long;

    .line 980
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 2602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 980
    add-int/2addr v0, v1

    .line 982
    :cond_1
    iget-object v1, p0, Llmn;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 983
    const/4 v1, 0x3

    iget-object v2, p0, Llmn;->c:Ljava/lang/Long;

    .line 984
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 986
    :cond_2
    return v0
.end method
