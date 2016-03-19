.class public final Lkmf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkmf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llcf;

.field public b:[B

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1043
    iput-object v0, p0, Lkmf;->a:Llcf;

    .line 1044
    iput-object v0, p0, Lkmf;->b:[B

    .line 1045
    iput-object v0, p0, Lkmf;->c:Ljava/lang/Long;

    .line 1046
    iput-object v0, p0, Lkmf;->eD:Llyd;

    .line 1047
    const/4 v0, -0x1

    iput v0, p0, Lkmf;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1089
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1090
    sparse-switch v0, :sswitch_data_0

    .line 1094
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    :sswitch_0
    return-object p0

    .line 1100
    :sswitch_1
    iget-object v0, p0, Lkmf;->a:Llcf;

    if-nez v0, :cond_1

    .line 1101
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkmf;->a:Llcf;

    .line 1103
    :cond_1
    iget-object v0, p0, Lkmf;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1107
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkmf;->b:[B

    goto :goto_0

    .line 1111
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkmf;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1090
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lkmf;->a:Llcf;

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lkmf;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lkmf;->b:[B

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x2

    iget-object v1, p0, Lkmf;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 60
    :cond_1
    iget-object v0, p0, Lkmf;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x3

    iget-object v1, p0, Lkmf;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 63
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 64
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 68
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 69
    iget-object v1, p0, Lkmf;->a:Llcf;

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget-object v2, p0, Lkmf;->a:Llcf;

    .line 71
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget-object v1, p0, Lkmf;->b:[B

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x2

    iget-object v2, p0, Lkmf;->b:[B

    .line 75
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_1
    iget-object v1, p0, Lkmf;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 78
    const/4 v1, 0x3

    iget-object v2, p0, Lkmf;->c:Ljava/lang/Long;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    return v0
.end method
