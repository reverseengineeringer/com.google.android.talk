.class public final Ljoc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljoc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Ljoc;


# instance fields
.field public a:Ljqn;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljos;

.field public e:Ljlx;

.field public f:Ljpe;

.field public g:Ljmj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Llyb;-><init>()V

    .line 47
    iput-object v1, p0, Ljoc;->a:Ljqn;

    .line 48
    iput-object v1, p0, Ljoc;->b:Ljava/lang/String;

    .line 49
    const/high16 v0, -0x80000000

    iput v0, p0, Ljoc;->c:I

    .line 50
    iput-object v1, p0, Ljoc;->d:Ljos;

    .line 51
    iput-object v1, p0, Ljoc;->e:Ljlx;

    .line 52
    iput-object v1, p0, Ljoc;->f:Ljpe;

    .line 53
    iput-object v1, p0, Ljoc;->g:Ljmj;

    .line 54
    iput-object v1, p0, Ljoc;->eD:Llyd;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Ljoc;->eE:I

    .line 56
    return-void
.end method

.method public static d()[Ljoc;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljoc;->h:[Ljoc;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Ljoc;->h:[Ljoc;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljoc;

    sput-object v0, Ljoc;->h:[Ljoc;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Ljoc;->h:[Ljoc;

    return-object v0

    .line 18
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
    .line 1124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1125
    sparse-switch v0, :sswitch_data_0

    .line 1129
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    :sswitch_0
    return-object p0

    .line 1135
    :sswitch_1
    iget-object v0, p0, Ljoc;->a:Ljqn;

    if-nez v0, :cond_1

    .line 1136
    new-instance v0, Ljqn;

    invoke-direct {v0}, Ljqn;-><init>()V

    iput-object v0, p0, Ljoc;->a:Ljqn;

    .line 1138
    :cond_1
    iget-object v0, p0, Ljoc;->a:Ljqn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1142
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljoc;->b:Ljava/lang/String;

    goto :goto_0

    .line 1146
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1147
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1156
    :pswitch_0
    iput v0, p0, Ljoc;->c:I

    goto :goto_0

    .line 1162
    :sswitch_4
    iget-object v0, p0, Ljoc;->d:Ljos;

    if-nez v0, :cond_2

    .line 1163
    new-instance v0, Ljos;

    invoke-direct {v0}, Ljos;-><init>()V

    iput-object v0, p0, Ljoc;->d:Ljos;

    .line 1165
    :cond_2
    iget-object v0, p0, Ljoc;->d:Ljos;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1169
    :sswitch_5
    iget-object v0, p0, Ljoc;->e:Ljlx;

    if-nez v0, :cond_3

    .line 1170
    new-instance v0, Ljlx;

    invoke-direct {v0}, Ljlx;-><init>()V

    iput-object v0, p0, Ljoc;->e:Ljlx;

    .line 1172
    :cond_3
    iget-object v0, p0, Ljoc;->e:Ljlx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1176
    :sswitch_6
    iget-object v0, p0, Ljoc;->f:Ljpe;

    if-nez v0, :cond_4

    .line 1177
    new-instance v0, Ljpe;

    invoke-direct {v0}, Ljpe;-><init>()V

    iput-object v0, p0, Ljoc;->f:Ljpe;

    .line 1179
    :cond_4
    iget-object v0, p0, Ljoc;->f:Ljpe;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1183
    :sswitch_7
    iget-object v0, p0, Ljoc;->g:Ljmj;

    if-nez v0, :cond_5

    .line 1184
    new-instance v0, Ljmj;

    invoke-direct {v0}, Ljmj;-><init>()V

    iput-object v0, p0, Ljoc;->g:Ljmj;

    .line 1186
    :cond_5
    iget-object v0, p0, Ljoc;->g:Ljmj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1125
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

    .line 1147
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
    .line 61
    iget-object v0, p0, Ljoc;->a:Ljqn;

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iget-object v1, p0, Ljoc;->a:Ljqn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 64
    :cond_0
    iget-object v0, p0, Ljoc;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x2

    iget-object v1, p0, Ljoc;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 67
    :cond_1
    iget v0, p0, Ljoc;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 68
    const/4 v0, 0x3

    iget v1, p0, Ljoc;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 70
    :cond_2
    iget-object v0, p0, Ljoc;->d:Ljos;

    if-eqz v0, :cond_3

    .line 71
    const/4 v0, 0x4

    iget-object v1, p0, Ljoc;->d:Ljos;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 73
    :cond_3
    iget-object v0, p0, Ljoc;->e:Ljlx;

    if-eqz v0, :cond_4

    .line 74
    const/4 v0, 0x5

    iget-object v1, p0, Ljoc;->e:Ljlx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 76
    :cond_4
    iget-object v0, p0, Ljoc;->f:Ljpe;

    if-eqz v0, :cond_5

    .line 77
    const/4 v0, 0x6

    iget-object v1, p0, Ljoc;->f:Ljpe;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 79
    :cond_5
    iget-object v0, p0, Ljoc;->g:Ljmj;

    if-eqz v0, :cond_6

    .line 80
    const/4 v0, 0x7

    iget-object v1, p0, Ljoc;->g:Ljmj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 82
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 83
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 88
    iget-object v1, p0, Ljoc;->a:Ljqn;

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Ljoc;->a:Ljqn;

    .line 90
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    iget-object v1, p0, Ljoc;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x2

    iget-object v2, p0, Ljoc;->b:Ljava/lang/String;

    .line 94
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    iget v1, p0, Ljoc;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 97
    const/4 v1, 0x3

    iget v2, p0, Ljoc;->c:I

    .line 98
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_2
    iget-object v1, p0, Ljoc;->d:Ljos;

    if-eqz v1, :cond_3

    .line 101
    const/4 v1, 0x4

    iget-object v2, p0, Ljoc;->d:Ljos;

    .line 102
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_3
    iget-object v1, p0, Ljoc;->e:Ljlx;

    if-eqz v1, :cond_4

    .line 105
    const/4 v1, 0x5

    iget-object v2, p0, Ljoc;->e:Ljlx;

    .line 106
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_4
    iget-object v1, p0, Ljoc;->f:Ljpe;

    if-eqz v1, :cond_5

    .line 109
    const/4 v1, 0x6

    iget-object v2, p0, Ljoc;->f:Ljpe;

    .line 110
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_5
    iget-object v1, p0, Ljoc;->g:Ljmj;

    if-eqz v1, :cond_6

    .line 113
    const/4 v1, 0x7

    iget-object v2, p0, Ljoc;->g:Ljmj;

    .line 114
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_6
    return v0
.end method
