.class public final Ljop;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljop;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Ljop;


# instance fields
.field public a:Ljpp;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljoq;

.field public e:Ljog;

.field public f:Ljor;

.field public g:Ljoh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1091
    iput-object v0, p0, Ljop;->a:Ljpp;

    .line 1092
    iput-object v0, p0, Ljop;->b:Ljava/lang/String;

    .line 1093
    iput-object v0, p0, Ljop;->c:Ljava/lang/Integer;

    .line 1094
    iput-object v0, p0, Ljop;->d:Ljoq;

    .line 1095
    iput-object v0, p0, Ljop;->e:Ljog;

    .line 1096
    iput-object v0, p0, Ljop;->f:Ljor;

    .line 1097
    iput-object v0, p0, Ljop;->g:Ljoh;

    .line 1098
    iput-object v0, p0, Ljop;->eD:Llyd;

    .line 1099
    const/4 v0, -0x1

    iput v0, p0, Ljop;->eE:I

    .line 88
    return-void
.end method

.method public static d()[Ljop;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Ljop;->h:[Ljop;

    if-nez v0, :cond_1

    .line 53
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Ljop;->h:[Ljop;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [Ljop;

    sput-object v0, Ljop;->h:[Ljop;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Ljop;->h:[Ljop;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1169
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1170
    sparse-switch v0, :sswitch_data_0

    .line 1174
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    :sswitch_0
    return-object p0

    .line 1180
    :sswitch_1
    iget-object v0, p0, Ljop;->a:Ljpp;

    if-nez v0, :cond_1

    .line 1181
    new-instance v0, Ljpp;

    invoke-direct {v0}, Ljpp;-><init>()V

    iput-object v0, p0, Ljop;->a:Ljpp;

    .line 1183
    :cond_1
    iget-object v0, p0, Ljop;->a:Ljpp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1187
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljop;->b:Ljava/lang/String;

    goto :goto_0

    .line 1191
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1192
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1201
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljop;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1207
    :sswitch_4
    iget-object v0, p0, Ljop;->d:Ljoq;

    if-nez v0, :cond_2

    .line 1208
    new-instance v0, Ljoq;

    invoke-direct {v0}, Ljoq;-><init>()V

    iput-object v0, p0, Ljop;->d:Ljoq;

    .line 1210
    :cond_2
    iget-object v0, p0, Ljop;->d:Ljoq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1214
    :sswitch_5
    iget-object v0, p0, Ljop;->e:Ljog;

    if-nez v0, :cond_3

    .line 1215
    new-instance v0, Ljog;

    invoke-direct {v0}, Ljog;-><init>()V

    iput-object v0, p0, Ljop;->e:Ljog;

    .line 1217
    :cond_3
    iget-object v0, p0, Ljop;->e:Ljog;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1221
    :sswitch_6
    iget-object v0, p0, Ljop;->f:Ljor;

    if-nez v0, :cond_4

    .line 1222
    new-instance v0, Ljor;

    invoke-direct {v0}, Ljor;-><init>()V

    iput-object v0, p0, Ljop;->f:Ljor;

    .line 1224
    :cond_4
    iget-object v0, p0, Ljop;->f:Ljor;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1228
    :sswitch_7
    iget-object v0, p0, Ljop;->g:Ljoh;

    if-nez v0, :cond_5

    .line 1229
    new-instance v0, Ljoh;

    invoke-direct {v0}, Ljoh;-><init>()V

    iput-object v0, p0, Ljop;->g:Ljoh;

    .line 1231
    :cond_5
    iget-object v0, p0, Ljop;->g:Ljoh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1170
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 1192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Ljop;->a:Ljpp;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    iget-object v1, p0, Ljop;->a:Ljpp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 109
    :cond_0
    iget-object v0, p0, Ljop;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x2

    iget-object v1, p0, Ljop;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 112
    :cond_1
    iget-object v0, p0, Ljop;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 113
    const/4 v0, 0x3

    iget-object v1, p0, Ljop;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 115
    :cond_2
    iget-object v0, p0, Ljop;->d:Ljoq;

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x4

    iget-object v1, p0, Ljop;->d:Ljoq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 118
    :cond_3
    iget-object v0, p0, Ljop;->e:Ljog;

    if-eqz v0, :cond_4

    .line 119
    const/4 v0, 0x5

    iget-object v1, p0, Ljop;->e:Ljog;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 121
    :cond_4
    iget-object v0, p0, Ljop;->f:Ljor;

    if-eqz v0, :cond_5

    .line 122
    const/4 v0, 0x6

    iget-object v1, p0, Ljop;->f:Ljor;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 124
    :cond_5
    iget-object v0, p0, Ljop;->g:Ljoh;

    if-eqz v0, :cond_6

    .line 125
    const/4 v0, 0x7

    iget-object v1, p0, Ljop;->g:Ljoh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 127
    :cond_6
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
    iget-object v1, p0, Ljop;->a:Ljpp;

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x1

    iget-object v2, p0, Ljop;->a:Ljpp;

    .line 135
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_0
    iget-object v1, p0, Ljop;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 138
    const/4 v1, 0x2

    iget-object v2, p0, Ljop;->b:Ljava/lang/String;

    .line 139
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_1
    iget-object v1, p0, Ljop;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 142
    const/4 v1, 0x3

    iget-object v2, p0, Ljop;->c:Ljava/lang/Integer;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_2
    iget-object v1, p0, Ljop;->d:Ljoq;

    if-eqz v1, :cond_3

    .line 146
    const/4 v1, 0x4

    iget-object v2, p0, Ljop;->d:Ljoq;

    .line 147
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_3
    iget-object v1, p0, Ljop;->e:Ljog;

    if-eqz v1, :cond_4

    .line 150
    const/4 v1, 0x5

    iget-object v2, p0, Ljop;->e:Ljog;

    .line 151
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_4
    iget-object v1, p0, Ljop;->f:Ljor;

    if-eqz v1, :cond_5

    .line 154
    const/4 v1, 0x6

    iget-object v2, p0, Ljop;->f:Ljor;

    .line 155
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_5
    iget-object v1, p0, Ljop;->g:Ljoh;

    if-eqz v1, :cond_6

    .line 158
    const/4 v1, 0x7

    iget-object v2, p0, Ljop;->g:Ljoh;

    .line 159
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_6
    return v0
.end method
