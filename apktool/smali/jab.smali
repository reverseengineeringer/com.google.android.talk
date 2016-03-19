.class public final Ljab;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljab;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmca;

.field public b:Lmce;

.field public c:Lluo;

.field public d:Lmga;

.field public e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    iput-object v0, p0, Ljab;->a:Lmca;

    .line 42
    iput-object v0, p0, Ljab;->b:Lmce;

    .line 43
    iput-object v0, p0, Ljab;->c:Lluo;

    .line 44
    iput-object v0, p0, Ljab;->d:Lmga;

    .line 45
    iput-object v0, p0, Ljab;->e:Ljava/lang/Long;

    .line 46
    iput-object v0, p0, Ljab;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljab;->eE:I

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1103
    sparse-switch v0, :sswitch_data_0

    .line 1107
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    :sswitch_0
    return-object p0

    .line 1113
    :sswitch_1
    iget-object v0, p0, Ljab;->a:Lmca;

    if-nez v0, :cond_1

    .line 1114
    new-instance v0, Lmca;

    invoke-direct {v0}, Lmca;-><init>()V

    iput-object v0, p0, Ljab;->a:Lmca;

    .line 1116
    :cond_1
    iget-object v0, p0, Ljab;->a:Lmca;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1120
    :sswitch_2
    iget-object v0, p0, Ljab;->b:Lmce;

    if-nez v0, :cond_2

    .line 1121
    new-instance v0, Lmce;

    invoke-direct {v0}, Lmce;-><init>()V

    iput-object v0, p0, Ljab;->b:Lmce;

    .line 1123
    :cond_2
    iget-object v0, p0, Ljab;->b:Lmce;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1127
    :sswitch_3
    iget-object v0, p0, Ljab;->c:Lluo;

    if-nez v0, :cond_3

    .line 1128
    new-instance v0, Lluo;

    invoke-direct {v0}, Lluo;-><init>()V

    iput-object v0, p0, Ljab;->c:Lluo;

    .line 1130
    :cond_3
    iget-object v0, p0, Ljab;->c:Lluo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1134
    :sswitch_4
    iget-object v0, p0, Ljab;->d:Lmga;

    if-nez v0, :cond_4

    .line 1135
    new-instance v0, Lmga;

    invoke-direct {v0}, Lmga;-><init>()V

    iput-object v0, p0, Ljab;->d:Lmga;

    .line 1137
    :cond_4
    iget-object v0, p0, Ljab;->d:Lmga;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1141
    :sswitch_5
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljab;->e:Ljava/lang/Long;

    goto :goto_0

    .line 1103
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Ljab;->a:Lmca;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Ljab;->a:Lmca;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_0
    iget-object v0, p0, Ljab;->b:Lmce;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Ljab;->b:Lmce;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 59
    :cond_1
    iget-object v0, p0, Ljab;->c:Lluo;

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x3

    iget-object v1, p0, Ljab;->c:Lluo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 62
    :cond_2
    iget-object v0, p0, Ljab;->d:Lmga;

    if-eqz v0, :cond_3

    .line 63
    const/4 v0, 0x4

    iget-object v1, p0, Ljab;->d:Lmga;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 65
    :cond_3
    iget-object v0, p0, Ljab;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 66
    const/4 v0, 0x5

    iget-object v1, p0, Ljab;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 68
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 69
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 74
    iget-object v1, p0, Ljab;->a:Lmca;

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x1

    iget-object v2, p0, Ljab;->a:Lmca;

    .line 76
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_0
    iget-object v1, p0, Ljab;->b:Lmce;

    if-eqz v1, :cond_1

    .line 79
    const/4 v1, 0x2

    iget-object v2, p0, Ljab;->b:Lmce;

    .line 80
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_1
    iget-object v1, p0, Ljab;->c:Lluo;

    if-eqz v1, :cond_2

    .line 83
    const/4 v1, 0x3

    iget-object v2, p0, Ljab;->c:Lluo;

    .line 84
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_2
    iget-object v1, p0, Ljab;->d:Lmga;

    if-eqz v1, :cond_3

    .line 87
    const/4 v1, 0x4

    iget-object v2, p0, Ljab;->d:Lmga;

    .line 88
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_3
    iget-object v1, p0, Ljab;->e:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 91
    const/4 v1, 0x5

    iget-object v2, p0, Ljab;->e:Ljava/lang/Long;

    .line 92
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_4
    return v0
.end method
