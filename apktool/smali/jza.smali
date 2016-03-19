.class public final Ljza;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljza;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 891
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1896
    iput-object v0, p0, Ljza;->a:Ljava/lang/Boolean;

    .line 1897
    iput-object v0, p0, Ljza;->b:Ljava/lang/Long;

    .line 1898
    iput-object v0, p0, Ljza;->eD:Llyd;

    .line 1899
    const/4 v0, -0x1

    iput v0, p0, Ljza;->eE:I

    .line 893
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2934
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2935
    sparse-switch v0, :sswitch_data_0

    .line 2939
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2940
    :sswitch_0
    return-object p0

    .line 2945
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljza;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2949
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljza;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2935
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 906
    iget-object v0, p0, Ljza;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 907
    const/4 v0, 0x1

    iget-object v1, p0, Ljza;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 909
    :cond_0
    iget-object v0, p0, Ljza;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 910
    const/4 v0, 0x2

    iget-object v1, p0, Ljza;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 912
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 913
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 917
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 918
    iget-object v1, p0, Ljza;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 919
    const/4 v1, 0x1

    iget-object v2, p0, Ljza;->a:Ljava/lang/Boolean;

    .line 920
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 920
    add-int/2addr v0, v1

    .line 922
    :cond_0
    iget-object v1, p0, Ljza;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 923
    const/4 v1, 0x2

    iget-object v2, p0, Ljza;->b:Ljava/lang/Long;

    .line 924
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 926
    :cond_1
    return v0
.end method
