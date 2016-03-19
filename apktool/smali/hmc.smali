.class final Lhmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhmb;


# direct methods
.method constructor <init>(Lhmb;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Lhmc;->c:Lhmb;

    iput p2, p0, Lhmc;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lhmc;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 82
    iget v0, p0, Lhmc;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1038
    invoke-static {}, Laal;->x()V

    .line 1039
    new-instance v1, Lmic;

    invoke-direct {v1}, Lmic;-><init>()V

    .line 1040
    new-instance v2, Lmib;

    invoke-direct {v2}, Lmib;-><init>()V

    iput-object v2, v1, Lmic;->a:Lmib;

    .line 1041
    iget-object v2, v1, Lmic;->a:Lmib;

    .line 1072
    new-instance v3, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 1073
    invoke-static {v3}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 1078
    new-instance v4, Lmhr;

    invoke-direct {v4}, Lmhr;-><init>()V

    .line 1079
    iget v5, v3, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lmhr;->a:Ljava/lang/Integer;

    .line 1080
    iget v5, v3, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lmhr;->b:Ljava/lang/Integer;

    .line 1081
    iget v5, v3, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lmhr;->c:Ljava/lang/Integer;

    .line 1082
    iget v5, v3, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lmhr;->d:Ljava/lang/Integer;

    .line 1083
    iget v5, v3, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lmhr;->e:Ljava/lang/Integer;

    .line 1084
    iget v5, v3, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lmhr;->f:Ljava/lang/Integer;

    .line 1085
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 1086
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lmhr;->g:Ljava/lang/Integer;

    .line 1087
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lmhr;->i:Ljava/lang/Integer;

    .line 1089
    :cond_0
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lmhr;->h:Ljava/lang/Integer;

    .line 1041
    iput-object v4, v2, Lmib;->a:Lmhr;

    .line 1042
    new-instance v2, Lmih;

    invoke-direct {v2}, Lmih;-><init>()V

    iput-object v2, v1, Lmic;->b:Lmih;

    .line 1043
    iget-object v2, v1, Lmic;->b:Lmih;

    .line 2025
    new-instance v3, Lmhs;

    invoke-direct {v3}, Lmhs;-><init>()V

    .line 2026
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lmhs;->a:Ljava/lang/Long;

    .line 2027
    invoke-static {}, Lhnf;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lmhs;->b:Ljava/lang/Boolean;

    .line 2028
    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lmhs;->c:Ljava/lang/Integer;

    .line 1043
    iput-object v3, v2, Lmih;->a:Lmhs;

    .line 1044
    iput v0, v1, Lmic;->c:I

    .line 83
    iget-object v0, p0, Lhmc;->c:Lhmb;

    .line 3015
    iget-object v0, v0, Lhmb;->a:Lhmf;

    .line 83
    iget-object v2, p0, Lhmc;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lhmf;->a(Ljava/lang/String;Llyi;)V

    .line 84
    return-void
.end method
