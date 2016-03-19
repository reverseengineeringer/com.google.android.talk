.class public final Ljih;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljih;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljid;

.field public e:Ljif;

.field public f:Ljik;

.field public g:Ljie;

.field public h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1087
    iput-object v0, p0, Ljih;->a:Ljava/lang/String;

    .line 1088
    iput-object v0, p0, Ljih;->b:Ljava/lang/Integer;

    .line 1089
    iput-object v0, p0, Ljih;->c:Ljava/lang/Integer;

    .line 1090
    iput-object v0, p0, Ljih;->d:Ljid;

    .line 1091
    iput-object v0, p0, Ljih;->e:Ljif;

    .line 1092
    iput-object v0, p0, Ljih;->f:Ljik;

    .line 1093
    iput-object v0, p0, Ljih;->g:Ljie;

    .line 1094
    iput-object v0, p0, Ljih;->h:Ljava/lang/Integer;

    .line 1095
    iput-object v0, p0, Ljih;->eD:Llyd;

    .line 1096
    const/4 v0, -0x1

    iput v0, p0, Ljih;->eE:I

    .line 84
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1174
    sparse-switch v0, :sswitch_data_0

    .line 1178
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    :sswitch_0
    return-object p0

    .line 1184
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljih;->a:Ljava/lang/String;

    goto :goto_0

    .line 1188
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1189
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1202
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljih;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1208
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1209
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1212
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljih;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1218
    :sswitch_4
    iget-object v0, p0, Ljih;->d:Ljid;

    if-nez v0, :cond_1

    .line 1219
    new-instance v0, Ljid;

    invoke-direct {v0}, Ljid;-><init>()V

    iput-object v0, p0, Ljih;->d:Ljid;

    .line 1221
    :cond_1
    iget-object v0, p0, Ljih;->d:Ljid;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1225
    :sswitch_5
    iget-object v0, p0, Ljih;->e:Ljif;

    if-nez v0, :cond_2

    .line 1226
    new-instance v0, Ljif;

    invoke-direct {v0}, Ljif;-><init>()V

    iput-object v0, p0, Ljih;->e:Ljif;

    .line 1228
    :cond_2
    iget-object v0, p0, Ljih;->e:Ljif;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1232
    :sswitch_6
    iget-object v0, p0, Ljih;->f:Ljik;

    if-nez v0, :cond_3

    .line 1233
    new-instance v0, Ljik;

    invoke-direct {v0}, Ljik;-><init>()V

    iput-object v0, p0, Ljih;->f:Ljik;

    .line 1235
    :cond_3
    iget-object v0, p0, Ljih;->f:Ljik;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1239
    :sswitch_7
    iget-object v0, p0, Ljih;->g:Ljie;

    if-nez v0, :cond_4

    .line 1240
    new-instance v0, Ljie;

    invoke-direct {v0}, Ljie;-><init>()V

    iput-object v0, p0, Ljih;->g:Ljie;

    .line 1242
    :cond_4
    iget-object v0, p0, Ljih;->g:Ljie;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1246
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1247
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1251
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljih;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1174
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    .line 1189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1209
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1247
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Ljih;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iget-object v1, p0, Ljih;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Ljih;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x2

    iget-object v1, p0, Ljih;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 109
    :cond_1
    iget-object v0, p0, Ljih;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 110
    const/4 v0, 0x3

    iget-object v1, p0, Ljih;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 112
    :cond_2
    iget-object v0, p0, Ljih;->d:Ljid;

    if-eqz v0, :cond_3

    .line 113
    const/4 v0, 0x4

    iget-object v1, p0, Ljih;->d:Ljid;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 115
    :cond_3
    iget-object v0, p0, Ljih;->e:Ljif;

    if-eqz v0, :cond_4

    .line 116
    const/4 v0, 0x5

    iget-object v1, p0, Ljih;->e:Ljif;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 118
    :cond_4
    iget-object v0, p0, Ljih;->f:Ljik;

    if-eqz v0, :cond_5

    .line 119
    const/4 v0, 0x6

    iget-object v1, p0, Ljih;->f:Ljik;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 121
    :cond_5
    iget-object v0, p0, Ljih;->g:Ljie;

    if-eqz v0, :cond_6

    .line 122
    const/4 v0, 0x7

    iget-object v1, p0, Ljih;->g:Ljie;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 124
    :cond_6
    iget-object v0, p0, Ljih;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 125
    const/16 v0, 0x8

    iget-object v1, p0, Ljih;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 127
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 128
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 133
    iget-object v1, p0, Ljih;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x1

    iget-object v2, p0, Ljih;->a:Ljava/lang/String;

    .line 135
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_0
    iget-object v1, p0, Ljih;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 138
    const/4 v1, 0x2

    iget-object v2, p0, Ljih;->b:Ljava/lang/Integer;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_1
    iget-object v1, p0, Ljih;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 142
    const/4 v1, 0x3

    iget-object v2, p0, Ljih;->c:Ljava/lang/Integer;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_2
    iget-object v1, p0, Ljih;->d:Ljid;

    if-eqz v1, :cond_3

    .line 146
    const/4 v1, 0x4

    iget-object v2, p0, Ljih;->d:Ljid;

    .line 147
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_3
    iget-object v1, p0, Ljih;->e:Ljif;

    if-eqz v1, :cond_4

    .line 150
    const/4 v1, 0x5

    iget-object v2, p0, Ljih;->e:Ljif;

    .line 151
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_4
    iget-object v1, p0, Ljih;->f:Ljik;

    if-eqz v1, :cond_5

    .line 154
    const/4 v1, 0x6

    iget-object v2, p0, Ljih;->f:Ljik;

    .line 155
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_5
    iget-object v1, p0, Ljih;->g:Ljie;

    if-eqz v1, :cond_6

    .line 158
    const/4 v1, 0x7

    iget-object v2, p0, Ljih;->g:Ljie;

    .line 159
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_6
    iget-object v1, p0, Ljih;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 162
    const/16 v1, 0x8

    iget-object v2, p0, Ljih;->h:Ljava/lang/Integer;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_7
    return v0
.end method
