.class public final Llom;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llom;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llol;

.field public b:Llnf;

.field public c:Llil;

.field public d:Llke;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1049
    iput-object v0, p0, Llom;->a:Llol;

    .line 1050
    iput-object v0, p0, Llom;->b:Llnf;

    .line 1051
    iput-object v0, p0, Llom;->c:Llil;

    .line 1052
    iput-object v0, p0, Llom;->d:Llke;

    .line 1053
    iput-object v0, p0, Llom;->e:Ljava/lang/String;

    .line 1054
    iput-object v0, p0, Llom;->eD:Llyd;

    .line 1055
    const/4 v0, -0x1

    iput v0, p0, Llom;->eE:I

    .line 46
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1112
    sparse-switch v0, :sswitch_data_0

    .line 1116
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    :sswitch_0
    return-object p0

    .line 1122
    :sswitch_1
    iget-object v0, p0, Llom;->a:Llol;

    if-nez v0, :cond_1

    .line 1123
    new-instance v0, Llol;

    invoke-direct {v0}, Llol;-><init>()V

    iput-object v0, p0, Llom;->a:Llol;

    .line 1125
    :cond_1
    iget-object v0, p0, Llom;->a:Llol;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1129
    :sswitch_2
    iget-object v0, p0, Llom;->b:Llnf;

    if-nez v0, :cond_2

    .line 1130
    new-instance v0, Llnf;

    invoke-direct {v0}, Llnf;-><init>()V

    iput-object v0, p0, Llom;->b:Llnf;

    .line 1132
    :cond_2
    iget-object v0, p0, Llom;->b:Llnf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1136
    :sswitch_3
    iget-object v0, p0, Llom;->c:Llil;

    if-nez v0, :cond_3

    .line 1137
    new-instance v0, Llil;

    invoke-direct {v0}, Llil;-><init>()V

    iput-object v0, p0, Llom;->c:Llil;

    .line 1139
    :cond_3
    iget-object v0, p0, Llom;->c:Llil;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1143
    :sswitch_4
    iget-object v0, p0, Llom;->d:Llke;

    if-nez v0, :cond_4

    .line 1144
    new-instance v0, Llke;

    invoke-direct {v0}, Llke;-><init>()V

    iput-object v0, p0, Llom;->d:Llke;

    .line 1146
    :cond_4
    iget-object v0, p0, Llom;->d:Llke;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1150
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llom;->e:Ljava/lang/String;

    goto :goto_0

    .line 1112
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Llom;->a:Llol;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iget-object v1, p0, Llom;->a:Llol;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 65
    :cond_0
    iget-object v0, p0, Llom;->b:Llnf;

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x2

    iget-object v1, p0, Llom;->b:Llnf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 68
    :cond_1
    iget-object v0, p0, Llom;->c:Llil;

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x3

    iget-object v1, p0, Llom;->c:Llil;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 71
    :cond_2
    iget-object v0, p0, Llom;->d:Llke;

    if-eqz v0, :cond_3

    .line 72
    const/4 v0, 0x4

    iget-object v1, p0, Llom;->d:Llke;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 74
    :cond_3
    iget-object v0, p0, Llom;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x5

    iget-object v1, p0, Llom;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 77
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 78
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 83
    iget-object v1, p0, Llom;->a:Llol;

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x1

    iget-object v2, p0, Llom;->a:Llol;

    .line 85
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_0
    iget-object v1, p0, Llom;->b:Llnf;

    if-eqz v1, :cond_1

    .line 88
    const/4 v1, 0x2

    iget-object v2, p0, Llom;->b:Llnf;

    .line 89
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_1
    iget-object v1, p0, Llom;->c:Llil;

    if-eqz v1, :cond_2

    .line 92
    const/4 v1, 0x3

    iget-object v2, p0, Llom;->c:Llil;

    .line 93
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_2
    iget-object v1, p0, Llom;->d:Llke;

    if-eqz v1, :cond_3

    .line 96
    const/4 v1, 0x4

    iget-object v2, p0, Llom;->d:Llke;

    .line 97
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_3
    iget-object v1, p0, Llom;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 100
    const/4 v1, 0x5

    iget-object v2, p0, Llom;->e:Ljava/lang/String;

    .line 101
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_4
    return v0
.end method
