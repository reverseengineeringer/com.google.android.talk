.class public final Ljnv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Ljpc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1046
    iput-object v0, p0, Ljnv;->a:Ljava/lang/String;

    .line 1047
    iput-object v0, p0, Ljnv;->b:Ljava/lang/Long;

    .line 1048
    iput-object v0, p0, Ljnv;->c:Ljpc;

    .line 1049
    iput-object v0, p0, Ljnv;->eD:Llyd;

    .line 1050
    const/4 v0, -0x1

    iput v0, p0, Ljnv;->eE:I

    .line 43
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1093
    sparse-switch v0, :sswitch_data_0

    .line 1097
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    :sswitch_0
    return-object p0

    .line 1103
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljnv;->a:Ljava/lang/String;

    goto :goto_0

    .line 1107
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljnv;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1111
    :sswitch_3
    iget-object v0, p0, Ljnv;->c:Ljpc;

    if-nez v0, :cond_1

    .line 1112
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljnv;->c:Ljpc;

    .line 1114
    :cond_1
    iget-object v0, p0, Ljnv;->c:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1093
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Ljnv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Ljnv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Ljnv;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    iget-object v1, p0, Ljnv;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 63
    :cond_1
    iget-object v0, p0, Ljnv;->c:Ljpc;

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Ljnv;->c:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 66
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 67
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 71
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 72
    iget-object v1, p0, Ljnv;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget-object v2, p0, Ljnv;->a:Ljava/lang/String;

    .line 74
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Ljnv;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 77
    const/4 v1, 0x2

    iget-object v2, p0, Ljnv;->b:Ljava/lang/Long;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_1
    iget-object v1, p0, Ljnv;->c:Ljpc;

    if-eqz v1, :cond_2

    .line 81
    const/4 v1, 0x3

    iget-object v2, p0, Ljnv;->c:Ljpc;

    .line 82
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_2
    return v0
.end method
