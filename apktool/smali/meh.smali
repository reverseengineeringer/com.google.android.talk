.class public final Lmeh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmeh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lmeh;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lmee;

.field public d:Lmeg;

.field public e:Lmep;

.field public f:Lmef;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Llyb;-><init>()V

    .line 44
    const/high16 v0, -0x80000000

    iput v0, p0, Lmeh;->a:I

    .line 45
    iput-object v1, p0, Lmeh;->b:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lmeh;->c:Lmee;

    .line 47
    iput-object v1, p0, Lmeh;->d:Lmeg;

    .line 48
    iput-object v1, p0, Lmeh;->e:Lmep;

    .line 49
    iput-object v1, p0, Lmeh;->f:Lmef;

    .line 50
    iput-object v1, p0, Lmeh;->eD:Llyd;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lmeh;->eE:I

    .line 52
    return-void
.end method

.method public static d()[Lmeh;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lmeh;->g:[Lmeh;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lmeh;->g:[Lmeh;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lmeh;

    sput-object v0, Lmeh;->g:[Lmeh;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lmeh;->g:[Lmeh;

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
    .line 1113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1114
    sparse-switch v0, :sswitch_data_0

    .line 1118
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    :sswitch_0
    return-object p0

    .line 1124
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1125
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1131
    :pswitch_0
    iput v0, p0, Lmeh;->a:I

    goto :goto_0

    .line 1137
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeh;->b:Ljava/lang/String;

    goto :goto_0

    .line 1141
    :sswitch_3
    iget-object v0, p0, Lmeh;->c:Lmee;

    if-nez v0, :cond_1

    .line 1142
    new-instance v0, Lmee;

    invoke-direct {v0}, Lmee;-><init>()V

    iput-object v0, p0, Lmeh;->c:Lmee;

    .line 1144
    :cond_1
    iget-object v0, p0, Lmeh;->c:Lmee;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1148
    :sswitch_4
    iget-object v0, p0, Lmeh;->d:Lmeg;

    if-nez v0, :cond_2

    .line 1149
    new-instance v0, Lmeg;

    invoke-direct {v0}, Lmeg;-><init>()V

    iput-object v0, p0, Lmeh;->d:Lmeg;

    .line 1151
    :cond_2
    iget-object v0, p0, Lmeh;->d:Lmeg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1155
    :sswitch_5
    iget-object v0, p0, Lmeh;->e:Lmep;

    if-nez v0, :cond_3

    .line 1156
    new-instance v0, Lmep;

    invoke-direct {v0}, Lmep;-><init>()V

    iput-object v0, p0, Lmeh;->e:Lmep;

    .line 1158
    :cond_3
    iget-object v0, p0, Lmeh;->e:Lmep;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1162
    :sswitch_6
    iget-object v0, p0, Lmeh;->f:Lmef;

    if-nez v0, :cond_4

    .line 1163
    new-instance v0, Lmef;

    invoke-direct {v0}, Lmef;-><init>()V

    iput-object v0, p0, Lmeh;->f:Lmef;

    .line 1165
    :cond_4
    iget-object v0, p0, Lmeh;->f:Lmef;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 1125
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
    .line 57
    iget v0, p0, Lmeh;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 58
    const/4 v0, 0x1

    iget v1, p0, Lmeh;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 60
    :cond_0
    iget-object v0, p0, Lmeh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    iget-object v1, p0, Lmeh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lmeh;->c:Lmee;

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Lmeh;->c:Lmee;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 66
    :cond_2
    iget-object v0, p0, Lmeh;->d:Lmeg;

    if-eqz v0, :cond_3

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Lmeh;->d:Lmeg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 69
    :cond_3
    iget-object v0, p0, Lmeh;->e:Lmep;

    if-eqz v0, :cond_4

    .line 70
    const/4 v0, 0x5

    iget-object v1, p0, Lmeh;->e:Lmep;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 72
    :cond_4
    iget-object v0, p0, Lmeh;->f:Lmef;

    if-eqz v0, :cond_5

    .line 73
    const/4 v0, 0x6

    iget-object v1, p0, Lmeh;->f:Lmef;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 75
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 76
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 81
    iget v1, p0, Lmeh;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 82
    const/4 v1, 0x1

    iget v2, p0, Lmeh;->a:I

    .line 83
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Lmeh;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    iget-object v2, p0, Lmeh;->b:Ljava/lang/String;

    .line 87
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iget-object v1, p0, Lmeh;->c:Lmee;

    if-eqz v1, :cond_2

    .line 90
    const/4 v1, 0x3

    iget-object v2, p0, Lmeh;->c:Lmee;

    .line 91
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_2
    iget-object v1, p0, Lmeh;->d:Lmeg;

    if-eqz v1, :cond_3

    .line 94
    const/4 v1, 0x4

    iget-object v2, p0, Lmeh;->d:Lmeg;

    .line 95
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_3
    iget-object v1, p0, Lmeh;->e:Lmep;

    if-eqz v1, :cond_4

    .line 98
    const/4 v1, 0x5

    iget-object v2, p0, Lmeh;->e:Lmep;

    .line 99
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_4
    iget-object v1, p0, Lmeh;->f:Lmef;

    if-eqz v1, :cond_5

    .line 102
    const/4 v1, 0x6

    iget-object v2, p0, Lmeh;->f:Lmef;

    .line 103
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_5
    return v0
.end method
