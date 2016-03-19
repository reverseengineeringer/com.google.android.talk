.class public final Lfdr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lfdr;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Landroid/os/Handler;

.field public d:Leal;

.field public e:Leal;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/Object;

.field private final j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfdr;->b:Ljava/lang/Object;

    .line 1052
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lx;

    invoke-direct {v2, p0}, Lx;-><init>(Lfdr;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lfdr;->c:Landroid/os/Handler;

    .line 1063
    return-void
.end method

.method public static b()Lfdr;
    .locals 1

    .prologue
    .line 1038
    sget-object v0, Lfdr;->a:Lfdr;

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Lfdr;

    invoke-direct {v0}, Lfdr;-><init>()V

    sput-object v0, Lfdr;->a:Lfdr;

    .line 1041
    :cond_0
    sget-object v0, Lfdr;->a:Lfdr;

    return-object v0
.end method

.method private static b(Leal;)Z
    .locals 1

    .prologue
    .line 3168
    iget-object v0, p0, Leal;->a:Ljava/lang/ref/WeakReference;

    .line 2198
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La;

    .line 2199
    if-eqz v0, :cond_0

    .line 2201
    const/4 v0, 0x1

    .line 2203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1183
    iget-object v0, p0, Lfdr;->e:Leal;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lfdr;->e:Leal;

    iput-object v0, p0, Lfdr;->d:Leal;

    .line 1185
    iput-object v1, p0, Lfdr;->e:Leal;

    .line 1187
    iget-object v0, p0, Lfdr;->d:Leal;

    .line 2168
    iget-object v0, v0, Leal;->a:Ljava/lang/ref/WeakReference;

    .line 1187
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La;

    .line 1188
    if-nez v0, :cond_0

    .line 1192
    iput-object v1, p0, Lfdr;->d:Leal;

    .line 1195
    :cond_0
    return-void
.end method

.method private c(Leal;)V
    .locals 6

    .prologue
    .line 4168
    iget v0, p1, Leal;->b:I

    .line 3215
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 3228
    :goto_0
    return-void

    .line 3220
    :cond_0
    const/16 v0, 0xabe

    .line 5168
    iget v1, p1, Leal;->b:I

    .line 3221
    if-lez v1, :cond_2

    .line 6168
    iget v0, p1, Leal;->b:I

    .line 3226
    :cond_1
    :goto_1
    iget-object v1, p0, Lfdr;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3227
    iget-object v1, p0, Lfdr;->c:Landroid/os/Handler;

    iget-object v2, p0, Lfdr;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 7168
    :cond_2
    iget v1, p1, Leal;->b:I

    .line 3223
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3224
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method private f(La;)Z
    .locals 1

    .prologue
    .line 3207
    iget-object v0, p0, Lfdr;->d:Leal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdr;->d:Leal;

    invoke-virtual {v0, p1}, Leal;->a(La;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(La;)Z
    .locals 1

    .prologue
    .line 3211
    iget-object v0, p0, Lfdr;->e:Leal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdr;->e:Leal;

    invoke-virtual {v0, p1}, Leal;->a(La;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(La;)V
    .locals 2

    .prologue
    .line 1117
    iget-object v1, p0, Lfdr;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1118
    :try_start_0
    invoke-direct {p0, p1}, Lfdr;->f(La;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    const/4 v0, 0x0

    iput-object v0, p0, Lfdr;->d:Leal;

    .line 1121
    iget-object v0, p0, Lfdr;->e:Leal;

    if-eqz v0, :cond_0

    .line 1122
    invoke-direct {p0}, Lfdr;->c()V

    .line 1125
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(La;I)V
    .locals 2

    .prologue
    .line 1103
    iget-object v1, p0, Lfdr;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1104
    :try_start_0
    invoke-direct {p0, p1}, Lfdr;->f(La;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lfdr;->d:Leal;

    invoke-static {v0}, Lfdr;->b(Leal;)Z

    .line 1109
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 1106
    :cond_1
    invoke-direct {p0, p1}, Lfdr;->g(La;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lfdr;->e:Leal;

    invoke-static {v0}, Lfdr;->b(Leal;)Z

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Leal;)V
    .locals 2

    .prologue
    .line 7231
    iget-object v1, p0, Lfdr;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 7232
    :try_start_0
    iget-object v0, p0, Lfdr;->d:Leal;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lfdr;->e:Leal;

    if-ne v0, p1, :cond_1

    .line 7233
    :cond_0
    invoke-static {p1}, Lfdr;->b(Leal;)Z

    .line 7235
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lfdr;->i:Ljava/lang/Object;

    instance-of v0, v0, Landroid/text/style/ClickableSpan;

    return v0
.end method

.method public a(Landroid/text/SpannableString;)Z
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lfdr;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lfdr;->g:I

    iget v1, p0, Lfdr;->h:I

    iget-object v2, p0, Lfdr;->i:Ljava/lang/Object;

    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(La;)V
    .locals 2

    .prologue
    .line 1133
    iget-object v1, p0, Lfdr;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1134
    :try_start_0
    invoke-direct {p0, p1}, Lfdr;->f(La;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lfdr;->d:Leal;

    invoke-direct {p0, v0}, Lfdr;->c(Leal;)V

    .line 1137
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/text/SpannableString;)V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lfdr;->i:Ljava/lang/Object;

    iget v1, p0, Lfdr;->g:I

    iget v2, p0, Lfdr;->h:I

    iget v3, p0, Lfdr;->j:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 174
    return-void
.end method

.method public c(La;)V
    .locals 3

    .prologue
    .line 1141
    iget-object v1, p0, Lfdr;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1142
    :try_start_0
    invoke-direct {p0, p1}, Lfdr;->f(La;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lfdr;->c:Landroid/os/Handler;

    iget-object v2, p0, Lfdr;->d:Leal;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1145
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(La;)V
    .locals 2

    .prologue
    .line 1149
    iget-object v1, p0, Lfdr;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1150
    :try_start_0
    invoke-direct {p0, p1}, Lfdr;->f(La;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lfdr;->d:Leal;

    invoke-direct {p0, v0}, Lfdr;->c(Leal;)V

    .line 1153
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(La;)Z
    .locals 2

    .prologue
    .line 1163
    iget-object v1, p0, Lfdr;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1164
    :try_start_0
    invoke-direct {p0, p1}, Lfdr;->f(La;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lfdr;->g(La;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
