.class public final Lkgi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lkgl;

.field public c:Ljava/lang/String;

.field public d:Lkgk;

.field public e:Lkgf;

.field public f:Lkge;

.field public g:Lkgv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1082
    iput-object v0, p0, Lkgi;->a:Ljava/lang/Long;

    .line 1083
    iput-object v0, p0, Lkgi;->b:Lkgl;

    .line 1084
    iput-object v0, p0, Lkgi;->c:Ljava/lang/String;

    .line 1085
    iput-object v0, p0, Lkgi;->d:Lkgk;

    .line 1086
    iput-object v0, p0, Lkgi;->e:Lkgf;

    .line 1087
    iput-object v0, p0, Lkgi;->f:Lkge;

    .line 1088
    iput-object v0, p0, Lkgi;->g:Lkgv;

    .line 1089
    iput-object v0, p0, Lkgi;->eD:Llyd;

    .line 1090
    const/4 v0, -0x1

    iput v0, p0, Lkgi;->eE:I

    .line 79
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1160
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1161
    sparse-switch v0, :sswitch_data_0

    .line 1165
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    :sswitch_0
    return-object p0

    .line 1171
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkgi;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1175
    :sswitch_2
    iget-object v0, p0, Lkgi;->b:Lkgl;

    if-nez v0, :cond_1

    .line 1176
    new-instance v0, Lkgl;

    invoke-direct {v0}, Lkgl;-><init>()V

    iput-object v0, p0, Lkgi;->b:Lkgl;

    .line 1178
    :cond_1
    iget-object v0, p0, Lkgi;->b:Lkgl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1182
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkgi;->c:Ljava/lang/String;

    goto :goto_0

    .line 1186
    :sswitch_4
    iget-object v0, p0, Lkgi;->d:Lkgk;

    if-nez v0, :cond_2

    .line 1187
    new-instance v0, Lkgk;

    invoke-direct {v0}, Lkgk;-><init>()V

    iput-object v0, p0, Lkgi;->d:Lkgk;

    .line 1189
    :cond_2
    iget-object v0, p0, Lkgi;->d:Lkgk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1193
    :sswitch_5
    iget-object v0, p0, Lkgi;->e:Lkgf;

    if-nez v0, :cond_3

    .line 1194
    new-instance v0, Lkgf;

    invoke-direct {v0}, Lkgf;-><init>()V

    iput-object v0, p0, Lkgi;->e:Lkgf;

    .line 1196
    :cond_3
    iget-object v0, p0, Lkgi;->e:Lkgf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1200
    :sswitch_6
    iget-object v0, p0, Lkgi;->f:Lkge;

    if-nez v0, :cond_4

    .line 1201
    new-instance v0, Lkge;

    invoke-direct {v0}, Lkge;-><init>()V

    iput-object v0, p0, Lkgi;->f:Lkge;

    .line 1203
    :cond_4
    iget-object v0, p0, Lkgi;->f:Lkge;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1207
    :sswitch_7
    iget-object v0, p0, Lkgi;->g:Lkgv;

    if-nez v0, :cond_5

    .line 1208
    new-instance v0, Lkgv;

    invoke-direct {v0}, Lkgv;-><init>()V

    iput-object v0, p0, Lkgi;->g:Lkgv;

    .line 1210
    :cond_5
    iget-object v0, p0, Lkgi;->g:Lkgv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1161
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lkgi;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iget-object v1, p0, Lkgi;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 100
    :cond_0
    iget-object v0, p0, Lkgi;->b:Lkgl;

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x2

    iget-object v1, p0, Lkgi;->b:Lkgl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lkgi;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 104
    const/4 v0, 0x3

    iget-object v1, p0, Lkgi;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lkgi;->d:Lkgk;

    if-eqz v0, :cond_3

    .line 107
    const/4 v0, 0x4

    iget-object v1, p0, Lkgi;->d:Lkgk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 109
    :cond_3
    iget-object v0, p0, Lkgi;->e:Lkgf;

    if-eqz v0, :cond_4

    .line 110
    const/4 v0, 0x5

    iget-object v1, p0, Lkgi;->e:Lkgf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 112
    :cond_4
    iget-object v0, p0, Lkgi;->f:Lkge;

    if-eqz v0, :cond_5

    .line 113
    const/4 v0, 0x6

    iget-object v1, p0, Lkgi;->f:Lkge;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 115
    :cond_5
    iget-object v0, p0, Lkgi;->g:Lkgv;

    if-eqz v0, :cond_6

    .line 116
    const/4 v0, 0x7

    iget-object v1, p0, Lkgi;->g:Lkgv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 118
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 119
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 123
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 124
    iget-object v1, p0, Lkgi;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x1

    iget-object v2, p0, Lkgi;->a:Ljava/lang/Long;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_0
    iget-object v1, p0, Lkgi;->b:Lkgl;

    if-eqz v1, :cond_1

    .line 129
    const/4 v1, 0x2

    iget-object v2, p0, Lkgi;->b:Lkgl;

    .line 130
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_1
    iget-object v1, p0, Lkgi;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x3

    iget-object v2, p0, Lkgi;->c:Ljava/lang/String;

    .line 134
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_2
    iget-object v1, p0, Lkgi;->d:Lkgk;

    if-eqz v1, :cond_3

    .line 137
    const/4 v1, 0x4

    iget-object v2, p0, Lkgi;->d:Lkgk;

    .line 138
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_3
    iget-object v1, p0, Lkgi;->e:Lkgf;

    if-eqz v1, :cond_4

    .line 141
    const/4 v1, 0x5

    iget-object v2, p0, Lkgi;->e:Lkgf;

    .line 142
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_4
    iget-object v1, p0, Lkgi;->f:Lkge;

    if-eqz v1, :cond_5

    .line 145
    const/4 v1, 0x6

    iget-object v2, p0, Lkgi;->f:Lkge;

    .line 146
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_5
    iget-object v1, p0, Lkgi;->g:Lkgv;

    if-eqz v1, :cond_6

    .line 149
    const/4 v1, 0x7

    iget-object v2, p0, Lkgi;->g:Lkgv;

    .line 150
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_6
    return v0
.end method
