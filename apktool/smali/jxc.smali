.class public final Ljxc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 999
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2004
    iput-object v0, p0, Ljxc;->a:Ljava/lang/String;

    .line 2005
    iput-object v0, p0, Ljxc;->b:Ljava/lang/Long;

    .line 2006
    iput-object v0, p0, Ljxc;->c:Ljava/lang/Long;

    .line 2007
    iput-object v0, p0, Ljxc;->d:Ljava/lang/Long;

    .line 2008
    iput-object v0, p0, Ljxc;->eD:Llyd;

    .line 2009
    const/4 v0, -0x1

    iput v0, p0, Ljxc;->eE:I

    .line 1001
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2058
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2059
    sparse-switch v0, :sswitch_data_0

    .line 2063
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2064
    :sswitch_0
    return-object p0

    .line 2069
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxc;->a:Ljava/lang/String;

    goto :goto_0

    .line 2073
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljxc;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2077
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljxc;->c:Ljava/lang/Long;

    goto :goto_0

    .line 2081
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljxc;->d:Ljava/lang/Long;

    goto :goto_0

    .line 2059
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 1016
    iget-object v0, p0, Ljxc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1017
    const/4 v0, 0x1

    iget-object v1, p0, Ljxc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1019
    :cond_0
    iget-object v0, p0, Ljxc;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1020
    const/4 v0, 0x2

    iget-object v1, p0, Ljxc;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 1022
    :cond_1
    iget-object v0, p0, Ljxc;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 1023
    const/4 v0, 0x3

    iget-object v1, p0, Ljxc;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 1025
    :cond_2
    iget-object v0, p0, Ljxc;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 1026
    const/4 v0, 0x4

    iget-object v1, p0, Ljxc;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 1028
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1029
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1033
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1034
    iget-object v1, p0, Ljxc;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1035
    const/4 v1, 0x1

    iget-object v2, p0, Ljxc;->a:Ljava/lang/String;

    .line 1036
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1038
    :cond_0
    iget-object v1, p0, Ljxc;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 1039
    const/4 v1, 0x2

    iget-object v2, p0, Ljxc;->b:Ljava/lang/Long;

    .line 1040
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1042
    :cond_1
    iget-object v1, p0, Ljxc;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 1043
    const/4 v1, 0x3

    iget-object v2, p0, Ljxc;->c:Ljava/lang/Long;

    .line 1044
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1046
    :cond_2
    iget-object v1, p0, Ljxc;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 1047
    const/4 v1, 0x4

    iget-object v2, p0, Ljxc;->d:Ljava/lang/Long;

    .line 1048
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1050
    :cond_3
    return v0
.end method
