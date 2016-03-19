.class public final Ljip;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljip;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Ljip;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljhi;

.field public c:I

.field public d:Ljho;

.field public e:Ljla;

.field public f:Ljhk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Llyb;-><init>()V

    .line 53
    iput-object v1, p0, Ljip;->a:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Ljip;->b:Ljhi;

    .line 55
    const/high16 v0, -0x80000000

    iput v0, p0, Ljip;->c:I

    .line 56
    iput-object v1, p0, Ljip;->d:Ljho;

    .line 57
    iput-object v1, p0, Ljip;->e:Ljla;

    .line 58
    iput-object v1, p0, Ljip;->f:Ljhk;

    .line 59
    iput-object v1, p0, Ljip;->eD:Llyd;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljip;->eE:I

    .line 61
    return-void
.end method

.method public static d()[Ljip;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Ljip;->g:[Ljip;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Ljip;->g:[Ljip;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Ljip;

    sput-object v0, Ljip;->g:[Ljip;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Ljip;->g:[Ljip;

    return-object v0

    .line 27
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
    .line 1122
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1123
    sparse-switch v0, :sswitch_data_0

    .line 1127
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    :sswitch_0
    return-object p0

    .line 1133
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljip;->a:Ljava/lang/String;

    goto :goto_0

    .line 1137
    :sswitch_2
    iget-object v0, p0, Ljip;->b:Ljhi;

    if-nez v0, :cond_1

    .line 1138
    new-instance v0, Ljhi;

    invoke-direct {v0}, Ljhi;-><init>()V

    iput-object v0, p0, Ljip;->b:Ljhi;

    .line 1140
    :cond_1
    iget-object v0, p0, Ljip;->b:Ljhi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1144
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1145
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1151
    :pswitch_0
    iput v0, p0, Ljip;->c:I

    goto :goto_0

    .line 1157
    :sswitch_4
    iget-object v0, p0, Ljip;->d:Ljho;

    if-nez v0, :cond_2

    .line 1158
    new-instance v0, Ljho;

    invoke-direct {v0}, Ljho;-><init>()V

    iput-object v0, p0, Ljip;->d:Ljho;

    .line 1160
    :cond_2
    iget-object v0, p0, Ljip;->d:Ljho;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1164
    :sswitch_5
    iget-object v0, p0, Ljip;->e:Ljla;

    if-nez v0, :cond_3

    .line 1165
    new-instance v0, Ljla;

    invoke-direct {v0}, Ljla;-><init>()V

    iput-object v0, p0, Ljip;->e:Ljla;

    .line 1167
    :cond_3
    iget-object v0, p0, Ljip;->e:Ljla;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1171
    :sswitch_6
    iget-object v0, p0, Ljip;->f:Ljhk;

    if-nez v0, :cond_4

    .line 1172
    new-instance v0, Ljhk;

    invoke-direct {v0}, Ljhk;-><init>()V

    iput-object v0, p0, Ljip;->f:Ljhk;

    .line 1174
    :cond_4
    iget-object v0, p0, Ljip;->f:Ljhk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1123
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 1145
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 66
    iget-object v0, p0, Ljip;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iget-object v1, p0, Ljip;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Ljip;->b:Ljhi;

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x2

    iget-object v1, p0, Ljip;->b:Ljhi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 72
    :cond_1
    iget v0, p0, Ljip;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 73
    const/4 v0, 0x3

    iget v1, p0, Ljip;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 75
    :cond_2
    iget-object v0, p0, Ljip;->d:Ljho;

    if-eqz v0, :cond_3

    .line 76
    const/4 v0, 0x4

    iget-object v1, p0, Ljip;->d:Ljho;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 78
    :cond_3
    iget-object v0, p0, Ljip;->e:Ljla;

    if-eqz v0, :cond_4

    .line 79
    const/4 v0, 0x5

    iget-object v1, p0, Ljip;->e:Ljla;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 81
    :cond_4
    iget-object v0, p0, Ljip;->f:Ljhk;

    if-eqz v0, :cond_5

    .line 82
    const/4 v0, 0x6

    iget-object v1, p0, Ljip;->f:Ljhk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 84
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 85
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 90
    iget-object v1, p0, Ljip;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    iget-object v2, p0, Ljip;->a:Ljava/lang/String;

    .line 92
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_0
    iget-object v1, p0, Ljip;->b:Ljhi;

    if-eqz v1, :cond_1

    .line 95
    const/4 v1, 0x2

    iget-object v2, p0, Ljip;->b:Ljhi;

    .line 96
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_1
    iget v1, p0, Ljip;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 99
    const/4 v1, 0x3

    iget v2, p0, Ljip;->c:I

    .line 100
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_2
    iget-object v1, p0, Ljip;->d:Ljho;

    if-eqz v1, :cond_3

    .line 103
    const/4 v1, 0x4

    iget-object v2, p0, Ljip;->d:Ljho;

    .line 104
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_3
    iget-object v1, p0, Ljip;->e:Ljla;

    if-eqz v1, :cond_4

    .line 107
    const/4 v1, 0x5

    iget-object v2, p0, Ljip;->e:Ljla;

    .line 108
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_4
    iget-object v1, p0, Ljip;->f:Ljhk;

    if-eqz v1, :cond_5

    .line 111
    const/4 v1, 0x6

    iget-object v2, p0, Ljip;->f:Ljhk;

    .line 112
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_5
    return v0
.end method
