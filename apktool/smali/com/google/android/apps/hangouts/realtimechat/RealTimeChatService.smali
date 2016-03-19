.class public Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;
.super Leeb;
.source "SourceFile"


# static fields
.field private static final A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Z

.field public static final b:Lezv;

.field public static final c:Ljava/lang/Object;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Leap;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Leal;",
            ">;"
        }
    .end annotation
.end field

.field static h:Lhli;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhli",
            "<",
            "Leak;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Landroid/os/Handler;

.field static final j:Ljava/lang/Object;

.field public static final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Z

.field private static final o:I

.field private static volatile p:Lean;

.field private static volatile q:Leao;

.field private static final r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Legs;",
            ">;"
        }
    .end annotation
.end field

.field private static s:I

.field private static final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ldym;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lkju;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final w:Ljava/lang/Object;

.field private static x:Landroid/os/PowerManager$WakeLock;

.field private static y:Z

.field private static final z:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private B:Z

.field private C:Landroid/content/ServiceConnection;

.field public volatile l:Leer;

.field public m:Ledv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    sget-object v0, Lezi;->o:Limx;

    sput-boolean v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    .line 210
    const-string v0, "RTCS"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b:Lezv;

    .line 217
    sput-boolean v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->n:Z

    .line 219
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->o:I

    .line 548
    sput-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->p:Lean;

    .line 550
    sput-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->q:Leao;

    .line 554
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c:Ljava/lang/Object;

    .line 558
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->r:Landroid/util/SparseArray;

    .line 571
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->t:Ljava/util/Map;

    .line 575
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->u:Ljava/util/Queue;

    .line 581
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->v:Ljava/util/Map;

    .line 585
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 588
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 593
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->w:Ljava/lang/Object;

    .line 598
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    .line 599
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->j:Ljava/lang/Object;

    .line 606
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->z:Ljava/util/concurrent/ScheduledExecutorService;

    .line 614
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->A:Landroid/util/SparseArray;

    .line 616
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->k:Landroid/util/SparseArray;

    .line 666
    new-instance v0, Ldzm;

    invoke-direct {v0}, Ldzm;-><init>()V

    invoke-static {v0}, Laal;->a(Ldju;)V

    .line 684
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 687
    const-string v0, "RealTimeChatService"

    invoke-direct {p0, v0}, Leeb;-><init>(Ljava/lang/String;)V

    .line 628
    new-instance v0, Ldzb;

    invoke-direct {v0, p0}, Ldzb;-><init>(Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->C:Landroid/content/ServiceConnection;

    .line 688
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 691
    invoke-direct {p0, p1}, Leeb;-><init>(Ljava/lang/String;)V

    .line 628
    new-instance v0, Ldzb;

    invoke-direct {v0, p0}, Ldzb;-><init>(Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->C:Landroid/content/ServiceConnection;

    .line 692
    return-void
.end method

.method public static a(IILdvv;)I
    .locals 2

    .prologue
    .line 2964
    const/16 v0, 0x99

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2965
    const-string v1, "recent_call_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2966
    const-string v1, "recent_call_action_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50370
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50368
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2967
    return v0
.end method

.method public static a(IIZ)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1236
    const/16 v0, 0x13

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1237
    const-string v1, "setselfinfo_bit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1238
    const-string v1, "setselfinfo_bit_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 23092
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1239
    return v0
.end method

.method public static a(IJLjava/lang/String;Z)I
    .locals 3

    .prologue
    .line 2979
    const/16 v0, 0xbe

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2980
    const-string v1, "recent_call_timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2981
    const-string v1, "recent_call_rate"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2982
    const-string v1, "recent_call_is_free_call"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50373
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50371
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2983
    return v0
.end method

.method public static a(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 2873
    const/16 v0, 0xaf

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2874
    const-string v1, "member_gaiaid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50337
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50335
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2875
    return v0
.end method

.method public static a(ILjava/lang/String;Landroid/content/ContentValues;)I
    .locals 2

    .prologue
    .line 2708
    const/16 v0, 0xc1

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2709
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2710
    const-string v1, "content_values"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50300
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50298
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2711
    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 2

    .prologue
    .line 2859
    const/16 v0, 0x5c

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2860
    const-string v1, "member_gaiaid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2861
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2862
    const-string v1, "user_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2863
    const-string v1, "blocked"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2864
    const-string v1, "retry_request"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50334
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50332
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2865
    return v0
.end method

.method public static a(ILjava/lang/String;ZZZ)I
    .locals 2

    .prologue
    .line 2625
    const/16 v0, 0x29

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2626
    const-string v1, "accept"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2627
    const-string v1, "block_inviter"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2628
    const-string v1, "report_inviter"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50285
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50283
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2629
    return v0
.end method

.method public static a(IZ)I
    .locals 2

    .prologue
    .line 2480
    invoke-static {p0}, Lecx;->b(I)Lecx;

    move-result-object v0

    .line 2481
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2482
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d()Lbcm;

    move-result-object v1

    invoke-interface {v1, v0}, Lbcm;->a(Lbcn;)Lbcg;

    move-result-object v0

    invoke-virtual {v0}, Lbcg;->a()I

    move-result v0

    .line 2492
    :goto_0
    return v0

    .line 2484
    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lecx;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lecx;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2485
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_1

    .line 2486
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SyncBaselineSuggestedContactsOperation is idle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2488
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2490
    :cond_2
    const/16 v0, 0x38

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2491
    const-string v1, "force_execution"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50252
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50250
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lbfd;II)I
    .locals 3

    .prologue
    .line 1759
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x8e

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1760
    const-string v1, "hangout_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1761
    const-string v1, "hangout_topic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1762
    const-string v1, "hangout_media_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50122
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50120
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1763
    return v0
.end method

.method public static a(Lbfd;IZ)I
    .locals 2

    .prologue
    .line 2722
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x79

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2723
    const-string v1, "extra_rich_presence_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2724
    const-string v1, "extra_rich_presence_type_enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50303
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50301
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2725
    return v0
.end method

.method public static a(Lbfd;Lihb;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1740
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xb9

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1741
    const-string v1, "audience"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1742
    const-string v1, "original_conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    const-string v1, "conversation_lookup"

    sget-object v2, Lbfw;->a:Lbfw;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50119
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50117
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1744
    return v0
.end method

.method public static a(Lbfd;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 2586
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x26

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2587
    const-string v1, "notification_level"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50276
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50274
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2588
    return v0
.end method

.method public static a(Lbfd;Ljava/lang/String;J)I
    .locals 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x5b

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1706
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50110
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1707
    return v0
.end method

.method public static a(Lbfd;Ljava/lang/String;JZ)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1688
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [J

    aput-wide p2, v1, v2

    invoke-static {p0, v0, v1, p4, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;[Ljava/lang/String;[JZZ)I

    move-result v0

    return v0
.end method

.method public static a(Lbfd;Ljava/lang/String;Lihb;)I
    .locals 2

    .prologue
    .line 2058
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2059
    const-string v1, "audience"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50197
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50195
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2060
    return v0
.end method

.method public static a(Lbfd;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2069
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2070
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50200
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50198
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2072
    return v0
.end method

.method public static a(Lbfd;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 2027
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x2f

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2028
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2029
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50191
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50189
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2030
    return v0
.end method

.method public static a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;I)I
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1800
    invoke-virtual/range {p0 .. p0}, Lbfd;->g()I

    move-result v2

    const/16 v3, 0x1f

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1801
    const-string v3, "message_id"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    const-string v3, "message_text"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1803
    const-string v3, "uri"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1804
    const-string v3, "rotation"

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1805
    const-string v3, "picasa_photo_id"

    move-object/from16 v0, p6

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    const-string v3, "width"

    move/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1807
    const-string v3, "height"

    move/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1808
    const-string v3, "content_type"

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1809
    const-string v3, "subject"

    move-object/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1810
    const-string v3, "requires_mms"

    move/from16 v0, p11

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1811
    if-eqz p12, :cond_0

    .line 1812
    const-string v3, "place"

    invoke-static/range {p12 .. p12}, Lcrx;->a(Lgeo;)Lcrx;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1815
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 1816
    const-string v3, "timestamp"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1817
    const-string v3, "otr_state"

    move/from16 v0, p13

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1819
    invoke-static {}, Lezc;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1820
    if-eqz p3, :cond_1

    const-string v3, "///"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "///"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1821
    const/4 v3, 0x3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 50129
    const-string v3, "\\."

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50131
    :try_start_0
    array-length v4, v3

    if-lez v4, :cond_2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 50132
    :goto_0
    array-length v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 50133
    :goto_1
    new-instance v18, Ljava/lang/Thread;

    new-instance v3, Ldzy;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v17}, Ldzy;-><init>(ILbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;J)V

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50149
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50156
    :cond_1
    :goto_2
    sget-object v3, Lkmm;->a:Lkmm;

    .line 50154
    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v2

    .line 1825
    return v2

    .line 50131
    :cond_2
    const/16 v4, 0xa

    goto :goto_0

    .line 50132
    :cond_3
    const-wide/16 v16, 0x1f4

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static a(Lbfd;Ljava/lang/String;Z)I
    .locals 2

    .prologue
    .line 2043
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x54

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2044
    const-string v1, "insert_error_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50194
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50192
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2045
    return v0
.end method

.method public static a(Lbfd;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1712
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x90

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1713
    const-string v1, "event_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 50113
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50111
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1714
    return v0
.end method

.method public static a(Lbfd;Ljava/util/ArrayList;Ljava/lang/String;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfd;",
            "Ljava/util/ArrayList",
            "<",
            "Ldtt;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 2159
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2160
    const-string v1, "batch_gebi_tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2161
    const-string v1, "from_contact_lookup"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2162
    const-string v1, "com.google.android.apps.hangouts.EntityLookupSpecs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 50218
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50216
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2163
    return v0
.end method

.method public static a(Lbfd;Lkkp;)I
    .locals 3

    .prologue
    .line 2749
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x44

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2750
    const-string v1, "hangout_invite_receipt"

    .line 2751
    invoke-static {p1}, Lkkp;->a(Llyi;)[B

    move-result-object v2

    .line 2750
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 50309
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50307
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2752
    return v0
.end method

.method public static a(Lbfd;[BZ)I
    .locals 2

    .prologue
    .line 2883
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xb0

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2884
    const-string v1, "pdu"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2885
    const-string v1, "is_sms_read"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50340
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50338
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2886
    return v0
.end method

.method public static a(Lbfd;[Ljava/lang/String;[JZZ)I
    .locals 2

    .prologue
    .line 1695
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x48

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1696
    const-string v1, "conversationids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    const-string v1, "timestamps"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1698
    const-string v1, "archive"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1699
    const-string v1, "perform_locally"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50107
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50105
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1700
    return v0
.end method

.method public static a(Lbfz;Ljava/lang/String;J)I
    .locals 2

    .prologue
    .line 5987
    invoke-virtual {p0}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x6f

    .line 5986
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 5988
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5989
    const-string v1, "extra_pending_conversation_operations"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50706
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50704
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 5990
    return v0
.end method

.method public static a(Ljava/util/List;Lbfd;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Legs;",
            ">;",
            "Lbfd;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1913
    const-string v1, ""

    .line 1914
    sget-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->r:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1915
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1916
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 1917
    sget v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->s:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->s:I

    .line 1918
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xb

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1919
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_0

    .line 1920
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1922
    :cond_0
    sget-object v5, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->r:Landroid/util/SparseArray;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1916
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1924
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1926
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/16 v2, 0x47

    invoke-static {v0, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1927
    const-string v2, "simulated_event_msg_num"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50166
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50164
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1928
    return v0

    .line 1924
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(II)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 726
    invoke-static {p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i(I)Landroid/content/Intent;

    move-result-object v0

    .line 727
    invoke-static {p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h(I)V

    .line 728
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    return-object v0
.end method

.method private static a(IILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 734
    new-instance v0, Landroid/content/Intent;

    .line 11036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 734
    const-class v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 735
    invoke-static {p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h(I)V

    .line 736
    const-string v1, "op"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    return-object v0
.end method

.method private a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 4791
    sget-boolean v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->n:Z

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 4794
    const-string v1, "Babel_RTCS"

    const-string v2, "executeOperation called with no operation"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4814
    :goto_0
    return-object v0

    .line 4797
    :cond_0
    const-string v1, "stack_trace"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50565
    iput-object v1, p3, Ldyx;->d:Ljava/lang/String;

    .line 4798
    invoke-virtual {p3}, Ldyx;->p_()V

    .line 4799
    const-string v1, "rid"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4800
    new-instance v3, Leau;

    .line 4801
    invoke-virtual {p3}, Ldyx;->G_()I

    move-result v1

    invoke-direct {v3, v2, v1, v0}, Leau;-><init>(IILdqf;)V

    .line 4802
    invoke-virtual {p3}, Ldyx;->o_()Ljava/lang/Object;

    move-result-object v1

    .line 4806
    invoke-static {p2, v3, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Intent;Leau;Ljava/lang/Object;)V

    .line 4808
    iget-object v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l:Leer;

    invoke-virtual {p3, p1, v2, v0}, Ldyx;->a(Ldvm;ILeer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50567
    :goto_1
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldym;

    if-eqz v0, :cond_3

    .line 50581
    iget-object v2, v0, Ldyx;->b:Ldvb;

    iget-object v2, v2, Ldvb;->b:Lbfd;

    .line 50568
    invoke-static {v2}, Ldvd;->e(Lbfd;)Ldvm;

    move-result-object v2

    .line 50569
    if-nez v2, :cond_2

    .line 50570
    const-string v2, "Babel_RTCS"

    const-string v3, "Account is not valid. Skip parasite operation:"

    .line 50582
    iget-object v0, v0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 50571
    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v3, v5, [Ljava/lang/Object;

    .line 50570
    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 50571
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 50575
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ldym;->a(I)V

    .line 50576
    invoke-virtual {v0}, Ldym;->p_()V

    .line 50577
    iget-object v3, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l:Leer;

    invoke-virtual {v0, v2, v5, v3}, Ldym;->a(Ldvm;ILeer;)Z

    goto :goto_1

    .line 50579
    :cond_3
    invoke-static {}, Lebo;->l()V

    :cond_4
    move-object v0, v1

    .line 4814
    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Lbfd;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 6005
    const-string v0, "op"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6006
    sparse-switch v0, :sswitch_data_0

    .line 6022
    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    .line 6008
    :sswitch_0
    const-string v0, "server_response_type"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6009
    const-string v2, "ServerResponse: "

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6013
    :sswitch_1
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Legt;->a(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v1

    .line 6015
    const-string v0, "ServerUpdate: "

    .line 6016
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legs;

    .line 6017
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 6018
    goto :goto_1

    .line 6006
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1102
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->t:Ljava/util/Map;

    monitor-enter v1

    .line 1103
    :try_start_0
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Lbfd;Ldvm;Ldqf;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbfd;",
            "Ldvm;",
            "Ldqf;",
            ")",
            "Ljava/util/List",
            "<",
            "Leau;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4476
    new-instance v4, Ldyy;

    invoke-direct {v4}, Ldyy;-><init>()V

    .line 4477
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 4484
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 4485
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "processResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 4487
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Context;Lbfd;Ldqf;Ldyy;Ljava/util/List;)V

    .line 4490
    const-class v0, Lcyh;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 4491
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v1

    invoke-virtual {v4}, Ldyy;->f()Ldza;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcyh;->a(ILdza;)V

    .line 4495
    invoke-virtual {v4}, Ldyy;->c()Ljava/util/List;

    move-result-object v0

    .line 4496
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4497
    const-string v1, "Babel_RTCS"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4498
    const-string v1, "Babel_RTCS"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 4499
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3e

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "processResponse: sending "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " requests from processing "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    .line 4498
    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4501
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l:Leer;

    invoke-virtual {p3, v0, v7, v1}, Ldvm;->a(Ljava/util/Collection;ILeer;)V

    .line 4503
    :cond_2
    return-object v5
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 651
    const-string v1, "babel_log_dump"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 654
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 655
    if-eqz v0, :cond_1

    :try_start_0
    sget-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h:Lhli;

    if-nez v2, :cond_1

    .line 656
    new-instance v2, Lhli;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lhli;-><init>(I)V

    sput-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h:Lhli;

    .line 660
    :cond_0
    :goto_0
    sput-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->y:Z

    .line 661
    monitor-exit v1

    return-void

    .line 657
    :cond_1
    if-nez v0, :cond_0

    sget-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h:Lhli;

    if-eqz v2, :cond_0

    .line 658
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h:Lhli;

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1179
    sget-object v0, Lebq;->a:Lebq;

    invoke-static {p0, v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;)V

    .line 1188
    invoke-static {p0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZ)I

    .line 1191
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->j(I)V

    .line 1194
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->k(I)V

    .line 1198
    invoke-static {p0}, Lbie;->a(I)V

    .line 1199
    return-void
.end method

.method public static a(IILjava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2694
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 2695
    invoke-static {v0}, Ldvd;->e(Lbfd;)Ldvm;

    move-result-object v0

    .line 2696
    new-instance v1, Ldyv;

    invoke-direct {v1, p2, p3}, Ldyv;-><init>(Ljava/util/List;I)V

    .line 2697
    invoke-virtual {v0, v1, p0}, Ldvm;->a(Leff;I)V

    .line 2698
    return-void
.end method

.method public static a(IJ)V
    .locals 3

    .prologue
    .line 1663
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    invoke-static {p0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 1665
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d()Lbcm;

    move-result-object v1

    new-instance v2, Lecp;

    invoke-direct {v2, v0, p1, p2}, Lecp;-><init>(Lbfd;J)V

    invoke-interface {v1, v2}, Lbcm;->a(Lbcn;)Lbcg;

    .line 1671
    :goto_0
    return-void

    .line 1667
    :cond_0
    const/16 v0, 0x42

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1668
    const-string v1, "dnd_expiration"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50104
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50101
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    goto :goto_0
.end method

.method public static a(IJZI)V
    .locals 3

    .prologue
    .line 5971
    const/16 v0, 0x8c

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 5972
    const-string v1, "notification_row_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5973
    const-string v1, "mms_auto_retrieve"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5974
    const-string v1, "error"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50703
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50701
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 5976
    return-void
.end method

.method public static a(ILbfd;Leau;)V
    .locals 2

    .prologue
    .line 5332
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzj;

    invoke-direct {v1, p0, p1, p2}, Ldzj;-><init>(ILbfd;Leau;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5340
    return-void
.end method

.method public static a(ILdqf;)V
    .locals 10

    .prologue
    .line 1436
    const/16 v0, 0x27

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v2

    .line 1437
    const-wide/16 v0, -0x1

    .line 1438
    invoke-virtual {p1}, Ldqf;->f()[B

    move-result-object v3

    .line 1439
    array-length v4, v3

    .line 38036
    sget-object v5, Laal;->oJ:Landroid/content/Context;

    .line 1440
    const-string v6, "babel_maximum_request_writer_intent_extra_size"

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v8, v9}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1443
    int-to-long v8, v4

    cmp-long v5, v8, v6

    if-lez v5, :cond_1

    .line 39036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 40018
    invoke-static {v0}, Leez;->a(Landroid/content/Context;)Leez;

    move-result-object v0

    invoke-virtual {v0, p1}, Leez;->a(Ldqf;)J

    move-result-wide v0

    .line 1445
    const-string v3, "server_response_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1450
    :goto_0
    const-string v3, "server_response_type"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    const-string v3, "rid"

    invoke-virtual {p1}, Ldqf;->b()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1453
    sget-boolean v3, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v3, :cond_0

    .line 1454
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x68

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "handleServerResponse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " size("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") stored response id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accountId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42037
    :cond_0
    sget-object v0, Lkmm;->a:Lkmm;

    .line 40108
    invoke-static {v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1459
    return-void

    .line 1447
    :cond_1
    const-string v5, "server_response"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2911
    const/16 v0, 0x65

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2912
    const-string v1, "conversation_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50350
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50347
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 2914
    return-void
.end method

.method public static a(ILjava/lang/String;[BJZ)V
    .locals 3

    .prologue
    .line 5935
    const/16 v0, 0x74

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 5936
    const-string v1, "mms_content_location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5937
    const-string v1, "mms_transaction_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5938
    const-string v1, "notification_row_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5939
    const-string v1, "mms_auto_retrieve"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50696
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50694
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 5941
    return-void
.end method

.method public static a(IZLebq;)V
    .locals 2

    .prologue
    .line 2431
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;J)V

    .line 2436
    return-void
.end method

.method public static a(IZLebq;J)V
    .locals 11

    .prologue
    .line 2311
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2314
    invoke-static {p0}, Lebl;->b(I)Lebl;

    move-result-object v0

    .line 2315
    invoke-virtual {v0}, Lebl;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2316
    invoke-virtual {v0, p1}, Lebl;->a(Z)V

    .line 2317
    invoke-virtual {v0}, Lebl;->m()V

    .line 2318
    invoke-virtual {v0, p3, p4}, Lebl;->b(J)V

    .line 2319
    invoke-virtual {v0, p2}, Lebl;->a(Lebq;)V

    .line 2320
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d()Lbcm;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 2321
    invoke-interface {v1, v0, v2, v3}, Lbcm;->a(Lbcn;J)Lbcg;

    .line 2416
    :cond_0
    :goto_0
    return-void

    .line 2329
    :cond_1
    invoke-static {p0}, Lebo;->b(I)Lebo;

    move-result-object v1

    .line 2330
    invoke-virtual {v1}, Lebo;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    const/4 v0, 0x0

    .line 2332
    if-eqz p1, :cond_2

    .line 2337
    invoke-virtual {v1}, Lebo;->n()Z

    move-result v0

    .line 2340
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.apps.hangouts.SYNC"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2341
    const-string v3, "op"

    const/16 v4, 0x37

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2342
    const-string v3, "account_id"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2345
    const-string v3, "no_missed_events_expected"

    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2347
    const-string v0, "suppress_notifications"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2348
    const-string v0, "expected_hash"

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2349
    const/4 v0, 0x1

    const/16 v3, 0x6d

    const/4 v4, 0x0

    .line 2350
    invoke-static {p0, v0, v3, v4}, Leyr;->a(IIILjava/lang/String;)I

    move-result v0

    .line 50247
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 2354
    const/high16 v4, 0x8000000

    .line 2353
    invoke-static {v3, v0, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2358
    sget-object v3, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->k:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2359
    :try_start_0
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->k:Landroid/util/SparseArray;

    .line 2360
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 50248
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 2361
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 2365
    invoke-virtual {v1, p2}, Lebo;->a(Lebq;)J

    move-result-wide v6

    .line 2367
    sub-long v4, v6, v4

    .line 50249
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2369
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2371
    const-wide/16 v8, 0x1388

    cmp-long v1, v4, v8

    if-gtz v1, :cond_5

    .line 2374
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 2375
    if-eqz v1, :cond_3

    .line 2376
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2377
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2378
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 2379
    const-wide/16 v8, 0x0

    cmp-long v3, v8, v4

    if-gez v3, :cond_0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 2380
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 2386
    :cond_3
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->A:Landroid/util/SparseArray;

    sget-object v3, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->z:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Leac;

    invoke-direct {v6, v2, p0}, Leac;-><init>(Landroid/app/PendingIntent;I)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2388
    invoke-interface {v3, v6, v4, v5, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 2386
    invoke-virtual {v1, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2406
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2345
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2361
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2408
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2411
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->k:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2412
    :try_start_2
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->k:Landroid/util/SparseArray;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2413
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static a(IZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 1414
    const/16 v0, 0xc9

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1415
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    const-string v1, "callerid_set_unset"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 32108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1418
    return-void
.end method

.method public static a(JJ)V
    .locals 8

    .prologue
    .line 50223
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2200
    const-string v1, "alarm"

    .line 2201
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2202
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->m()Landroid/app/PendingIntent;

    move-result-object v6

    .line 2203
    const/4 v1, 0x2

    move-wide v2, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2205
    return-void
.end method

.method private static a(Landroid/content/Context;Lbfd;)V
    .locals 3

    .prologue
    .line 50380
    :try_start_0
    sget-boolean v0, Leci;->b:Z

    .line 3015
    if-eqz v0, :cond_0

    invoke-static {p0}, Laal;->v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3016
    invoke-static {p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Lbfd;)V

    .line 50381
    :cond_0
    invoke-static {p1}, Ledb;->a(Lbfd;)Ledb;

    move-result-object v0

    .line 50384
    if-eqz v0, :cond_1

    .line 50389
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50390
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d()Lbcm;

    move-result-object v1

    invoke-interface {v1, v0}, Lbcm;->a(Lbcn;)Lbcg;

    .line 3019
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZ)I

    .line 50422
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 50406
    invoke-static {v0, p1}, Lecz;->a(Landroid/content/Context;Lbfd;)Lecz;

    move-result-object v0

    .line 50407
    if-nez v0, :cond_6

    .line 50408
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_2

    .line 50409
    const-string v0, "syncSmsMessages is unavailable for: "

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3021
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->j(I)V

    .line 3022
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->k(I)V
    :try_end_0
    .catch Lhqd; {:try_start_0 .. :try_end_0} :catch_0

    .line 3026
    :goto_2
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e()V

    .line 3027
    return-void

    .line 50392
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ledb;->e()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ledb;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50399
    :cond_4
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xba

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50405
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50402
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 50409
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 50413
    :cond_6
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50414
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d()Lbcm;

    move-result-object v1

    invoke-interface {v1, v0}, Lbcm;->a(Lbcn;)Lbcg;

    goto :goto_1

    .line 50416
    :cond_7
    invoke-virtual {v0}, Lecz;->e()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lecz;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50419
    :cond_8
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50425
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50423
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I
    :try_end_1
    .catch Lhqd; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lbfd;Ldqf;Ldyy;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbfd;",
            "Ldqf;",
            "Ldyy;",
            "Ljava/util/List",
            "<",
            "Leau;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4871
    const-string v0, "Babel_RTCS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4872
    const-string v0, "Babel_RTCS"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4873
    invoke-virtual {p2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "processResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for acct "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4872
    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4876
    :cond_0
    invoke-virtual {p3, p2}, Ldqf;->a(Lbfd;)V

    .line 4878
    instance-of v0, p3, Ldrz;

    if-eqz v0, :cond_6

    move-object v0, p3

    .line 4879
    check-cast v0, Ldrz;

    .line 4882
    invoke-virtual {v0}, Ldrz;->k()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4883
    invoke-virtual {v0}, Ldrz;->m()Ljava/lang/String;

    move-result-object v2

    .line 4884
    const-class v1, Lawm;

    invoke-static {p1, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawm;

    .line 4885
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v3

    invoke-interface {v1, v3, v2}, Lawm;->a(ILjava/lang/String;)V

    .line 4886
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4890
    invoke-static {p2, v2}, Ldvd;->a(Lbfd;Ljava/lang/String;)V

    .line 4905
    :goto_0
    const-class v1, Lhpz;

    .line 4906
    invoke-static {p1, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpz;

    invoke-virtual {p2}, Lbfd;->g()I

    move-result v2

    invoke-interface {v1, v2}, Lhpz;->b(I)Lhqc;

    move-result-object v2

    .line 4908
    const-class v1, Lebb;

    invoke-static {p1, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebb;

    .line 4909
    invoke-interface {v1, v2, v0}, Lebb;->a(Lhqe;Ldrz;)V

    goto :goto_1

    .line 4892
    :cond_1
    const-string v1, "Babel_RTCS"

    const-string v2, "Full jid should not be empty"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4895
    :cond_2
    invoke-virtual {v0}, Ldrz;->l()Ljava/lang/String;

    move-result-object v1

    .line 4896
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4897
    const-string v2, "Babel_RTCS"

    const-string v3, "Account unregistered: "

    .line 4898
    invoke-virtual {p2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 4897
    invoke-static {v2, v1, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4898
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 4900
    :cond_4
    const-string v2, "Babel_RTCS"

    .line 4901
    invoke-virtual {p2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2c

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Removed account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " unregistered using account:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 4900
    invoke-static {v2, v1, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4911
    :cond_5
    invoke-virtual {v2}, Lhqc;->d()I

    .line 4914
    :cond_6
    instance-of v0, p3, Ldsn;

    if-eqz v0, :cond_8

    .line 4915
    invoke-static {p2}, Leck;->a(Lbfd;)Leck;

    move-result-object v1

    move-object v0, p3

    .line 4916
    check-cast v0, Ldsn;

    .line 4917
    iget-boolean v0, v0, Ldsn;->g:Z

    if-eqz v0, :cond_f

    .line 4920
    const-string v0, "Babel_RTCS"

    const-string v2, "Client is invalid. Force retry GcmRegistration"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4921
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v0

    invoke-virtual {v0}, Ldwt;->g()V

    .line 4928
    :cond_7
    :goto_3
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Leck;->a(I)V

    .line 4931
    :cond_8
    instance-of v0, p3, Ldrm;

    if-eqz v0, :cond_a

    move-object v0, p3

    .line 4932
    check-cast v0, Ldrm;

    .line 4936
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v1

    invoke-static {v1}, Lecx;->b(I)Lecx;

    move-result-object v1

    .line 4937
    sget-boolean v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v2, :cond_9

    .line 4938
    const-string v2, "SyncBaselineSuggestedContactsOperation successful: "

    .line 4939
    invoke-virtual {p2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4941
    :cond_9
    :goto_4
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lecx;->a(I)V

    .line 4943
    invoke-virtual {v0}, Ldrm;->k()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 4942
    invoke-static {p2, v1, v2}, Lbfq;->a(Lbfd;Ljava/util/List;Z)V

    .line 4945
    invoke-virtual {v0}, Ldrm;->l()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4944
    invoke-static {p2, v0, v1}, Lbfq;->a(Lbfd;Ljava/util/List;Z)V

    .line 4948
    :cond_a
    instance-of v0, p3, Ldrb;

    if-eqz v0, :cond_c

    move-object v0, p3

    .line 4949
    check-cast v0, Ldrb;

    .line 4952
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v1

    invoke-static {v1}, Leay;->b(I)Leay;

    move-result-object v1

    .line 4953
    invoke-virtual {v0}, Ldrb;->n()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4954
    invoke-virtual {v1}, Leay;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    .line 4955
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_b

    .line 4956
    const-string v0, "RefreshParticipantsOperationOperation successful: "

    .line 4957
    invoke-virtual {p2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4959
    :cond_b
    :goto_5
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Leay;->a(I)V

    .line 4963
    :cond_c
    instance-of v0, p3, Ldsq;

    if-eqz v0, :cond_d

    move-object v0, p3

    .line 4964
    check-cast v0, Ldsq;

    .line 50584
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v2, Ldzu;

    invoke-direct {v2, p2, v0}, Ldzu;-><init>(Lbfd;Ldsq;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4969
    :cond_d
    instance-of v0, p3, Ldrj;

    if-eqz v0, :cond_13

    .line 4970
    check-cast p3, Ldrj;

    .line 50593
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzt;

    invoke-direct {v1, p2, p3}, Ldzt;-><init>(Lbfd;Ldrj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50656
    :cond_e
    :goto_6
    return-void

    .line 4923
    :cond_f
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_7

    .line 4924
    const-string v0, "SetActiveClientOperation successful: "

    .line 4925
    invoke-virtual {p2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    :cond_10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4939
    :cond_11
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4957
    :cond_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 4975
    :cond_13
    instance-of v0, p3, Ldrg;

    if-eqz v0, :cond_15

    move-object v0, p3

    .line 4976
    check-cast v0, Ldrg;

    .line 4978
    invoke-virtual {v0}, Ldrg;->k()Ljava/lang/String;

    move-result-object v1

    .line 4979
    invoke-virtual {v0}, Ldrg;->l()Ljava/util/List;

    move-result-object v2

    .line 4978
    invoke-static {v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 4987
    invoke-virtual {v0}, Ldrg;->l()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ldrg;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    .line 4988
    :cond_14
    new-instance v1, Lbfz;

    invoke-virtual {p2}, Lbfd;->g()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4989
    const/4 v2, 0x0

    .line 4990
    invoke-virtual {v0}, Ldrg;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbfz;->M(Ljava/lang/String;)J

    move-result-wide v4

    .line 4991
    invoke-virtual {v0}, Ldrg;->k()Ljava/lang/String;

    move-result-object v0

    .line 4989
    invoke-virtual {v1, v2, v4, v5, v0}, Lbfz;->a(IJLjava/lang/String;)V

    .line 4995
    :cond_15
    instance-of v0, p3, Ldre;

    if-eqz v0, :cond_16

    move-object v0, p3

    .line 4996
    check-cast v0, Ldre;

    .line 4997
    invoke-virtual {v0}, Ldre;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4998
    const-string v0, "hangoutId is empty"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 5005
    :cond_16
    :goto_7
    instance-of v0, p3, Ldqk;

    if-nez v0, :cond_17

    instance-of v0, p3, Ldsj;

    if-nez v0, :cond_17

    .line 5009
    new-instance v0, Leau;

    .line 5010
    invoke-virtual {p3}, Ldqf;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p3}, Leau;-><init>(IILdqf;)V

    .line 5011
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5014
    :cond_17
    instance-of v0, p3, Ldql;

    if-eqz v0, :cond_18

    move-object v0, p3

    .line 5015
    check-cast v0, Ldql;

    .line 50602
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v2, Ldzz;

    invoke-direct {v2, v0}, Ldzz;-><init>(Ldql;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5019
    :cond_18
    instance-of v0, p3, Ldri;

    if-eqz v0, :cond_19

    move-object v0, p3

    .line 5020
    check-cast v0, Ldri;

    .line 50611
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v2, Ldzv;

    invoke-direct {v2, v0}, Ldzv;-><init>(Ldri;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5024
    :cond_19
    instance-of v0, p3, Ldqt;

    if-eqz v0, :cond_1a

    move-object v0, p3

    .line 5025
    check-cast v0, Ldqt;

    .line 50621
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v2, Ldzw;

    invoke-direct {v2, v0}, Ldzw;-><init>(Ldqt;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5029
    :cond_1a
    instance-of v0, p3, Ldqh;

    if-eqz v0, :cond_1b

    move-object v0, p3

    .line 5030
    check-cast v0, Ldqh;

    .line 50631
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v2, Ldzx;

    invoke-direct {v2, v0}, Ldzx;-><init>(Ldqh;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5034
    :cond_1b
    instance-of v0, p3, Ldrd;

    if-eqz v0, :cond_1c

    move-object v0, p3

    .line 5035
    check-cast v0, Ldrd;

    .line 50641
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v2, Leaa;

    invoke-direct {v2, v0}, Leaa;-><init>(Ldrd;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5039
    :cond_1c
    const-wide/16 v0, 0x0

    .line 5040
    sget-boolean v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v2, :cond_1d

    .line 5041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5046
    :cond_1d
    invoke-virtual {p4, p2}, Ldyy;->a(Lbfd;)V

    .line 5050
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v2

    invoke-static {p1, v2}, Lbff;->f(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    .line 5052
    :goto_8
    invoke-static {v2, p3, p4}, Lbft;->a(Lbfz;Ldqf;Ldyy;)V

    .line 5057
    invoke-virtual {p4}, Ldyy;->e()V

    .line 5059
    sget-boolean v3, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v3, :cond_1e

    .line 5060
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5061
    sub-long v6, v4, v0

    const-wide/16 v8, 0x3e8

    cmp-long v3, v6, v8

    if-lez v3, :cond_1e

    .line 5062
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-long v0, v4, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "processResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5069
    :cond_1e
    instance-of v0, p3, Ldsj;

    if-eqz v0, :cond_e

    if-eqz v2, :cond_e

    .line 5070
    check-cast p3, Ldsj;

    .line 5071
    invoke-virtual {p3}, Ldsj;->t()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_e

    .line 5072
    invoke-virtual {p3}, Ldsj;->u()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5073
    invoke-virtual {p3}, Ldsj;->q()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 5074
    invoke-virtual {p3}, Ldsj;->q()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_21

    .line 5075
    invoke-virtual {p3}, Ldsj;->q()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_21

    .line 5076
    invoke-virtual {p3}, Ldsj;->q()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lbfz;->af(Ljava/lang/String;)Ldrp;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 5077
    const-string v0, "Babel_RTCS"

    const-string v1, "sticker photo no upload"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 5000
    :cond_1f
    new-instance v1, Ldof;

    invoke-virtual {v0}, Ldre;->k()Ljava/lang/String;

    move-result-object v2

    .line 5001
    invoke-virtual {v0}, Ldre;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ldof;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5000
    invoke-virtual {p4, v1}, Ldyy;->a(Leff;)V

    goto/16 :goto_7

    .line 5051
    :cond_20
    new-instance v2, Lbfz;

    invoke-virtual {p2}, Lbfd;->g()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_8

    .line 5080
    :cond_21
    const-string v0, "Babel_RTCS"

    const-string v1, "initiate full res upload"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5082
    invoke-virtual {p3}, Ldsj;->k()Ljava/lang/String;

    move-result-object v0

    .line 5083
    invoke-virtual {p3}, Ldsj;->o()Ljava/lang/String;

    move-result-object v1

    .line 50651
    invoke-virtual {v2, v0, v1}, Lbfz;->f(Ljava/lang/String;Ljava/lang/String;)Lbgo;

    move-result-object v2

    .line 50653
    if-eqz v2, :cond_22

    iget-object v3, v2, Lbgo;->j:Ljava/lang/String;

    if-nez v3, :cond_23

    .line 50655
    :cond_22
    const-string v0, "Babel_RTCS"

    const-string v1, "empty image url, can\'t upload"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 50659
    :cond_23
    new-instance v3, Ldyf;

    iget-object v4, v2, Lbgo;->j:Ljava/lang/String;

    invoke-direct {v3, v4}, Ldyf;-><init>(Ljava/lang/String;)V

    .line 50661
    invoke-virtual {v3, v1}, Ldyf;->a(Ljava/lang/String;)Ldyf;

    move-result-object v1

    .line 50662
    invoke-virtual {v1, v0}, Ldyf;->b(Ljava/lang/String;)Ldyf;

    move-result-object v0

    iget-object v1, v2, Lbgo;->m:Ljava/lang/String;

    .line 50663
    invoke-virtual {v0, v1}, Ldyf;->c(Ljava/lang/String;)Ldyf;

    move-result-object v0

    iget-object v1, v2, Lbgo;->n:Ljava/lang/String;

    .line 50664
    invoke-virtual {v0, v1}, Ldyf;->d(Ljava/lang/String;)Ldyf;

    move-result-object v0

    const-string v1, "image/jpeg"

    .line 50665
    invoke-virtual {v0, v1}, Ldyf;->e(Ljava/lang/String;)Ldyf;

    move-result-object v0

    .line 50666
    invoke-virtual {v0}, Ldyf;->a()Ldye;

    move-result-object v0

    .line 50667
    invoke-static {p2}, Ldvd;->e(Lbfd;)Ldvm;

    move-result-object v1

    .line 50668
    const/4 v2, 0x1

    new-array v2, v2, [Ldye;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Laen;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 50669
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v2

    invoke-virtual {v2}, Lebi;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l:Leer;

    invoke-virtual {v1, v0, v2, v3}, Ldvm;->a(Ljava/util/Collection;ILeer;)V

    goto/16 :goto_6
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1270
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const-string v1, "op"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1272
    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 26108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1274
    return-void
.end method

.method private static a(Landroid/content/Intent;Leau;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 5122
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Leag;

    invoke-direct {v1, p0, p1, p2}, Leag;-><init>(Landroid/content/Intent;Leau;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5128
    new-instance v0, Leah;

    invoke-direct {v0, p0, p1, p2}, Leah;-><init>(Landroid/content/Intent;Leau;Ljava/lang/Object;)V

    invoke-static {v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 5134
    return-void
.end method

.method public static a(Landroid/content/Intent;Leau;Ljava/lang/Object;Z)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 5582
    const-string v0, "op"

    invoke-virtual {p0, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5583
    const-string v1, "rid"

    invoke-virtual {p0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5584
    const-string v2, "account_id"

    invoke-virtual {p0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 5585
    invoke-static {v3}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 5586
    if-nez v2, :cond_1

    .line 5587
    const-string v0, "Babel_RTCS"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x44

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[onIntentProcessed] Skipping intent for invalid account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5645
    :cond_0
    :goto_0
    return-void

    .line 5591
    :cond_1
    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v4, :cond_2

    .line 5592
    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "[onIntentProcessed] opCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", requestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5597
    :cond_2
    if-eqz p3, :cond_4

    .line 5598
    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 5600
    check-cast p2, Ljava/util/List;

    .line 5601
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leau;

    .line 5602
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leam;

    .line 5603
    invoke-virtual {v0}, Leau;->a()I

    move-result v5

    invoke-interface {v1, v5, v2, v0}, Leam;->a(ILbfd;Leau;)V

    goto :goto_1

    .line 5608
    :cond_4
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 5625
    :sswitch_0
    check-cast p2, Ldwd;

    .line 5627
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leap;

    .line 5628
    invoke-virtual {v0, v1, v2, p2, p1}, Leap;->a(ILbfd;Ldwd;Leau;)V

    goto :goto_2

    .line 5610
    :sswitch_1
    if-eqz p2, :cond_0

    .line 5613
    check-cast p2, Ljava/util/List;

    .line 5615
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leau;

    .line 5616
    invoke-virtual {v0}, Leau;->a()I

    move-result v4

    .line 5617
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leap;

    .line 5618
    invoke-virtual {v1, v4, v2, v0}, Leap;->a(ILbfd;Leau;)V

    goto :goto_3

    :sswitch_2
    move-object v3, p2

    .line 5634
    check-cast v3, Ldwd;

    .line 5636
    const-string v0, "original_conversation_id"

    invoke-virtual {p0, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 5637
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leap;

    move-object v4, p1

    .line 5638
    invoke-virtual/range {v0 .. v5}, Leap;->a(ILbfd;Ldwd;Leau;I)V

    goto :goto_4

    .line 5608
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x27 -> :sswitch_1
        0xb9 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Landroid/net/Uri;JZ)V
    .locals 5

    .prologue
    .line 50697
    sget-object v0, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 5952
    if-nez v0, :cond_0

    .line 5962
    :goto_0
    return-void

    .line 5956
    :cond_0
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x70

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 5957
    const-string v1, "uri"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5958
    const-string v1, "thread_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5959
    const-string v1, "notification_row_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5960
    const-string v1, "mms_auto_retrieve"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50700
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50698
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method public static a(Lbfd;)V
    .locals 3

    .prologue
    .line 1217
    invoke-static {p0}, Ldvd;->e(Lbfd;)Ldvm;

    move-result-object v0

    .line 1218
    new-instance v1, Ldxi;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ldxi;-><init>(Z)V

    .line 1219
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v2

    invoke-virtual {v2}, Lebi;->a()I

    move-result v2

    .line 1220
    invoke-virtual {v0, v1, v2}, Ldvm;->a(Leff;I)V

    .line 1221
    return-void
.end method

.method public static a(Lbfd;J)V
    .locals 3

    .prologue
    .line 5138
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzc;

    invoke-direct {v1, p0, p1, p2}, Ldzc;-><init>(Lbfd;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5146
    return-void
.end method

.method private a(Lbfd;Ldvm;Legs;JJJLknq;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfd;",
            "Ldvm;",
            "Legs;",
            "JJJ",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4509
    const-string v2, "Babel_RTCS"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4510
    const/4 v2, 0x0

    .line 4511
    move-object/from16 v0, p3

    instance-of v3, v0, Lefo;

    if-eqz v3, :cond_0

    move-object/from16 v2, p3

    .line 4512
    check-cast v2, Lefo;

    invoke-virtual {v2}, Lefo;->a()Ljava/lang/String;

    move-result-object v2

    .line 4514
    :cond_0
    const-string v3, "Babel_RTCS"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4515
    invoke-virtual {p1}, Lbfd;->b()Lczb;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_5

    .line 4516
    const-string v6, "update convId "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x20

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "processServerUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", account: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 4514
    invoke-static {v3, v2, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4519
    :cond_1
    move-object/from16 v0, p3

    instance-of v2, v0, Lefn;

    if-eqz v2, :cond_7

    .line 4523
    check-cast p3, Lefn;

    .line 4525
    invoke-virtual/range {p3 .. p3}, Lefn;->a()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 4526
    sget-boolean v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v2, :cond_2

    .line 4527
    const-string v2, "Clearing active client time stamp for account: "

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4529
    :cond_2
    :goto_1
    invoke-static {p1}, Leck;->a(Lbfd;)Leck;

    move-result-object v2

    .line 4530
    invoke-virtual {v2}, Leck;->h()V

    .line 50496
    :cond_3
    :goto_2
    return-void

    .line 4516
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, ""

    goto :goto_0

    .line 4527
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 4534
    :cond_7
    move-object/from16 v0, p3

    instance-of v2, v0, Legp;

    if-eqz v2, :cond_8

    .line 4541
    check-cast p3, Legp;

    .line 4542
    invoke-virtual/range {p3 .. p3}, Legp;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 4543
    new-instance v2, Lbfz;

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4544
    invoke-virtual/range {p3 .. p3}, Legp;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbfz;->r(Ljava/lang/String;)V

    goto :goto_2

    .line 4548
    :cond_8
    move-object/from16 v0, p3

    instance-of v2, v0, Legr;

    if-eqz v2, :cond_a

    .line 4549
    check-cast p3, Legr;

    .line 4550
    invoke-virtual/range {p3 .. p3}, Legr;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4551
    invoke-virtual/range {p3 .. p3}, Legr;->a()J

    move-result-wide v4

    .line 4552
    if-eqz p1, :cond_9

    .line 4553
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lekq;

    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lekq;

    .line 4554
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    invoke-virtual {v2, v3, v4, v5}, Lekq;->a(IJ)V

    .line 4556
    :cond_9
    invoke-static {p1, v4, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;J)V

    goto :goto_2

    .line 4560
    :cond_a
    move-object/from16 v0, p3

    instance-of v2, v0, Legx;

    if-eqz v2, :cond_b

    .line 4561
    check-cast p3, Legx;

    .line 4564
    new-instance v2, Lbfz;

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4566
    new-instance v3, Ldva;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ldva;-><init>(Legx;)V

    .line 4567
    invoke-virtual {v3, v2}, Ldva;->b(Lbfz;)V

    goto :goto_2

    .line 4570
    :cond_b
    move-object/from16 v0, p3

    instance-of v2, v0, Lefp;

    if-eqz v2, :cond_c

    .line 4571
    check-cast p3, Lefp;

    .line 4573
    new-instance v2, Ldyy;

    invoke-direct {v2}, Ldyy;-><init>()V

    .line 4574
    new-instance v2, Lbfz;

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4576
    new-instance v3, Ldvu;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ldvu;-><init>(Lefp;)V

    .line 4577
    invoke-virtual {v3, v2}, Ldvu;->a(Lbfz;)V

    goto/16 :goto_2

    .line 4580
    :cond_c
    move-object/from16 v0, p3

    instance-of v2, v0, Lefz;

    if-eqz v2, :cond_e

    .line 4586
    check-cast p3, Lefz;

    invoke-virtual/range {p3 .. p3}, Lefz;->a()Ljava/lang/String;

    move-result-object v2

    .line 4587
    const-string v3, "ContactsNotification.selfFanoutId == "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4588
    :goto_3
    invoke-static {v2}, Ldoo;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4590
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZ)I

    goto/16 :goto_2

    .line 4587
    :cond_d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 4594
    :cond_e
    move-object/from16 v0, p3

    instance-of v2, v0, Legd;

    if-eqz v2, :cond_f

    .line 4595
    check-cast p3, Legd;

    .line 4598
    new-instance v2, Lbfz;

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4600
    new-instance v3, Ldwl;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ldwl;-><init>(Legd;)V

    .line 4601
    invoke-virtual {v3, v2}, Ldwl;->a(Lbfz;)V

    goto/16 :goto_2

    .line 4604
    :cond_f
    move-object/from16 v0, p3

    instance-of v2, v0, Legc;

    if-eqz v2, :cond_10

    .line 4605
    check-cast p3, Legc;

    .line 4607
    new-instance v2, Lbfz;

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4608
    move-object/from16 v0, p3

    iget v3, v0, Legc;->a:I

    move-object/from16 v0, p3

    iget-wide v4, v0, Legc;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lbfz;->a(IJ)V

    goto/16 :goto_2

    .line 4611
    :cond_10
    move-object/from16 v0, p3

    instance-of v2, v0, Legk;

    if-eqz v2, :cond_11

    .line 4612
    check-cast p3, Legk;

    .line 4614
    new-instance v2, Ldyy;

    invoke-direct {v2}, Ldyy;-><init>()V

    .line 4615
    new-instance v2, Lbfz;

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4617
    new-instance v3, Ledh;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ledh;-><init>(Legk;)V

    .line 4618
    invoke-virtual {v3, v2}, Ledh;->a(Lbfz;)V

    goto/16 :goto_2

    .line 4621
    :cond_11
    move-object/from16 v0, p3

    instance-of v2, v0, Legq;

    if-eqz v2, :cond_12

    .line 4622
    check-cast p3, Legq;

    .line 50436
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 4626
    const-class v3, Lhpz;

    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhpz;

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    invoke-interface {v2, v3}, Lhpz;->b(I)Lhqc;

    move-result-object v2

    .line 4628
    invoke-virtual/range {p3 .. p3}, Legq;->a()Ljava/util/List;

    move-result-object v3

    .line 4627
    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lhqe;Ljava/util/List;)V

    .line 4629
    invoke-virtual {v2}, Lhqc;->d()I

    .line 4630
    invoke-static {p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f(Lbfd;)V

    goto/16 :goto_2

    .line 4633
    :cond_12
    move-object/from16 v0, p3

    instance-of v2, v0, Lege;

    if-eqz v2, :cond_13

    .line 4634
    check-cast p3, Lege;

    .line 4636
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Lege;)V

    goto/16 :goto_2

    .line 4640
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 50437
    new-instance v5, Ldyy;

    invoke-direct {v5}, Ldyy;-><init>()V

    .line 50438
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v13

    .line 50442
    invoke-virtual {v5, p1}, Ldyy;->a(Lbfd;)V

    .line 50443
    invoke-virtual {v5}, Ldyy;->b()V

    .line 50445
    new-instance v3, Lbfz;

    .line 50526
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 50446
    invoke-direct {v3, v2, v13}, Lbfz;-><init>(Landroid/content/Context;I)V

    move-object/from16 v4, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 50445
    invoke-static/range {v3 .. v11}, Lbft;->a(Lbfz;Legs;Ldyy;JJJ)V

    .line 50455
    invoke-virtual {v5}, Ldyy;->e()V

    .line 50458
    invoke-virtual {v5}, Ldyy;->c()Ljava/util/List;

    move-result-object v2

    .line 50459
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 50460
    const-string v3, "Babel_RTCS"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 50461
    const-string v3, "Babel_RTCS"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 50462
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x42

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "processServerUpdate: sending "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " requests from processing "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 50461
    invoke-static {v3, v4, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50464
    :cond_14
    if-eqz p2, :cond_15

    .line 50465
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ldvm;->a(Ljava/util/Collection;I)V

    .line 50469
    :cond_15
    invoke-virtual {v5}, Ldyy;->f()Ldza;

    move-result-object v5

    .line 50470
    const-string v2, "Babel_RTCS"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 50471
    const-string v3, "Babel_RTCS"

    const-string v4, "update should trigger notification? "

    invoke-virtual {v5}, Ldza;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50475
    :cond_16
    const-string v3, ""

    .line 50476
    const-string v2, ""

    .line 50477
    move-object/from16 v0, p3

    instance-of v4, v0, Legf;

    if-eqz v4, :cond_1a

    move-object/from16 v2, p3

    .line 50478
    check-cast v2, Legf;

    .line 50479
    invoke-virtual {v2}, Legf;->a()Ljava/lang/String;

    move-result-object v3

    .line 50480
    invoke-virtual {v2}, Legf;->j()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 50483
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 50485
    sget-object v2, Ldza;->b:Ldza;

    if-ne v5, v2, :cond_18

    .line 50487
    const/16 v2, 0xa

    .line 50527
    new-instance v5, Lcsn;

    .line 50528
    invoke-direct {v5}, Lcsn;-><init>()V

    .line 50491
    const/16 v8, 0x1c5

    .line 50492
    invoke-virtual {v5, v8}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    .line 50493
    invoke-virtual {v5, v4}, Lcsn;->c(Ljava/lang/String;)Lcsn;

    move-result-object v5

    .line 50494
    invoke-virtual {v5, v3}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v5

    .line 50487
    invoke-static {v13, v6, v7, v2, v5}, Laen;->a(IJILcsn;)V

    .line 50558
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 50531
    const-string v5, "alarm"

    .line 50532
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 50534
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.google.android.apps.hangouts.DEFERRED_NOTIFICATION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50535
    const-string v6, "op"

    const/16 v7, 0x8b

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50536
    const-string v6, "account_id"

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50539
    const-string v6, "message_id"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50540
    const-string v4, "conversation_id"

    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50542
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    const/4 v4, 0x1

    const/16 v6, 0x6e

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Leyr;->a(IIILjava/lang/String;)I

    move-result v3

    .line 50559
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 50545
    const/high16 v6, 0x8000000

    invoke-static {v4, v3, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 50549
    const/4 v4, 0x2

    .line 50551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 50560
    sget-object v5, Laal;->oJ:Landroid/content/Context;

    .line 50553
    const-string v8, "babel_latenotifdly"

    const-wide/16 v10, 0xbb8

    .line 50552
    invoke-static {v5, v8, v10, v11}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 50549
    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 50471
    :cond_17
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 50498
    :cond_18
    sget-object v2, Ldza;->e:Ldza;

    if-ne v5, v2, :cond_19

    .line 50500
    const/16 v2, 0xa

    .line 50561
    new-instance v8, Lcsn;

    .line 50562
    invoke-direct {v8}, Lcsn;-><init>()V

    .line 50504
    const/16 v9, 0x193

    .line 50505
    invoke-virtual {v8, v9}, Lcsn;->a(I)Lcsn;

    move-result-object v8

    .line 50506
    invoke-virtual {v8, v4}, Lcsn;->c(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 50507
    invoke-virtual {v4, v3}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v3

    .line 50500
    invoke-static {v13, v6, v7, v2, v3}, Laen;->a(IJILcsn;)V

    .line 50510
    :cond_19
    const-class v2, Lcyh;

    invoke-static {v12, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyh;

    const/4 v3, 0x1

    .line 50511
    move-object/from16 v0, p10

    invoke-interface {v2, v13, v5, v3, v0}, Lcyh;->a(ILdza;ZLknq;)V

    .line 50518
    move-object/from16 v0, p3

    instance-of v2, v0, Lefr;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lbfd;->A()Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p3, Lefr;

    .line 50519
    invoke-virtual/range {p3 .. p3}, Lefr;->b()Lczb;

    move-result-object v2

    invoke-virtual {p1}, Lbfd;->b()Lczb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lczb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 50521
    const-class v2, Lcyh;

    invoke-static {v12, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyh;

    .line 50522
    invoke-interface {v2, v13}, Lcyh;->b(I)V

    goto/16 :goto_2

    :cond_1a
    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_5
.end method

.method public static a(Lbfd;Ldvn;)V
    .locals 2

    .prologue
    .line 5293
    if-eqz p1, :cond_1

    .line 5294
    invoke-virtual {p1}, Ldvn;->b()Lewy;

    move-result-object v0

    .line 5297
    :goto_0
    if-eqz v0, :cond_0

    .line 5301
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->p:Lean;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lewy;->a:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 5302
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->p:Lean;

    invoke-interface {v1, p0, v0}, Lean;->a(Lbfd;Lewy;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5308
    :cond_0
    :goto_1
    return-void

    .line 5295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 50672
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50674
    new-instance v0, Ldzi;

    invoke-direct {v0, p0}, Ldzi;-><init>(Lbfd;)V

    invoke-static {v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static a(Lbfd;Leff;Ldvn;)V
    .locals 2

    .prologue
    .line 5195
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzg;

    invoke-direct {v1, p1, p0, p2}, Ldzg;-><init>(Leff;Lbfd;Ldvn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5205
    new-instance v0, Ldzh;

    invoke-direct {v0, p1, p0, p2}, Ldzh;-><init>(Leff;Lbfd;Ldvn;)V

    invoke-static {v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 5216
    return-void
.end method

.method public static a(Lbfd;Lege;)V
    .locals 2

    .prologue
    .line 5150
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzd;

    invoke-direct {v1, p0, p1}, Ldzd;-><init>(Lbfd;Lege;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5161
    return-void
.end method

.method public static a(Lbfd;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1207
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x4c

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 23037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 21108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1208
    return-void
.end method

.method public static a(Lbfd;Ljava/lang/String;II)V
    .locals 8

    .prologue
    .line 2248
    if-lt p2, p3, :cond_0

    .line 2266
    :goto_0
    return-void

    .line 2252
    :cond_0
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_1

    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Scheduling stress message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50225
    :cond_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2256
    const-string v1, "alarm"

    .line 2257
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 50226
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.hangouts.MESSAGE_STRESS_TEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50227
    const-string v2, "op"

    const/16 v3, 0x98

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50228
    const-string v2, "account_id"

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50229
    const-string v2, "conversation_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50230
    const-string v2, "stress_current_message_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50231
    const-string v2, "stress_max_message_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50238
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 50236
    const/16 v3, 0x70

    .line 50237
    invoke-static {v3}, Leyr;->a(I)I

    move-result v3

    const/high16 v4, 0x8000000

    .line 50236
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 50239
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 2260
    const-string v3, "babel_stress_message_delay"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 2263
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 2264
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static a(Lbfd;Ljava/lang/String;Lczb;Ljava/lang/String;JZ)V
    .locals 10

    .prologue
    .line 5427
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzq;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ldzq;-><init>(Lbfd;Ljava/lang/String;Lczb;Ljava/lang/String;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5436
    return-void
.end method

.method public static a(Lbfd;Ljava/lang/String;Lemd;)V
    .locals 3

    .prologue
    .line 1971
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xbf

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1972
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1973
    const-string v1, "type"

    invoke-virtual {p2}, Lemd;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50179
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50177
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 1975
    return-void
.end method

.method public static a(Lbfd;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1397
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x56

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1398
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    const-string v1, "verification_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    const-string v1, "is_discoverable"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 30108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1403
    return-void
.end method

.method public static a(Lbfd;Ljava/lang/String;Lkju;)V
    .locals 6

    .prologue
    .line 2770
    iget-object v1, p2, Lkju;->d:Ljava/lang/String;

    .line 2771
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v2, 0x4e

    invoke-static {v0, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v2

    .line 2772
    const-string v0, "hangout_id"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2773
    const-string v3, "Babel_RTCS"

    const-string v4, "Stashing logdata for session "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2774
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->v:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50315
    sget-object v0, Lkmm;->a:Lkmm;

    .line 50313
    invoke-static {v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 2776
    const/16 v0, 0x7dd

    invoke-static {v0}, Laal;->c(I)V

    .line 2777
    return-void

    .line 2773
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lbfd;Z)V
    .locals 2

    .prologue
    .line 1160
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d()Lbcm;

    move-result-object v0

    new-instance v1, Leaz;

    invoke-direct {v1, p0, p1}, Leaz;-><init>(Lbfd;Z)V

    invoke-interface {v0, v1}, Lbcm;->a(Lbcn;)Lbcg;

    .line 1167
    :goto_0
    return-void

    .line 1163
    :cond_0
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1164
    const-string v1, "retry_request"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 17108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    goto :goto_0
.end method

.method public static a(Lbfd;[J)V
    .locals 2

    .prologue
    .line 1964
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1965
    const-string v1, "message_row_ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 50176
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50174
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 1967
    return-void
.end method

.method public static a(Lbfd;[Ljava/lang/Long;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1940
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 1941
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v3

    const/16 v4, 0x2c

    invoke-static {v3, v4, p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1942
    const-string v4, "message_row_id"

    .line 50167
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 1942
    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1943
    const-string v2, "timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50170
    sget-object v2, Lkmm;->a:Lkmm;

    .line 50168
    invoke-static {v3, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 1940
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1946
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h(Lbfd;Ljava/lang/String;)V

    .line 1947
    return-void
.end method

.method public static a(Lbfd;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1993
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xbb

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1994
    const-string v1, "recent_call_row_ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 50185
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50183
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 1996
    return-void
.end method

.method public static a(Lbfz;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5222
    if-eqz p2, :cond_0

    move v0, v1

    .line 5223
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5225
    invoke-virtual {p0}, Lbfz;->a()V

    .line 5227
    if-eqz v0, :cond_1

    .line 5228
    :try_start_0
    array-length v5, p2

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, p2, v3

    .line 5230
    sget-object v7, Lemc;->e:Lemc;

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v6, v7, v8}, Lbfz;->a(Ljava/lang/String;Ljava/lang/String;Lemc;I)V

    .line 5232
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5233
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5228
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 5222
    goto :goto_0

    .line 5237
    :cond_1
    const-wide/32 v6, -0x80000000

    invoke-virtual {p0, p1, v6, v7}, Lbfz;->l(Ljava/lang/String;J)V

    .line 5239
    :cond_2
    invoke-virtual {p0, p1}, Lbfz;->f(Ljava/lang/String;)Lbgd;

    move-result-object v5

    .line 5240
    invoke-virtual {p0}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5242
    invoke-virtual {p0}, Lbfz;->c()V

    .line 5244
    invoke-static {p0}, Lbft;->d(Lbfz;)V

    .line 5246
    if-nez v5, :cond_3

    .line 5283
    :goto_2
    return-void

    .line 5242
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lbfz;->c()V

    throw v0

    .line 5250
    :cond_3
    iget-object v3, v5, Lbgd;->d:Ljava/lang/String;

    .line 5251
    if-nez v3, :cond_4

    .line 5252
    iget-object v3, v5, Lbgd;->o:Ljava/lang/String;

    .line 50671
    :cond_4
    sget-object v6, Laal;->oJ:Landroid/content/Context;

    .line 5256
    new-instance v7, Lcy;

    invoke-direct {v7, v6}, Lcy;-><init>(Landroid/content/Context;)V

    .line 5259
    invoke-virtual {v7, v1}, Lcy;->a(Z)Lcy;

    .line 5260
    if-eqz v0, :cond_5

    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->aL:I

    .line 5262
    :goto_3
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    .line 5263
    invoke-virtual {v7, v3}, Lcy;->b(Ljava/lang/CharSequence;)Lcy;

    .line 5264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcy;->a(J)Lcy;

    .line 5265
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bV:I

    invoke-virtual {v7, v0}, Lcy;->a(I)Lcy;

    .line 5268
    invoke-virtual {p0}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget v1, v5, Lbgd;->b:I

    .line 5267
    invoke-static {v0, p1, v1}, Laal;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 5269
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5271
    const/high16 v1, 0x10000000

    invoke-static {v6, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcy;->a(Landroid/app/PendingIntent;)Lcy;

    .line 5277
    const-string v0, "notification"

    .line 5278
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 5280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "failed_to_delete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    .line 5282
    invoke-virtual {v7}, Lcy;->g()Landroid/app/Notification;

    move-result-object v3

    .line 5279
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 5261
    :cond_5
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->aK:I

    goto :goto_3
.end method

.method private a(Ldvm;Landroid/content/Intent;Ldym;Lbfd;)V
    .locals 5

    .prologue
    .line 4443
    invoke-virtual {p3}, Ldym;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4444
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 4447
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is executed directly: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4449
    :cond_0
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->u:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 4450
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Ldym;->a(I)V

    .line 4451
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    .line 4463
    :cond_1
    :goto_0
    return-void

    .line 4452
    :cond_2
    invoke-virtual {p3}, Ldym;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4453
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_3

    .line 4454
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is queued: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4456
    :cond_3
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->u:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4457
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ldym;->a(I)V

    goto :goto_0

    .line 4459
    :cond_4
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_1

    .line 4460
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is ignored: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static a(Lean;)V
    .locals 0

    .prologue
    .line 1089
    sput-object p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->p:Lean;

    .line 1090
    return-void
.end method

.method public static a(Leao;)V
    .locals 0

    .prologue
    .line 1098
    sput-object p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->q:Leao;

    .line 1099
    return-void
.end method

.method public static a(Leap;)V
    .locals 1

    .prologue
    .line 1050
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    :cond_0
    return-void
.end method

.method public static a(Lebi;I)V
    .locals 1

    .prologue
    .line 2845
    const/16 v0, 0xcc

    invoke-static {p1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2846
    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lebi;Landroid/content/Intent;)V

    .line 2847
    return-void
.end method

.method public static a(Lebi;ILdnq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2833
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2834
    const-string v1, "chat_acl_key"

    invoke-virtual {p2}, Ldnq;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2835
    const-string v1, "chat_acl_circle_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2836
    const-string v1, "chat_acl_circle_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2837
    const-string v1, "chat_acl_level"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2838
    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lebi;Landroid/content/Intent;)V

    .line 2839
    return-void
.end method

.method public static a(Lebi;IZ)V
    .locals 3

    .prologue
    .line 1254
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1255
    const-string v1, "setselfinfo_bit"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1256
    const-string v1, "setselfinfo_bit_value"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1257
    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lebi;Landroid/content/Intent;)V

    .line 1258
    return-void
.end method

.method public static a(Lebi;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1727
    invoke-static {p0, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lebi;Landroid/content/Intent;)V

    .line 1728
    return-void
.end method

.method private static a(Lebi;Landroid/content/Intent;Lknq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lebi;",
            "Landroid/content/Intent;",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3061
    const-string v0, "rid"

    invoke-virtual {p0}, Lebi;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3062
    invoke-static {p1, p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 3064
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 3065
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "op"

    const/4 v2, 0x0

    .line 3066
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "start command request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " opCode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    :cond_0
    return-void
.end method

.method public static a(Legy;)V
    .locals 2

    .prologue
    .line 5442
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzr;

    invoke-direct {v1, p0}, Ldzr;-><init>(Legy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5450
    return-void
.end method

.method public static a(Lhqe;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhqe;",
            "Ljava/util/List",
            "<",
            "Leyu",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4747
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyu;

    .line 4748
    iget-object v1, v0, Leyu;->a:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/Integer;

    .line 50563
    invoke-static {v1, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 4749
    iget-object v0, v0, Leyu;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Boolean;

    .line 50564
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 4752
    sparse-switch v1, :sswitch_data_0

    .line 4760
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 4761
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x4d

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "RichPresenceEnabledStateNotification received for unhandled type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4754
    :sswitch_0
    const-string v0, "rich_status_device_reporting_key"

    .line 4766
    :goto_1
    invoke-interface {p0, v0, v3}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    goto :goto_0

    .line 4757
    :sswitch_1
    const-string v0, "last_seen_bool_key"

    goto :goto_1

    .line 4768
    :cond_1
    return-void

    .line 4752
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Lbfd;JJLknq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbfd;",
            "JJ",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1903
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1905
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1906
    const-string v1, "gcm_handle_timestamps"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1907
    invoke-static {v0, p0}, Legt;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1908
    invoke-static {v0, p6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 1909
    return-void
.end method

.method public static a(Ljava/lang/String;Lczb;Z)V
    .locals 2

    .prologue
    .line 5389
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzo;

    invoke-direct {v1, p0, p1, p2}, Ldzo;-><init>(Ljava/lang/String;Lczb;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5397
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 6106
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Leab;

    invoke-direct {v1, p0, p1}, Leab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6114
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5406
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzp;

    invoke-direct {v1, p0, p1}, Ldzp;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5414
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1567
    invoke-static {v6}, Ldvd;->d(Z)[I

    move-result-object v0

    .line 1569
    array-length v1, v0

    if-nez v1, :cond_1

    .line 1573
    const-string v0, "Babel_RTCS"

    const-string v1, "All accounts removed"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1605
    :cond_0
    :goto_0
    return-void

    .line 1577
    :cond_1
    aget v1, v0, v6

    .line 1578
    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 47036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1579
    const-class v3, Leot;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 1580
    if-eqz v2, :cond_0

    .line 1581
    invoke-static {v2}, Ldvd;->d(Lbfd;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1582
    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1586
    const-string v0, "Babel_RTCS"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1587
    const-string v0, "Babel_RTCS"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x38

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Use account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to unregistered removed accounts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1591
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1592
    invoke-static {v0}, Lczb;->a(Ljava/lang/String;)Lczb;

    move-result-object v3

    .line 1593
    invoke-static {v3}, Ldvd;->a(Lczb;)Lbfd;

    move-result-object v3

    .line 1594
    if-eqz v3, :cond_3

    .line 1595
    const-string v1, "Babel_RTCS"

    .line 1596
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Removing a valid account by mistake:accountName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", accountGaia="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    .line 1595
    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1601
    :cond_4
    const/16 v0, 0x68

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1602
    const-string v1, "account_gaiaids"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 49037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 47108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    goto/16 :goto_0
.end method

.method public static a([B)V
    .locals 2

    .prologue
    .line 50690
    sget-object v0, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 5913
    if-nez v0, :cond_0

    .line 5922
    :goto_0
    return-void

    .line 5918
    :cond_0
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x73

    .line 5917
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 5920
    const-string v1, "mms_wap_push_data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 50693
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50691
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method public static b(II)I
    .locals 2

    .prologue
    .line 2640
    const/16 v0, 0xcb

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2641
    const-string v1, "affinity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50288
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50286
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2642
    return v0
.end method

.method public static b(IJ)I
    .locals 5

    .prologue
    .line 2117
    const/16 v0, 0x51

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2118
    const-string v1, "scroll_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2119
    const-string v1, "scroll_to_item_timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50209
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50207
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2120
    return v0
.end method

.method public static b(Landroid/content/Intent;Lknq;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3085
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v0

    .line 3086
    invoke-static {v0, p0, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;Landroid/content/Intent;Lknq;)V

    .line 3087
    invoke-virtual {v0}, Lebi;->a()I

    move-result v0

    return v0
.end method

.method public static b(Lbfd;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 2736
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x3e

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2737
    const-string v1, "otr_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50306
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50304
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2738
    return v0
.end method

.method public static b(Lbfd;Ljava/lang/String;J)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2088
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x23

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2089
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 2090
    const-string v1, "watermark"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50203
    :cond_0
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50201
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2092
    return v0
.end method

.method public static b(Lbfd;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2147
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2148
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2149
    const-string v1, "requester_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50215
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50213
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2150
    return v0
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 1202
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 21037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 19108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1203
    return-void
.end method

.method public static b(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 2921
    const/16 v0, 0x67

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50354
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50351
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 2923
    return-void
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2930
    const/16 v0, 0x93

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2931
    const-string v1, "message_text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50358
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50355
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 2933
    return-void
.end method

.method public static b(JJ)V
    .locals 8

    .prologue
    .line 50240
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2287
    const-string v1, "alarm"

    .line 2288
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 50241
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.hangouts.RENEW_ACCOUNT_REGISTRATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50242
    const-string v2, "op"

    const/16 v3, 0x8d

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50246
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 50244
    const/16 v3, 0x6f

    .line 50245
    invoke-static {v3}, Leyr;->a(I)I

    move-result v3

    const/high16 v4, 0x8000000

    .line 50244
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2292
    const/4 v1, 0x2

    move-wide v2, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2294
    return-void
.end method

.method static b(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 16037
    sget-object v0, Lkmm;->a:Lkmm;

    .line 1108
    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1109
    return-void
.end method

.method public static b(Lbfd;)V
    .locals 2

    .prologue
    .line 1547
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 46037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 44108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1548
    return-void
.end method

.method public static b(Lbfd;J)V
    .locals 3

    .prologue
    .line 6099
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xa9

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 6100
    const-string v1, "extra_duration"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50728
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50726
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 6102
    return-void
.end method

.method public static b(Lbfd;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1261
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1262
    const-string v1, "member_gaiaid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 24108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1265
    return-void
.end method

.method public static b(Lbfd;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2510
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xab

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2511
    const-string v1, "conversationids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 50258
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50256
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 2514
    return-void
.end method

.method public static b(Leap;)V
    .locals 1

    .prologue
    .line 1070
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1071
    return-void
.end method

.method private static b(Lebi;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 50435
    sget-object v0, Lkmm;->a:Lkmm;

    .line 3071
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;Landroid/content/Intent;Lknq;)V

    .line 3072
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1557
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ljava/util/ArrayList;)V

    .line 1559
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 8036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 696
    const-class v1, Ledw;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledw;

    invoke-interface {v0}, Ledw;->a()Z

    move-result v0

    return v0
.end method

.method public static c(II)I
    .locals 2

    .prologue
    .line 2664
    const/16 v0, 0x36

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2665
    const-string v1, "conversation_sync_filter"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50294
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50292
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2666
    return v0
.end method

.method public static c(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 2954
    const/16 v0, 0x97

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2955
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50367
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50365
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2956
    return v0
.end method

.method public static c(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2991
    invoke-static {p1}, Lezm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2992
    invoke-static {p2}, Lezm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2993
    const/16 v0, 0xc4

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2994
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2995
    const-string v1, "from_phone_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50376
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50374
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2996
    return v0
.end method

.method public static c(Lbfd;Ljava/lang/String;J)I
    .locals 4

    .prologue
    .line 2136
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x52

    .line 2135
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2137
    const-string v1, "scroll_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2138
    const-string v1, "scroll_to_item_timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50212
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50210
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2139
    return v0
.end method

.method public static c(Lbfd;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2570
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x25

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2571
    const-string v1, "conversation_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50273
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50271
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2572
    return v0
.end method

.method public static c(Landroid/content/Intent;)Ldqf;
    .locals 4

    .prologue
    .line 1468
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1469
    const-string v1, "server_response_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1471
    const-string v2, "server_response_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 44027
    invoke-static {v1}, Leez;->a(Landroid/content/Context;)Leez;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Leez;->c(J)Ldqf;

    move-result-object v0

    .line 1476
    :goto_0
    return-object v0

    .line 1472
    :cond_0
    const-string v1, "server_response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1473
    const-string v0, "server_response"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1474
    invoke-static {v0}, Lefc;->b([B)Ldqf;

    move-result-object v0

    goto :goto_0

    .line 1476
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 1424
    new-instance v0, Landroid/content/Intent;

    .line 35036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1424
    const-class v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1425
    const-string v1, "op"

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 35108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1427
    return-void
.end method

.method public static c(I)V
    .locals 2

    .prologue
    .line 1982
    const/16 v0, 0xbc

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50182
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50180
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 1984
    return-void
.end method

.method public static c(IJ)V
    .locals 3

    .prologue
    .line 6055
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    .line 6056
    if-nez v0, :cond_0

    .line 6064
    :goto_0
    return-void

    .line 6060
    :cond_0
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x85

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 6061
    const-string v1, "free_sms_storage_action_index"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6062
    const-string v1, "free_sms_storage_duration"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50719
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50717
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method private static c(Landroid/content/Intent;Lknq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1114
    const-string v0, "rqtms"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1115
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->y:Z

    if-eqz v0, :cond_1

    .line 1116
    :cond_0
    const-string v0, "rqtns"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 17036
    :cond_1
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1119
    sget-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->w:Ljava/lang/Object;

    monitor-enter v2

    .line 1120
    :try_start_0
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2

    .line 1124
    const-string v0, "power"

    .line 1125
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1126
    const/4 v3, 0x1

    const-string v4, "hangouts_rtcs"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    .line 1128
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_3

    .line 1130
    const-string v0, "acquiring wakelock for opcode "

    const-string v2, "op"

    .line 1131
    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1133
    :cond_3
    :goto_0
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1134
    const-class v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1135
    const-string v0, "pid"

    sget v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->o:I

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1136
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_4

    .line 1137
    const-string v0, "stack_trace"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Lezi;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    :cond_4
    const-class v0, Leec;

    .line 1141
    invoke-static {v1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leec;

    .line 1142
    invoke-interface {v0, v1, p0, p1}, Leec;->a(Landroid/content/Context;Landroid/content/Intent;Lknq;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1144
    const-string v0, "Babel_RTCS"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "RTCS failed to start service for intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    const-string v0, "account_id"

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1146
    const-class v0, Lhba;

    invoke-static {v1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0x903

    .line 1147
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 1148
    invoke-interface {v0}, Lhax;->d()V

    .line 1149
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1151
    :cond_5
    return-void

    .line 1128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1131
    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static c(Lbfd;)V
    .locals 3

    .prologue
    .line 1611
    invoke-static {p0}, Leck;->a(Lbfd;)Leck;

    move-result-object v0

    .line 1614
    if-nez v0, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1622
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d()Lbcm;

    move-result-object v1

    invoke-interface {v1, v0}, Lbcm;->a(Lbcn;)Lbcg;

    goto :goto_0

    .line 1624
    :cond_2
    invoke-virtual {v0}, Leck;->e()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Leck;->f()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1625
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 1626
    const-string v0, "SetActiveClientOperation is idle: "

    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1631
    :cond_4
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50099
    sget-object v1, Lkmm;->a:Lkmm;

    .line 49108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    goto :goto_0
.end method

.method public static c(Lbfd;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1389
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x55

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 1390
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 28108
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 1393
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1999
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2001
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2002
    const-string v1, "Babel"

    const-string v2, "onRequestDiscarded invalid token: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2014
    :goto_1
    return-void

    .line 2002
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2008
    :cond_1
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 2009
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v1

    .line 2010
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    const/16 v2, 0x71

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2012
    const-string v2, "message_row_id"

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50188
    sget-object v0, Lkmm;->a:Lkmm;

    .line 50186
    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_1
.end method

.method public static d(Lbfd;)I
    .locals 2

    .prologue
    .line 2893
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x60

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50343
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50341
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2893
    return v0
.end method

.method public static d(Lbfd;Ljava/lang/String;J)I
    .locals 2

    .prologue
    .line 2173
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x95

    .line 2172
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2174
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50221
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50219
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2175
    return v0
.end method

.method public static d(Lbfd;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2594
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xb1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ringtone_uri"

    .line 2595
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50279
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50277
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2596
    return v0
.end method

.method public static d()Lbcm;
    .locals 2

    .prologue
    .line 50100
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1636
    const-class v1, Lbcm;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    return-object v0
.end method

.method public static d(I)V
    .locals 2

    .prologue
    .line 2795
    const/16 v0, 0x59

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50322
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50319
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    .line 2796
    return-void
.end method

.method public static d(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 50685
    sget-object v0, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 5896
    if-nez v0, :cond_0

    .line 5905
    :goto_0
    return-void

    .line 5900
    :cond_0
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    .line 50686
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 5901
    const-class v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5902
    const-string v1, "op"

    const/16 v2, 0x6d

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5903
    const-string v1, "account_id"

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50689
    sget-object v0, Lkmm;->a:Lkmm;

    .line 50687
    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method private d(Landroid/content/Intent;Lknq;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3096
    const-string v2, "op"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3097
    const-string v3, "account_id"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 3098
    invoke-static/range {v26 .. v26}, Ldvd;->e(I)Lbfd;

    move-result-object v3

    .line 3099
    const-string v4, "rid"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 3101
    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v4, :cond_0

    .line 3102
    invoke-static {v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "processIntent opCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requestId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3104
    sget-object v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b:Lezv;

    invoke-static {v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lezv;->c(Ljava/lang/String;)V

    .line 3107
    :cond_0
    sget-object v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->q:Leao;

    if-eqz v4, :cond_1

    .line 3108
    sget-object v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->q:Leao;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Leao;->a(Landroid/content/Intent;)V

    .line 3110
    :cond_1
    if-nez v3, :cond_3

    .line 3111
    const-string v3, "Babel_RTCS"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Skipping intent for invalid account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3112
    const/16 v3, 0x4e

    if-ne v2, v3, :cond_2

    .line 3113
    const/16 v2, 0x94b

    invoke-static {v2}, Laal;->c(I)V

    .line 4439
    :cond_2
    :goto_0
    return-void

    .line 3119
    :cond_3
    invoke-static {v3}, Ldvd;->e(Lbfd;)Ldvm;

    move-result-object v4

    .line 3122
    sparse-switch v2, :sswitch_data_0

    .line 3562
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3675
    :pswitch_1
    :try_start_0
    const-string v2, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lihb;

    .line 3676
    new-instance v5, Ldwc;

    const-string v2, "conversation_name"

    .line 3679
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "conversation_lookup"

    .line 3681
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lbfw;

    const-string v2, "conversation_hangout"

    const/4 v6, 0x0

    .line 3683
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v2, "force_group"

    const/4 v6, 0x0

    .line 3684
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v2, "transport_type"

    const/4 v6, 0x0

    .line 3685
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v2, "invite_token_url"

    .line 3687
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v6, v3

    invoke-direct/range {v5 .. v13}, Ldwc;-><init>(Lbfd;Ljava/lang/String;Lihb;Lbfw;ZZILjava/lang/String;)V

    .line 3688
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4426
    :catch_0
    move-exception v2

    .line 4427
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lbff;->f(Landroid/content/Context;I)Z

    move-result v3

    .line 4428
    const-string v4, "Babel_RTCS"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Exception in processIntent, logged off: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4429
    new-instance v4, Leau;

    const-string v5, "rid"

    const/4 v6, -0x1

    .line 4430
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Leau;-><init>(IILdqf;)V

    const/4 v5, 0x0

    .line 4429
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Intent;Leau;Ljava/lang/Object;)V

    .line 4435
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 4436
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 3126
    :sswitch_0
    invoke-static/range {v26 .. v26}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l(I)V

    .line 3130
    invoke-static {}, Laal;->g()V

    .line 3131
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Laal;->a(Ljava/lang/String;II)V

    .line 3133
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v2

    invoke-virtual {v2}, Ldwt;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3137
    const-string v2, "Babel_RTCS"

    const-string v3, "GCM registration not done. Skip unregistering account"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3141
    :cond_4
    invoke-static {}, Laal;->k()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lhpz;

    invoke-static {v2, v5}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhpz;

    move/from16 v0, v26

    invoke-interface {v2, v0}, Lhpz;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3142
    new-instance v2, Lede;

    invoke-direct {v2, v3}, Lede;-><init>(Lbfd;)V

    .line 3143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3149
    :sswitch_1
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v2

    invoke-virtual {v2}, Ldwt;->c()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3150
    const-string v2, "Babel_RTCS"

    const-string v3, "GCM registration not done before unregistering account"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3154
    :cond_5
    const-string v2, "account_gaiaids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3156
    new-instance v5, Ledf;

    invoke-direct {v5, v3, v2}, Ledf;-><init>(Lbfd;Ljava/util/ArrayList;)V

    .line 3158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3167
    :sswitch_2
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v2

    invoke-virtual {v2}, Ldwt;->c()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3168
    const-string v2, "Babel_RTCS"

    const-string v3, "GCM registration not done before registering account"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3172
    :cond_6
    const-string v2, "retry_request"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3173
    new-instance v5, Leaz;

    invoke-direct {v5, v3, v2}, Leaz;-><init>(Lbfd;Z)V

    .line 3174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3183
    :sswitch_3
    const-string v2, "setselfinfo_bit"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3184
    const/4 v5, -0x1

    if-ne v2, v5, :cond_7

    .line 3185
    const-string v2, "Babel_RTCS"

    const-string v3, "OP_SET_SELF_INFO_BIT -- no EXTRA_SETSELFINO_BIT specified"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3188
    :cond_7
    const-string v5, "setselfinfo_bit_value"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3189
    sget-boolean v6, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v6, :cond_8

    .line 3190
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x37

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "OP_SET_SELF_INFO_BIT whichBit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3193
    :cond_8
    new-instance v6, Lect;

    invoke-direct {v6, v3, v2, v5}, Lect;-><init>(Lbfd;IZ)V

    .line 3194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3199
    :sswitch_4
    invoke-static {}, Lexo;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3200
    new-instance v2, Lexr;

    invoke-direct {v2}, Lexr;-><init>()V

    const-string v4, "rtcs_handle_deferred_notification"

    .line 3201
    invoke-virtual {v2, v4}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v2

    .line 3202
    invoke-virtual {v2, v3}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v2

    .line 3203
    invoke-virtual {v2}, Lexr;->b()V

    .line 3209
    :cond_9
    const-string v2, "message_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3210
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcyh;

    invoke-static {v2, v5}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyh;

    .line 3212
    move/from16 v0, v26

    invoke-interface {v2, v0, v3, v4}, Lcyh;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3222
    :sswitch_5
    invoke-static {}, Lexo;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3223
    new-instance v2, Lexr;

    invoke-direct {v2}, Lexr;-><init>()V

    const-string v5, "rtcs_handle_warm_sync"

    .line 3224
    invoke-virtual {v2, v5}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v2

    .line 3225
    invoke-virtual {v2, v3}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v2

    .line 3226
    invoke-virtual {v2}, Lexr;->b()V

    .line 3232
    :cond_a
    const-string v2, "expected_hash"

    const-wide/16 v6, -0x1

    .line 3233
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3234
    new-instance v2, Lduu;

    invoke-static {}, Laal;->k()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lduu;-><init>(Landroid/content/Context;)V

    .line 3235
    invoke-virtual {v3}, Lbfd;->g()I

    move-result v5

    invoke-virtual {v2, v5}, Lduu;->a(I)J

    move-result-wide v8

    .line 3237
    const-wide/16 v10, -0x1

    cmp-long v2, v6, v10

    if-eqz v2, :cond_c

    cmp-long v2, v6, v8

    if-nez v2, :cond_c

    .line 3238
    sget-boolean v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v2, :cond_2

    .line 3239
    const-string v2, "RequestWarmSyncOperation is cancelled due to matched hash values for account: "

    .line 3242
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3243
    :goto_1
    const/16 v2, 0x906

    invoke-static {v3, v2}, Laal;->a(Lbfd;I)V

    goto/16 :goto_0

    .line 3242
    :cond_b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3249
    :cond_c
    invoke-static/range {v26 .. v26}, Lebo;->b(I)Lebo;

    move-result-object v2

    .line 3251
    sget-boolean v5, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v5, :cond_d

    .line 3252
    const-string v5, "RequestWarmSyncOperation is executed directly: "

    .line 3253
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3255
    :cond_d
    :goto_2
    invoke-virtual {v2}, Lebo;->o()V

    .line 3256
    const-string v3, "suppress_notifications"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 3258
    const-string v5, "no_missed_events_expected"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3260
    invoke-virtual {v2, v5}, Lebo;->a(Z)V

    .line 3261
    invoke-virtual {v2, v3}, Lebo;->b(Z)V

    .line 3262
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lebo;->a(I)V

    .line 3263
    invoke-virtual {v2, v6, v7}, Lebo;->b(J)V

    .line 3264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3253
    :cond_e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 3269
    :sswitch_6
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3270
    new-instance v3, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3271
    invoke-virtual {v3, v2}, Lbfz;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3276
    :sswitch_7
    const-string v2, "dnd_expiration"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3277
    new-instance v2, Lecp;

    invoke-direct {v2, v3, v6, v7}, Lecp;-><init>(Lbfd;J)V

    .line 3278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    .line 3279
    invoke-static {}, Laal;->k()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lekq;

    invoke-static {v2, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lekq;

    .line 3280
    move/from16 v0, v26

    invoke-virtual {v2, v0, v6, v7}, Lekq;->a(IJ)V

    .line 3281
    invoke-static {v3, v6, v7}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;J)V

    .line 3282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcyh;

    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyh;

    const/4 v3, 0x1

    .line 3283
    move/from16 v0, v26

    invoke-interface {v2, v0, v3}, Lcyh;->a(IZ)V

    goto/16 :goto_0

    .line 3288
    :sswitch_8
    const-string v2, "archive"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3289
    const-string v2, "perform_locally"

    const/4 v6, 0x0

    .line 3290
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 3291
    const-string v2, "conversationids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3292
    const-string v2, "timestamps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    .line 3293
    array-length v2, v7

    array-length v9, v8

    if-eq v2, v9, :cond_f

    .line 3294
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must have same number of conversation ids and timestamps to archive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3298
    :cond_f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3301
    const/4 v2, 0x0

    :goto_3
    array-length v10, v7

    if-ge v2, v10, :cond_10

    .line 3302
    new-instance v10, Lduz;

    aget-object v11, v7, v2

    aget-wide v12, v8, v2

    invoke-direct {v10, v11, v12, v13}, Lduz;-><init>(Ljava/lang/String;J)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3301
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3306
    :cond_10
    new-instance v2, Lduy;

    invoke-direct {v2, v3, v9, v5, v6}, Lduy;-><init>(Lbfd;Ljava/util/List;ZZ)V

    .line 3308
    const-string v3, "rid"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lduy;->a(I)V

    .line 3309
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    .line 3310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcyh;

    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyh;

    const/4 v3, 0x1

    .line 3311
    move/from16 v0, v26

    invoke-interface {v2, v0, v3}, Lcyh;->a(IZ)V

    .line 3317
    invoke-static {}, Laal;->k()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v26

    invoke-static {v2, v0}, Lbft;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3321
    :sswitch_9
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3322
    const-string v5, "timestamp"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3323
    new-instance v5, Ldwk;

    invoke-direct {v5, v3, v2, v6, v7}, Ldwk;-><init>(Lbfd;Ljava/lang/String;J)V

    .line 3325
    const-string v2, "rid"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v2}, Ldwk;->a(I)V

    .line 3326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    .line 3327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcyh;

    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyh;

    const/4 v3, 0x1

    .line 3328
    move/from16 v0, v26

    invoke-interface {v2, v0, v3}, Lcyh;->a(IZ)V

    goto/16 :goto_0

    .line 3333
    :sswitch_a
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3334
    const-string v3, "event_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3336
    new-instance v4, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v4, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3337
    invoke-static {v4, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfz;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3341
    :sswitch_b
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3342
    new-instance v5, Ldyy;

    invoke-direct {v5}, Ldyy;-><init>()V

    .line 3343
    invoke-static {v3, v5, v2}, Lbft;->a(Lbfd;Ldyy;Ljava/lang/String;)V

    .line 3345
    invoke-virtual {v5}, Ldyy;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v3

    invoke-virtual {v3}, Lebi;->a()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l:Leer;

    .line 3344
    invoke-virtual {v4, v2, v3, v5}, Ldvm;->a(Ljava/util/Collection;ILeer;)V

    goto/16 :goto_0

    .line 3355
    :sswitch_c
    new-instance v2, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v2, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3356
    const-string v3, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3357
    const-string v4, "extra_pending_conversation_operations"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3358
    invoke-static {v2, v3, v4, v5}, Lbft;->b(Lbfz;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 3363
    :sswitch_d
    new-instance v2, Ldws;

    invoke-direct {v2, v3}, Ldws;-><init>(Lbfd;)V

    .line 3364
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3369
    :sswitch_e
    const-string v2, "status_message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3370
    new-instance v5, Lecu;

    invoke-direct {v5, v3, v2}, Lecu;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3371
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3376
    :sswitch_f
    const-string v2, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3378
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 3379
    new-instance v5, Ldwo;

    invoke-direct {v5, v3, v2}, Ldwo;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3382
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3384
    :cond_11
    const-string v2, "Babel_RTCS"

    const-string v3, "Dismiss suggested contacts operation scheduled without gaiaid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3390
    :sswitch_10
    const-string v2, "member_gaiaid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3392
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 3393
    new-instance v5, Ledd;

    invoke-direct {v5, v3, v2}, Ledd;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3396
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3398
    :cond_12
    const-string v2, "Babel_RTCS"

    const-string v3, "Undismiss suggested contacts operation scheduled without gaiaid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3405
    :sswitch_11
    const-string v2, "current_version"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 3406
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3407
    const-string v6, "remove"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 3409
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 3410
    new-instance v7, Ledj;

    invoke-direct {v7, v3, v2, v5, v6}, Ledj;-><init>(Lbfd;[BLjava/lang/String;Z)V

    .line 3413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v7}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3415
    :cond_13
    const-string v2, "Babel_RTCS"

    const-string v3, "Favorite contacts operation scheduled without gaiaid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3421
    :sswitch_12
    new-instance v2, Ldxa;

    invoke-direct {v2, v3}, Ldxa;-><init>(Lbfd;)V

    .line 3422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3427
    :sswitch_13
    const-string v2, "pdu"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 3428
    const-string v4, "is_sms_read"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3429
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/telephony/SmsMessage;

    const/4 v6, 0x0

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v2

    aput-object v2, v5, v6

    .line 3430
    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v3, v2, v6}, Lbft;->a([Landroid/telephony/SmsMessage;Lbfd;ILjava/lang/Boolean;)V

    .line 3432
    if-nez v4, :cond_2

    .line 3433
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcyh;

    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyh;

    const/4 v3, 0x1

    .line 3434
    move/from16 v0, v26

    invoke-interface {v2, v0, v3}, Lcyh;->a(IZ)V

    goto/16 :goto_0

    .line 3440
    :sswitch_14
    const-string v2, "extra_rich_presence_type"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3441
    if-ltz v2, :cond_14

    const-string v5, "extra_rich_presence_type_enabled"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 3442
    :cond_14
    sget-boolean v3, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v3, :cond_2

    .line 3443
    const-string v3, "SetRichPresenceEnabledState failed."

    if-gez v2, :cond_15

    .line 3444
    const-string v2, " Invalid rich presence type."

    .line 3445
    :goto_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string v2, " Unknown if enabled."

    goto :goto_4

    :cond_16
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3450
    :cond_17
    const-string v5, "extra_rich_presence_type_enabled"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3451
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 3452
    new-instance v7, Leyu;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v7, v2, v5}, Leyu;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3453
    new-instance v2, Lecs;

    invoke-direct {v2, v3, v6}, Lecs;-><init>(Lbfd;Ljava/util/List;)V

    .line 3456
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3461
    :sswitch_15
    const-string v2, "participant_entity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcyx;

    .line 3462
    new-instance v3, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3463
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lbfz;->a(Lcyx;Z)Z

    goto/16 :goto_0

    .line 3468
    :sswitch_16
    new-instance v2, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v2, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3469
    const-string v3, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3473
    invoke-virtual {v2}, Lbfz;->e()Lbha;

    move-result-object v4

    const-string v5, "SELECT count(*) from messages WHERE conversation_id=? LIMIT 1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 3474
    invoke-virtual {v4, v5, v6}, Lbha;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 3482
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 3483
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3484
    if-nez v5, :cond_18

    .line 3485
    invoke-virtual {v2, v3}, Lbfz;->z(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3489
    :cond_18
    if-eqz v4, :cond_2

    .line 3490
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3489
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_19

    .line 3490
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_19
    throw v2

    .line 3497
    :sswitch_17
    const-string v2, "recent_call_action_info"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Ldvv;

    .line 3498
    const-string v4, "recent_call_type"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3499
    invoke-static {v3, v4, v2}, Laal;->a(Lbfd;ILdvv;)V

    goto/16 :goto_0

    .line 3504
    :sswitch_18
    const-string v2, "recent_call_timestamp"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3505
    const-string v2, "recent_call_rate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3506
    const-string v6, "recent_call_is_free_call"

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 3507
    invoke-static {v3, v4, v5, v2, v6}, Laal;->a(Lbfd;JLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 3512
    :sswitch_19
    invoke-static {v3}, Laal;->a(Lbfd;)V

    goto/16 :goto_0

    .line 3517
    :sswitch_1a
    const-string v2, "recent_call_row_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3518
    invoke-static {v3, v2}, Laal;->a(Lbfd;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3523
    :sswitch_1b
    new-instance v2, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v2, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3524
    const-string v3, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3525
    invoke-virtual {v2, v3}, Lbfz;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3530
    :sswitch_1c
    sget-boolean v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v2, :cond_1a

    .line 3531
    const-string v2, "pollParasiteOperations for account "

    .line 3532
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3534
    :cond_1a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Context;Lbfd;)V

    goto/16 :goto_0

    .line 3532
    :cond_1b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 3539
    :sswitch_1d
    sget-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v3, Lead;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lead;-><init>(Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3550
    :sswitch_1e
    const-string v2, "phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3551
    new-instance v5, Ldxe;

    invoke-direct {v5, v3, v2}, Ldxe;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3553
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3564
    :pswitch_2
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;)Ldqf;

    move-result-object v2

    .line 3565
    if-nez v2, :cond_1c

    .line 3566
    const-string v2, "Babel_RTCS"

    const-string v3, "Received null server response"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3569
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f(Landroid/content/Intent;)V

    .line 3570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ldqf;->c(J)V

    .line 3572
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v4, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Context;Lbfd;Ldvm;Ldqf;)Ljava/util/List;

    move-result-object v2

    .line 3573
    new-instance v3, Leau;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v0, v24

    invoke-direct {v3, v0, v4, v5}, Leau;-><init>(IILdqf;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Intent;Leau;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3579
    :pswitch_3
    const-string v2, "simulated_event_msg_num"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3581
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3582
    sget-object v6, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->r:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3583
    :try_start_3
    const-string v7, "\\|"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v8, :cond_1d

    aget-object v9, v7, v2

    .line 3584
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3585
    sget-object v10, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->r:Landroid/util/SparseArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3586
    sget-object v10, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->r:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 3583
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3588
    :cond_1d
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3590
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Legs;

    .line 3591
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 3592
    invoke-static {}, Lknq;->c()Lknq;

    move-result-object v12

    move-object/from16 v2, p0

    .line 3591
    invoke-direct/range {v2 .. v12}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ldvm;Legs;JJJLknq;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    .line 3588
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    .line 3598
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v10, v6, v8

    .line 3600
    const/4 v2, 0x1

    .line 3601
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1, v2}, Legt;->a(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v2

    .line 3603
    if-eqz v2, :cond_1f

    .line 3604
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Legs;

    .line 3605
    instance-of v2, v5, Lefr;

    if-eqz v2, :cond_1e

    .line 3606
    move-object v0, v5

    check-cast v0, Lefr;

    move-object v2, v0

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lefr;->a(I)V

    .line 3609
    :cond_1e
    const-string v2, "timestamp"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3610
    const-string v2, "gcm_handle_timestamps"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v2, p0

    move-object/from16 v12, p2

    .line 3611
    invoke-direct/range {v2 .. v12}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ldvm;Legs;JJJLknq;)V

    goto :goto_8

    .line 3615
    :cond_1f
    const-string v2, "Babel_RTCS"

    const-string v3, "could not parse ServerUpdate"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3621
    :pswitch_5
    const-string v2, "phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3622
    new-instance v5, Ldkd;

    invoke-direct {v5, v3, v2}, Ldkd;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3624
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3629
    :pswitch_6
    const-string v2, "broadcast"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 3630
    new-instance v5, Lduw;

    invoke-direct {v5, v3, v2}, Lduw;-><init>(Lbfd;[B)V

    .line 3631
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3636
    :pswitch_7
    const-string v2, "hangout_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3637
    const-string v5, "broadcast_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3638
    new-instance v6, Ldww;

    invoke-direct {v6, v3, v5, v2}, Ldww;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;)V

    .line 3640
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3645
    :pswitch_8
    const-string v2, "broadcast"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 3646
    const-string v5, "sync_metadata"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 3647
    new-instance v6, Ldyg;

    invoke-direct {v6, v3, v2, v5}, Ldyg;-><init>(Lbfd;[B[B)V

    .line 3649
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3654
    :pswitch_9
    const-string v2, "broadcast_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3655
    const-string v5, "hangout_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3656
    new-instance v6, Lebc;

    invoke-direct {v6, v3, v2, v5}, Lebc;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3663
    :pswitch_a
    const-string v2, "phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3664
    const-string v5, "verification_code"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3665
    const-string v6, "is_discoverable"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 3667
    new-instance v7, Ldjv;

    invoke-direct {v7, v3, v2, v5, v6}, Ldjv;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3669
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v7}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3693
    :pswitch_b
    new-instance v2, Leav;

    const-string v5, "conversation_id"

    .line 3694
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Leav;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3695
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3700
    :pswitch_c
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3701
    const-string v2, "message_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3702
    const-string v2, "message_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3703
    const-string v2, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3704
    const-string v2, "picasa_photo_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3705
    const-string v2, "rotation"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 3706
    const-string v2, "width"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 3707
    const-string v2, "height"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 3708
    const-string v2, "content_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3709
    const-string v2, "subject"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3710
    const-string v2, "requires_mms"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 3712
    const-string v2, "place"

    .line 3713
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcrx;

    .line 3714
    if-nez v2, :cond_20

    const/16 v19, 0x0

    .line 3716
    :goto_9
    const-string v2, "timestamp"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 3717
    const-string v2, "otr_state"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 3721
    new-instance v2, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v2, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3722
    invoke-static/range {v26 .. v26}, Ldvp;->a(I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 3724
    invoke-virtual {v2, v8}, Lbfz;->g(Ljava/lang/String;)I

    move-result v2

    .line 3723
    invoke-static {v2}, Laal;->f(I)Z

    move-result v2

    if-nez v2, :cond_21

    .line 3725
    new-instance v5, Leby;

    .line 3726
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l:Leer;

    move-object/from16 v25, v0

    move-object v7, v3

    move-object/from16 v23, v4

    invoke-direct/range {v5 .. v25}, Leby;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;JILdvm;ILeer;)V

    .line 3736
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    .line 3737
    sget-boolean v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v2, :cond_2

    .line 3738
    const-string v2, "rtcs_timestamp_begin_ms"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3739
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3740
    sub-long v2, v4, v2

    .line 3741
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "****** IntentService Delay (SendMessage): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3714
    :cond_20
    invoke-virtual {v2}, Lcrx;->a()Lgeo;

    move-result-object v19

    goto :goto_9

    .line 3731
    :cond_21
    new-instance v5, Lebx;

    .line 3732
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v3

    invoke-direct/range {v5 .. v22}, Lebx;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;JI)V

    goto :goto_a

    .line 3749
    :pswitch_d
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3750
    const-string v2, "stress_current_message_id"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3751
    const-string v2, "stress_max_message_id"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 3753
    sget-boolean v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v2, :cond_22

    .line 3754
    const-string v2, "Sending stress message from RealTimeChatService:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xb

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3758
    :cond_22
    invoke-static/range {v16 .. v16}, Laal;->m(I)Ljava/lang/String;

    move-result-object v5

    .line 3760
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v6, Lefk;

    .line 3759
    invoke-static {v2, v6}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lefk;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 3761
    invoke-interface/range {v2 .. v15}, Lefk;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;I)Ljava/lang/String;

    .line 3764
    add-int/lit8 v2, v16, 0x1

    .line 3765
    move/from16 v0, v17

    invoke-static {v3, v4, v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 3770
    :pswitch_e
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3771
    const-string v5, "message_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3772
    const-string v6, "error"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3773
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x18

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "OP_SET_MESSAGE_FAILED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3774
    new-instance v7, Lecr;

    invoke-direct {v7, v3, v2, v5, v6}, Lecr;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3776
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v7}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3781
    :pswitch_f
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3782
    const-string v2, "insert_error_message"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 3784
    new-instance v2, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v2, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3785
    sget-object v5, Lemc;->a:Lemc;

    sget-object v6, Lemc;->d:Lemc;

    invoke-virtual {v2, v4, v5, v6}, Lbfz;->a(Ljava/lang/String;Lemc;Lemc;)V

    .line 3791
    invoke-virtual {v2, v4}, Lbfz;->T(Ljava/lang/String;)J

    move-result-wide v6

    .line 3792
    invoke-static {v2, v4, v6, v7}, Lbft;->a(Lbfz;Ljava/lang/String;J)V

    .line 3794
    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Lbfz;->e(Ljava/lang/String;I)V

    .line 3797
    if-eqz v3, :cond_2

    .line 3799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 3800
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3803
    const-wide/16 v8, -0x1

    move-object v5, v4

    invoke-static/range {v2 .. v9}, Lbft;->a(Lbfz;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 3810
    :pswitch_10
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3811
    const-string v2, "message_row_id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 3812
    const-string v2, "timestamp"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 3813
    new-instance v6, Lebx;

    .line 3814
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v3

    invoke-direct/range {v6 .. v13}, Lebx;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;JJ)V

    .line 3815
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3820
    :pswitch_11
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3821
    invoke-static {v3, v6}, Laal;->b(Lbfd;Ljava/lang/String;)Lihb;

    move-result-object v7

    .line 3824
    const/4 v5, 0x1

    .line 3825
    invoke-virtual {v3}, Lbfd;->b()Lczb;

    move-result-object v2

    iget-object v8, v2, Lczb;->a:Ljava/lang/String;

    .line 3826
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3827
    invoke-virtual {v7}, Lihb;->h()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_b
    if-ltz v2, :cond_24

    .line 3828
    invoke-virtual {v7, v2}, Lihb;->a(I)Laxt;

    move-result-object v10

    invoke-virtual {v10}, Laxt;->h()Lcyx;

    move-result-object v10

    .line 3830
    invoke-virtual {v10}, Lcyx;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_23

    .line 3831
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3827
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 3834
    :cond_24
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_25

    .line 3835
    const/4 v5, 0x2

    .line 3838
    :cond_25
    invoke-virtual {v7}, Lihb;->j()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_26

    .line 3839
    invoke-virtual {v7, v2}, Lihb;->b(I)Laxn;

    move-result-object v5

    invoke-virtual {v5}, Laxn;->b()Ljava/lang/String;

    move-result-object v5

    .line 3840
    invoke-virtual {v7, v2}, Lihb;->b(I)Laxn;

    move-result-object v8

    invoke-virtual {v8}, Laxn;->d()Ljava/lang/String;

    move-result-object v8

    .line 3839
    invoke-static {v5, v8}, Laal;->a(Ljava/lang/String;Ljava/lang/String;)Lcyx;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3841
    const/4 v5, 0x2

    .line 3838
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 3844
    :cond_26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3846
    new-instance v7, Ldoz;

    new-instance v8, Ldos;

    const/4 v10, 0x0

    invoke-direct {v8, v6, v5, v10, v9}, Ldos;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    invoke-direct {v7, v8}, Ldoz;-><init>(Ldos;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3849
    new-instance v5, Leae;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v2}, Leae;-><init>(Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;Lbfd;Ljava/util/List;)V

    .line 3856
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3861
    :pswitch_12
    const-string v2, "message_row_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 3862
    new-instance v5, Ldwm;

    invoke-direct {v5, v3, v2}, Ldwm;-><init>(Lbfd;[J)V

    .line 3863
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3868
    :pswitch_13
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3869
    const-string v5, "type"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3870
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3871
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v6

    aget-object v5, v6, v5

    .line 3872
    new-instance v6, Ldwn;

    invoke-direct {v6, v3, v2, v5}, Ldwn;-><init>(Lbfd;Ljava/lang/String;Lemd;)V

    .line 3874
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3879
    :pswitch_14
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3880
    const-string v3, "message_row_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3881
    new-instance v3, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3884
    invoke-static {v3, v4, v5}, Lbft;->a(Lbfz;J)V

    .line 3885
    invoke-static {v3, v2}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3891
    :pswitch_15
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3892
    const-string v2, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lihb;

    .line 3893
    new-instance v6, Ldxw;

    invoke-direct {v6, v3, v5, v2}, Ldxw;-><init>(Lbfd;Ljava/lang/String;Lihb;)V

    .line 3895
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3900
    :pswitch_16
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3901
    new-instance v5, Ldxx;

    invoke-direct {v5, v3, v2}, Ldxx;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3902
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3907
    :pswitch_17
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3908
    const-string v5, "watermark"

    const-wide/16 v6, 0x0

    .line 3909
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3910
    new-instance v5, Ledi;

    invoke-direct {v5, v3, v2, v6, v7}, Ledi;-><init>(Lbfd;Ljava/lang/String;J)V

    .line 3912
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3917
    :pswitch_18
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3918
    const-string v3, "call_media_type"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3920
    new-instance v4, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v4, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3922
    invoke-virtual {v4, v2}, Lbfz;->M(Ljava/lang/String;)J

    move-result-wide v6

    .line 3921
    invoke-virtual {v4, v3, v6, v7, v2}, Lbfz;->a(IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 3927
    :pswitch_19
    const-string v2, "scroll_timestamp"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3928
    const-string v4, "scroll_to_item_timestamp"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3931
    new-instance v6, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v6, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3932
    invoke-virtual {v6, v2, v3, v4, v5}, Lbfz;->a(JJ)V

    goto/16 :goto_0

    .line 3937
    :pswitch_1a
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3938
    const-string v2, "scroll_timestamp"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3939
    const-string v2, "scroll_to_item_timestamp"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3940
    new-instance v2, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v2, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3941
    invoke-virtual/range {v2 .. v7}, Lbfz;->b(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 3946
    :pswitch_1b
    const-string v2, "hangout_invite_receipt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 3947
    new-instance v5, Lduv;

    invoke-direct {v5, v3, v2}, Lduv;-><init>(Lbfd;[B)V

    .line 3949
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3954
    :pswitch_1c
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 3955
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3956
    const-string v5, "message_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3957
    new-instance v6, Lebd;

    invoke-direct {v6, v3, v2, v5}, Lebd;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3964
    :pswitch_1d
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3965
    const-string v5, "conversation_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3966
    new-instance v6, Ledg;

    invoke-direct {v6, v3, v2}, Ledg;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3968
    invoke-virtual {v6, v5}, Ledg;->a(Ljava/lang/String;)V

    .line 3969
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3974
    :pswitch_1e
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3975
    const-string v5, "notification_level"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3976
    new-instance v6, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v6, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3977
    invoke-virtual {v6, v2}, Lbfz;->ac(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3978
    new-instance v7, Ledg;

    invoke-direct {v7, v3, v2}, Ledg;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3980
    invoke-virtual {v7, v5}, Ledg;->a(I)V

    .line 3981
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v7}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto :goto_d

    .line 3987
    :pswitch_1f
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3988
    const-string v5, "ringtone_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3989
    new-instance v6, Ledg;

    invoke-direct {v6, v3, v2}, Ledg;-><init>(Lbfd;Ljava/lang/String;)V

    .line 3991
    invoke-virtual {v6, v5}, Ledg;->b(Ljava/lang/String;)V

    .line 3992
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3997
    :pswitch_20
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3998
    const-string v5, "ringtone_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3999
    new-instance v6, Ledg;

    invoke-direct {v6, v3, v2}, Ledg;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4001
    invoke-virtual {v6, v5}, Ledg;->c(Ljava/lang/String;)V

    .line 4002
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4007
    :pswitch_21
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4008
    const-string v2, "accept"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 4009
    const-string v2, "report_inviter"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 4010
    const-string v2, "block_inviter"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 4011
    new-instance v5, Lebe;

    move-object v6, v3

    invoke-direct/range {v5 .. v10}, Lebe;-><init>(Lbfd;Ljava/lang/String;ZZZ)V

    .line 4013
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4018
    :pswitch_22
    const-string v2, "affinity"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4020
    new-instance v5, Ldwj;

    invoke-direct {v5, v3, v2}, Ldwj;-><init>(Lbfd;I)V

    .line 4022
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4027
    :pswitch_23
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4028
    new-instance v5, Lebk;

    invoke-direct {v5, v3, v2}, Lebk;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4030
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4035
    :pswitch_24
    const-string v2, "conversation_sync_filter"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4037
    new-instance v5, Lebj;

    invoke-direct {v5, v3, v2}, Lebj;-><init>(Lbfd;I)V

    .line 4039
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4044
    :pswitch_25
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4045
    new-instance v5, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v5, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4046
    invoke-virtual {v5, v2}, Lbfz;->s(Ljava/lang/String;)I

    move-result v6

    .line 4049
    const/4 v7, 0x2

    if-eq v6, v7, :cond_27

    .line 4050
    const-wide/16 v6, 0x0

    .line 4051
    :goto_e
    new-instance v5, Lebg;

    invoke-direct {v5, v3, v2, v6, v7}, Lebg;-><init>(Lbfd;Ljava/lang/String;J)V

    .line 4053
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4050
    :cond_27
    invoke-virtual {v5, v2}, Lbfz;->O(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_e

    .line 4058
    :pswitch_26
    const-string v2, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4059
    const-string v2, "content_values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 4060
    new-instance v4, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v4, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4061
    invoke-virtual {v4, v3, v2}, Lbfz;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 4066
    :pswitch_27
    const-string v2, "otr_status"

    const/4 v5, 0x1

    .line 4067
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4068
    const-string v5, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4069
    new-instance v6, Ldyh;

    invoke-direct {v6, v3, v5, v2}, Ldyh;-><init>(Lbfd;Ljava/lang/String;I)V

    .line 4071
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4076
    :pswitch_28
    const-string v2, "member_gaiaid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4077
    const-string v2, "phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4078
    const-string v2, "user_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4079
    const-string v2, "blocked"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 4080
    const-string v2, "retry_request"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 4081
    new-instance v5, Ldvt;

    move-object v6, v3

    invoke-direct/range {v5 .. v11}, Ldvt;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 4083
    const-string v2, "rid"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v2}, Ldvt;->a(I)V

    .line 4084
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4089
    :pswitch_29
    new-instance v2, Ldxy;

    invoke-direct {v2, v3}, Ldxy;-><init>(Lbfd;)V

    .line 4090
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4095
    :pswitch_2a
    invoke-static {v3}, Leck;->a(Lbfd;)Leck;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldym;Lbfd;)V

    goto/16 :goto_0

    .line 4101
    :pswitch_2b
    invoke-static {v3}, Ledb;->a(Lbfd;)Ledb;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldym;Lbfd;)V

    goto/16 :goto_0

    .line 4106
    :pswitch_2c
    const-string v2, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4107
    const-string v5, "requester_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4108
    new-instance v6, Lebu;

    invoke-direct {v6, v3, v2, v5}, Lebu;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4114
    :pswitch_2d
    const-string v2, "com.google.android.apps.hangouts.EntityLookupSpecs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4116
    const-string v5, "batch_gebi_tag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4117
    const-string v6, "from_contact_lookup"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 4118
    new-instance v7, Ldwz;

    invoke-direct {v7, v3, v2, v5, v6}, Ldwz;-><init>(Lbfd;Ljava/util/List;Ljava/lang/String;Z)V

    .line 4120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v7}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4124
    :pswitch_2e
    invoke-static/range {v26 .. v26}, Leay;->b(I)Leay;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldym;Lbfd;)V

    goto/16 :goto_0

    .line 4129
    :pswitch_2f
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4130
    new-instance v3, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4131
    invoke-virtual {v3}, Lbfz;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 4133
    :try_start_7
    invoke-static {v3, v2}, Lbfz;->b(Lbfz;Ljava/lang/String;)I

    .line 4134
    invoke-virtual {v3}, Lbfz;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4136
    :try_start_8
    invoke-virtual {v3}, Lbfz;->c()V

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v3}, Lbfz;->c()V

    throw v2

    .line 4141
    :pswitch_30
    const-string v2, "conversationids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4142
    new-instance v3, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4143
    invoke-virtual {v3, v2}, Lbfz;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4147
    :pswitch_31
    invoke-static/range {v26 .. v26}, Ledq;->b(I)Ledq;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldym;Lbfd;)V

    goto/16 :goto_0

    .line 4155
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lecz;->a(Landroid/content/Context;Lbfd;)Lecz;

    move-result-object v2

    .line 4152
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldym;Lbfd;)V

    goto/16 :goto_0

    .line 4162
    :pswitch_33
    invoke-static/range {v26 .. v26}, Lecx;->b(I)Lecx;

    move-result-object v2

    .line 4164
    const-string v5, "force_execution"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 4165
    invoke-virtual {v2}, Lecx;->g()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 4166
    sget-boolean v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v2, :cond_2

    .line 4167
    const-string v2, "SyncBaselineSuggestedContactsOperation already executing, skip: "

    .line 4168
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_28
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4173
    :cond_29
    if-nez v5, :cond_2a

    invoke-virtual {v2}, Lecx;->f()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 4174
    :cond_2a
    sget-boolean v5, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v5, :cond_2b

    .line 4175
    const-string v5, "SyncBaselineSuggestedContactsOperation is executed directly: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4176
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4178
    :cond_2b
    :goto_f
    sget-object v3, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->u:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 4179
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lecx;->a(I)V

    .line 4180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4176
    :cond_2c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_f

    .line 4181
    :cond_2d
    invoke-virtual {v2}, Lecx;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4182
    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v4, :cond_2e

    .line 4183
    const-string v4, "SyncBaselineSuggestedContactsOperation is queued: "

    .line 4184
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4186
    :cond_2e
    :goto_10
    sget-object v3, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->u:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4187
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lecx;->a(I)V

    goto/16 :goto_0

    .line 4184
    :cond_2f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_10

    .line 4192
    :pswitch_34
    const-string v2, "member_gaiaid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4193
    new-instance v5, Ldxg;

    invoke-direct {v5, v3, v2}, Ldxg;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4198
    :pswitch_35
    const-string v2, "hangout_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4199
    new-instance v5, Ldxd;

    invoke-direct {v5, v3, v2}, Ldxd;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4204
    :pswitch_36
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4205
    new-instance v5, Ldxc;

    invoke-direct {v5, v3, v2}, Ldxc;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4210
    :pswitch_37
    const-string v2, "hangout_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4211
    sget-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->v:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 4212
    if-eqz v2, :cond_31

    .line 4213
    const-string v6, "Babel_RTCS"

    const-string v7, "Pulled logdata for session "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_30

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_11
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4214
    const/16 v5, 0x94c

    invoke-static {v5}, Laal;->c(I)V

    .line 4216
    new-instance v6, Lebf;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lkju;

    invoke-direct {v6, v3, v5, v2}, Lebf;-><init>(Lbfd;Ljava/lang/String;Lkju;)V

    .line 4218
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    .line 4219
    const/16 v2, 0x7de

    invoke-static {v2}, Laal;->c(I)V

    goto/16 :goto_0

    .line 4213
    :cond_30
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_11

    .line 4221
    :cond_31
    const-string v3, "Babel_RTCS"

    const-string v4, "No logdata for session "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_12
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4222
    const/16 v2, 0x8bf

    invoke-static {v2}, Laal;->c(I)V

    goto/16 :goto_0

    .line 4221
    :cond_32
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_12

    .line 4227
    :pswitch_38
    const-string v2, "compressed_log_file"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4228
    new-instance v5, Leds;

    invoke-direct {v5, v3, v2}, Leds;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4234
    :pswitch_39
    new-instance v2, Ldwy;

    invoke-direct {v2, v3}, Ldwy;-><init>(Lbfd;)V

    .line 4235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4239
    :pswitch_3a
    const-string v2, "chat_acl_key"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4240
    const-string v5, "chat_acl_circle_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4241
    const-string v5, "chat_acl_circle_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4242
    const-string v5, "chat_acl_level"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4244
    invoke-static {}, Ldnq;->values()[Ldnq;

    move-result-object v5

    aget-object v7, v5, v2

    .line 4245
    new-instance v5, Lecn;

    move-object v6, v3

    invoke-direct/range {v5 .. v10}, Lecn;-><init>(Lbfd;Ldnq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4251
    :pswitch_3b
    new-instance v2, Leco;

    invoke-direct {v2, v3}, Leco;-><init>(Lbfd;)V

    .line 4252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4256
    :pswitch_3c
    const-string v2, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4257
    new-instance v5, Ldxk;

    invoke-direct {v5, v3, v2}, Ldxk;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4258
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4262
    :pswitch_3d
    const-string v2, "picasa_photo_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4263
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4264
    new-instance v6, Ldxl;

    invoke-direct {v6, v3, v5, v2}, Ldxl;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;)V

    .line 4265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4269
    :pswitch_3e
    const-string v2, "picasa_photo_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4270
    new-instance v5, Ldwv;

    invoke-direct {v5, v3, v2}, Ldwv;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4275
    :pswitch_3f
    const-string v2, "email_address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4276
    new-instance v5, Lecc;

    invoke-direct {v5, v3, v2}, Lecc;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4281
    :pswitch_40
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4282
    const-string v4, "conversation_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4283
    invoke-static {v3, v2, v4}, Lbft;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4287
    :pswitch_41
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4288
    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Lbft;->a(Lbfd;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 4293
    :pswitch_42
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lbft;->a(Lbfd;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4298
    :pswitch_43
    const-string v2, "mms_wap_push_data"

    .line 4299
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 4298
    move/from16 v0, v26

    invoke-static {v0, v2}, Lenn;->a(I[B)V

    goto/16 :goto_0

    .line 4303
    :pswitch_44
    const-string v2, "mms_content_location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4304
    const-string v2, "mms_transaction_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 4307
    const-string v2, "notification_row_id"

    const-wide/16 v6, -0x1

    .line 4308
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 4309
    const-string v2, "mms_auto_retrieve"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 4310
    new-instance v6, Lebs;

    move-object v7, v3

    invoke-direct/range {v6 .. v12}, Lebs;-><init>(Lbfd;Ljava/lang/String;[BJZ)V

    .line 4312
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4316
    :pswitch_45
    const-string v2, "mms_auto_retrieve"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 4317
    move-object/from16 v0, p1

    invoke-static {v3, v0, v2}, Lbft;->a(Lbfd;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 4321
    :pswitch_46
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lbft;->b(Lbfd;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4325
    :pswitch_47
    invoke-static {}, Laal;->l()V

    goto/16 :goto_0

    .line 4329
    :pswitch_48
    invoke-static {}, Laal;->m()V

    goto/16 :goto_0

    .line 4333
    :pswitch_49
    const-string v2, "free_sms_storage_action_index"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4334
    const-string v3, "free_sms_storage_duration"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4335
    invoke-static {v2, v4, v5}, Lenu;->a(IJ)V

    goto/16 :goto_0

    .line 4339
    :pswitch_4a
    const-string v2, "notification_row_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4341
    const-string v2, "mms_auto_retrieve"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 4342
    const-string v6, "error"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 4343
    invoke-static {v3, v4, v5, v2, v6}, Lbft;->a(Lbfd;JZI)V

    goto/16 :goto_0

    .line 4348
    :pswitch_4b
    const-string v2, "hangout_type"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4349
    const-string v5, "hangout_topic"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4350
    const-string v6, "hangout_media_type"

    const/4 v7, 0x1

    .line 4351
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 4352
    new-instance v7, Ldwe;

    invoke-direct {v7, v3, v2, v5, v6}, Ldwe;-><init>(Lbfd;ILjava/lang/String;I)V

    .line 4354
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v7}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4358
    :pswitch_4c
    const-string v2, "mms_dump_file"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4359
    invoke-static {v3, v2}, Lbft;->b(Lbfd;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4363
    :pswitch_4d
    const-string v2, "message_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4364
    const-string v5, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4365
    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 4366
    new-instance v6, Ldwp;

    invoke-direct {v6, v3, v5, v2}, Ldwp;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4373
    :pswitch_4e
    new-instance v2, Ldxm;

    invoke-direct {v2, v3}, Ldxm;-><init>(Lbfd;)V

    .line 4374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4378
    :pswitch_4f
    new-instance v2, Ldwq;

    invoke-direct {v2, v3}, Ldwq;-><init>(Lbfd;)V

    .line 4379
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4383
    :pswitch_50
    const-string v2, "phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4384
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Lhbs;->a(Z)V

    .line 4385
    new-instance v5, Ldwx;

    invoke-direct {v5, v3, v2}, Ldwx;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4386
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4390
    :pswitch_51
    new-instance v2, Ldxf;

    invoke-direct {v2, v3}, Ldxf;-><init>(Lbfd;)V

    .line 4391
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4395
    :pswitch_52
    const-string v2, "phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4396
    const-string v5, "from_phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4397
    new-instance v6, Ldwr;

    invoke-direct {v6, v3, v2, v5}, Ldwr;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;)V

    .line 4399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4403
    :pswitch_53
    const-string v2, "extra_duration"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-wide v2

    .line 4405
    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 4409
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 4412
    :pswitch_54
    :try_start_a
    const-string v2, "image_urls"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4413
    new-instance v5, Ldxb;

    invoke-direct {v5, v3, v2}, Ldxb;-><init>(Lbfd;[Ljava/lang/String;)V

    .line 4414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4418
    :pswitch_55
    const-string v2, "phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4419
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "callerid_set_unset"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 4420
    new-instance v6, Lecm;

    invoke-direct {v6, v3, v5, v2}, Lecm;-><init>(Lbfd;ZLjava/lang/String;)V

    .line 4422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ldvm;Landroid/content/Intent;Ldyx;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 3122
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_2
        0xe -> :sswitch_0
        0x13 -> :sswitch_3
        0x37 -> :sswitch_5
        0x42 -> :sswitch_7
        0x48 -> :sswitch_8
        0x4c -> :sswitch_6
        0x5b -> :sswitch_9
        0x68 -> :sswitch_1
        0x6f -> :sswitch_c
        0x72 -> :sswitch_d
        0x78 -> :sswitch_f
        0x79 -> :sswitch_14
        0x7c -> :sswitch_15
        0x88 -> :sswitch_16
        0x8b -> :sswitch_4
        0x8f -> :sswitch_b
        0x90 -> :sswitch_a
        0x99 -> :sswitch_17
        0xa0 -> :sswitch_1b
        0xa2 -> :sswitch_1c
        0xa3 -> :sswitch_1d
        0xaf -> :sswitch_10
        0xb0 -> :sswitch_13
        0xbb -> :sswitch_1a
        0xbc -> :sswitch_19
        0xbe -> :sswitch_18
        0xc0 -> :sswitch_e
        0xc2 -> :sswitch_1e
        0xc7 -> :sswitch_11
        0xc8 -> :sswitch_12
    .end sparse-switch

    .line 3562
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_c
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_2
        :pswitch_0
        :pswitch_21
        :pswitch_23
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_24
        :pswitch_0
        :pswitch_33
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2a
        :pswitch_0
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_34
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_35
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_36
        :pswitch_12
        :pswitch_19
        :pswitch_1a
        :pswitch_11
        :pswitch_f
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_3a
        :pswitch_0
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_0
        :pswitch_2e
        :pswitch_3f
        :pswitch_0
        :pswitch_40
        :pswitch_0
        :pswitch_41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_42
        :pswitch_0
        :pswitch_0
        :pswitch_45
        :pswitch_14
        :pswitch_0
        :pswitch_43
        :pswitch_44
        :pswitch_b
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
        :pswitch_46
        :pswitch_0
        :pswitch_0
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_31
        :pswitch_3d
        :pswitch_0
        :pswitch_32
        :pswitch_0
        :pswitch_0
        :pswitch_4a
        :pswitch_0
        :pswitch_4b
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_0
        :pswitch_4f
        :pswitch_50
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_51
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_0
        :pswitch_53
        :pswitch_0
        :pswitch_30
        :pswitch_54
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_3e
        :pswitch_18
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_3c
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_52
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_55
        :pswitch_0
        :pswitch_22
        :pswitch_3b
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 6074
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    .line 6075
    if-nez v0, :cond_0

    .line 6082
    :goto_0
    return-void

    .line 6079
    :cond_0
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x92

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 6080
    const-string v1, "mms_dump_file"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50722
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50720
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method public static d(Lbfd;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 1527
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 1528
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d:Ljava/lang/String;

    .line 1530
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "isFocusedConversation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ?==? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    :cond_0
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 1533
    :try_start_0
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e:Ljava/util/Set;

    .line 1534
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1535
    const/4 v0, 0x1

    monitor-exit v1

    .line 1537
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e(I)I
    .locals 2

    .prologue
    .line 2939
    const/16 v0, 0x94

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50361
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50359
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2939
    return v0
.end method

.method public static e(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1718
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x8f

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50116
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50114
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1718
    return v0
.end method

.method public static e(Lbfd;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2602
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xb2

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ringtone_uri"

    .line 2603
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50282
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50280
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2604
    return v0
.end method

.method public static e()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1868
    const/4 v0, 0x1

    invoke-static {v0}, Ldvd;->d(Z)[I

    move-result-object v2

    .line 1869
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 1870
    invoke-static {v4}, Ldvd;->e(I)Lbfd;

    move-result-object v5

    .line 1872
    if-eqz v5, :cond_0

    .line 1873
    sget-object v5, Lebq;->a:Lebq;

    invoke-static {v4, v1, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;)V

    .line 1869
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1879
    :cond_1
    return-void
.end method

.method public static e(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 5994
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    .line 5995
    if-nez v0, :cond_0

    .line 6002
    :goto_0
    return-void

    .line 50707
    :cond_0
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 5998
    const-class v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5999
    const-string v1, "op"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6000
    const-string v1, "account_id"

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50710
    sget-object v0, Lkmm;->a:Lkmm;

    .line 50708
    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method public static e(Lbfd;)V
    .locals 2

    .prologue
    .line 3034
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50426
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 3035
    invoke-static {v0, p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Context;Lbfd;)V

    .line 3040
    :goto_0
    return-void

    .line 3037
    :cond_0
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xa2

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50430
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50427
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;Lknq;)V

    goto :goto_0
.end method

.method public static f(I)I
    .locals 2

    .prologue
    .line 2946
    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50364
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50362
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2946
    return v0
.end method

.method public static f(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1770
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x75

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50125
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50123
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1769
    return v0
.end method

.method public static f(Lbfd;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2812
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2813
    const-string v1, "picasa_photo_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2814
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50328
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50326
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2815
    return v0
.end method

.method public static f()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1887
    invoke-static {v0}, Ldvd;->d(Z)[I

    move-result-object v1

    .line 1888
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    .line 50157
    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v4, :cond_0

    .line 50158
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x31

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "requestPatchAfterRequestWriterUpgrade "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50160
    :cond_0
    const/16 v4, 0x72

    invoke-static {v3, v4}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v3

    .line 50163
    sget-object v4, Lkmm;->a:Lkmm;

    .line 50161
    invoke-static {v3, v4}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 1888
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1891
    :cond_1
    return-void
.end method

.method private f(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1480
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1481
    const-string v0, "server_response_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    const-string v0, "account_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1484
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lhpz;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1485
    invoke-interface {v0, v2}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v2, "preserve_response_data"

    .line 1486
    invoke-interface {v0, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    .line 1487
    if-nez v0, :cond_0

    .line 1489
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "server_response_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 44032
    invoke-static {v0}, Leez;->a(Landroid/content/Context;)Leez;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Leez;->d(J)V

    .line 1492
    :cond_0
    return-void
.end method

.method public static f(Lbfd;)V
    .locals 2

    .prologue
    .line 4771
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Leaf;

    invoke-direct {v1, p0}, Leaf;-><init>(Lbfd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4779
    return-void
.end method

.method public static g(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1782
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x21

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50128
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50126
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 1782
    return v0
.end method

.method public static g(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5648
    packed-switch p0, :pswitch_data_0

    .line 5886
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "(unknown opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5650
    :pswitch_1
    const-string v0, "OP_REGISTER_ACCOUNT"

    goto :goto_0

    .line 5652
    :pswitch_2
    const-string v0, "OP_UNREGISTER_ACCOUNT"

    goto :goto_0

    .line 5654
    :pswitch_3
    const-string v0, "OP_ACCOUNT_REMOVED"

    goto :goto_0

    .line 5656
    :pswitch_4
    const-string v0, "OP_SET_SELF_INFO_BIT"

    goto :goto_0

    .line 5658
    :pswitch_5
    const-string v0, "OP_START_CONVERSATION"

    goto :goto_0

    .line 5660
    :pswitch_6
    const-string v0, "OP_SEND_MESSAGE"

    goto :goto_0

    .line 5662
    :pswitch_7
    const-string v0, "OP_INVITE_PARTICIPANTS"

    goto :goto_0

    .line 5664
    :pswitch_8
    const-string v0, "OP_LEAVE_CONVERSATION"

    goto :goto_0

    .line 5666
    :pswitch_9
    const-string v0, "OP_UPDATE_CONVERSATION_WATERMARK"

    goto :goto_0

    .line 5668
    :pswitch_a
    const-string v0, "OP_REMOVE_MESSAGE"

    goto :goto_0

    .line 5670
    :pswitch_b
    const-string v0, "OP_SET_CONVERSATION_NAME"

    goto :goto_0

    .line 5672
    :pswitch_c
    const-string v0, "OP_SET_CONVERSATION_NOTIFICATION_LEVEL"

    goto :goto_0

    .line 5674
    :pswitch_d
    const-string v0, "OP_RECEIVE_RESPONSE"

    goto :goto_0

    .line 5676
    :pswitch_e
    const-string v0, "OP_REPLY_TO_INVITATION"

    goto :goto_0

    .line 5678
    :pswitch_f
    const-string v0, "OP_DECLINE_ALL_INVITES"

    goto :goto_0

    .line 5680
    :pswitch_10
    const-string v0, "OP_REQUEST_MORE_EVENTS"

    goto :goto_0

    .line 5682
    :pswitch_11
    const-string v0, "OP_RETRY_SEND_MESSAGE"

    goto :goto_0

    .line 5684
    :pswitch_12
    const-string v0, "OP_SET_MESSAGE_FAILED"

    goto :goto_0

    .line 5686
    :pswitch_13
    const-string v0, "OP_REQUEST_SUGGESTED_CONTACTS"

    goto :goto_0

    .line 5688
    :pswitch_14
    const-string v0, "OP_RECEIVE_SERVER_UPDATE"

    goto :goto_0

    .line 5690
    :pswitch_15
    const-string v0, "OP_REQUEST_MORE_CONVERSATIONS"

    goto :goto_0

    .line 5692
    :pswitch_16
    const-string v0, "OP_REQUEST_WARM_SYNC"

    goto :goto_0

    .line 5694
    :pswitch_17
    const-string v0, "OP_SYNC_BASELINE_SUGGESTED_CONTACTS"

    goto :goto_0

    .line 5696
    :pswitch_18
    const-string v0, "OP_CACHE_PRESENCE"

    goto :goto_0

    .line 5698
    :pswitch_19
    const-string v0, "OP_REQUEST_SEARCH_CONTACTS"

    goto :goto_0

    .line 5700
    :pswitch_1a
    const-string v0, "OP_REQUEST_GET_CONTACT_BY_ID"

    goto :goto_0

    .line 5702
    :pswitch_1b
    const-string v0, "OP_SET_ACTIVE_CLIENT"

    goto :goto_0

    .line 5704
    :pswitch_1c
    const-string v0, "OP_MODIFY_OTR_STATUS"

    goto :goto_0

    .line 5706
    :pswitch_1d
    const-string v0, "OP_REQUEST_CONVERSATION_META_DATA"

    goto :goto_0

    .line 5708
    :pswitch_1e
    const-string v0, "OP_SET_DND_SETTING"

    goto :goto_0

    .line 5710
    :pswitch_1f
    const-string v0, "OP_HANGOUT_CALL_INVITE_ACK"

    goto :goto_0

    .line 5712
    :pswitch_20
    const-string v0, "OP_GET_PROFILE"

    goto :goto_0

    .line 5714
    :pswitch_21
    const-string v0, "OP_RECEIVE_SIMULATED_EVENT"

    goto :goto_0

    .line 5716
    :pswitch_22
    const-string v0, "OP_ARCHIVE_CONVERSATIONS"

    goto :goto_0

    .line 5718
    :pswitch_23
    const-string v0, "OP_REQUEST_HANGOUT_INFO"

    goto :goto_0

    .line 5720
    :pswitch_24
    const-string v0, "OP_LOCALE_CHANGED"

    goto :goto_0

    .line 5722
    :pswitch_25
    const-string v0, "OP_EXPIRE_LAST_MESSAGE"

    goto :goto_0

    .line 5724
    :pswitch_26
    const-string v0, "OP_REPORT_CALL_PERF_STATS"

    goto :goto_0

    .line 5726
    :pswitch_27
    const-string v0, "OP_REQUEST_HANGOUT_PARTICIPANTS"

    goto :goto_0

    .line 5728
    :pswitch_28
    const-string v0, "OP_DELETE_MESSAGE"

    goto :goto_0

    .line 5730
    :pswitch_29
    const-string v0, "OP_UPDATE_CONVERSATION_SCROLL_TIME"

    goto :goto_0

    .line 5732
    :pswitch_2a
    const-string v0, "OP_UPDATE_MESSAGE_SCROLL_TIME"

    goto :goto_0

    .line 5734
    :pswitch_2b
    const-string v0, "OP_RETRY_CREATE_CONVERSATION"

    goto/16 :goto_0

    .line 5736
    :pswitch_2c
    const-string v0, "OP_SET_CONVERSATION_CREATE_FAILED"

    goto/16 :goto_0

    .line 5738
    :pswitch_2d
    const-string v0, "OP_START_PHONE_VERIFICATION"

    goto/16 :goto_0

    .line 5740
    :pswitch_2e
    const-string v0, "OP_FINISH_PHONE_VERIFICATION"

    goto/16 :goto_0

    .line 5742
    :pswitch_2f
    const-string v0, "OP_GET_CHAT_ACL_SETTINGS"

    goto/16 :goto_0

    .line 5744
    :pswitch_30
    const-string v0, "OP_SET_CHAT_ACL_SETTING"

    goto/16 :goto_0

    .line 5746
    :pswitch_31
    const-string v0, "OP_SET_CHAT_ACLS_HAPPY_STATE"

    goto/16 :goto_0

    .line 5748
    :pswitch_32
    const-string v0, "OP_DELETE_CONVERSATION"

    goto/16 :goto_0

    .line 5750
    :pswitch_33
    const-string v0, "OP_SET_USER_BLOCK"

    goto/16 :goto_0

    .line 5752
    :pswitch_34
    const-string v0, "OP_CLEANUP_DB"

    goto/16 :goto_0

    .line 5754
    :pswitch_35
    const-string v0, "OP_LOAD_BLOCKED_PEOPLE"

    goto/16 :goto_0

    .line 5756
    :pswitch_36
    const-string v0, "OP_REFRESH_PARTICIPANTS_INFO"

    goto/16 :goto_0

    .line 5758
    :pswitch_37
    const-string v0, "OP_SEND_OFFNETWORK_INVITATION"

    goto/16 :goto_0

    .line 5760
    :pswitch_38
    const-string v0, "OP_HANDLE_PACKAGE_REPLACED"

    goto/16 :goto_0

    .line 5762
    :pswitch_39
    const-string v0, "OP_REVERT_CONVERSATION_NAME"

    goto/16 :goto_0

    .line 5764
    :pswitch_3a
    const-string v0, "OP_SET_CONVERSATION_INVITE_FAILURE"

    goto/16 :goto_0

    .line 5766
    :pswitch_3b
    const-string v0, "OP_UNREGISTER_REMOVED_ACCOUNTS"

    goto/16 :goto_0

    .line 5768
    :pswitch_3c
    const-string v0, "OP_RECEIVE_SMS_MESSAGE"

    goto/16 :goto_0

    .line 5770
    :pswitch_3d
    const-string v0, "OP_SEND_PENDING_CONVERSATION_OPERATIONS"

    goto/16 :goto_0

    .line 5772
    :pswitch_3e
    const-string v0, "OP_RECEIVE_MMS_MESSAGE"

    goto/16 :goto_0

    .line 5774
    :pswitch_3f
    const-string v0, "OP_COMPLETE_CANCEL_SEND_MESSAGE"

    goto/16 :goto_0

    .line 5776
    :pswitch_40
    const-string v0, "OP_PATCH_AFTER_REQUEST_WRITER_UPGRADE"

    goto/16 :goto_0

    .line 5778
    :pswitch_41
    const-string v0, "OP_RECEIVE_MMS_WAP_PUSH"

    goto/16 :goto_0

    .line 5780
    :pswitch_42
    const-string v0, "OP_RETRIEVE_MMS_MESSAGE"

    goto/16 :goto_0

    .line 5782
    :pswitch_43
    const-string v0, "OP_RESTART_PURGED_CONVERSATION"

    goto/16 :goto_0

    .line 5784
    :pswitch_44
    const-string v0, "OP_SET_STATUS_MESSAGE"

    goto/16 :goto_0

    .line 5786
    :pswitch_45
    const-string v0, "OP_DISMISS_SUGGESTED_CONTACT"

    goto/16 :goto_0

    .line 5788
    :pswitch_46
    const-string v0, "OP_SET_RICH_PRESENCE_ENABLED_STATE"

    goto/16 :goto_0

    .line 5790
    :pswitch_47
    const-string v0, "OP_INSERT_PARTICIPANT_ENTITY"

    goto/16 :goto_0

    .line 5792
    :pswitch_48
    const-string v0, "OP_RECEIVE_SMS_DELIVERY_REPORT"

    goto/16 :goto_0

    .line 5794
    :pswitch_49
    const-string v0, "OP_HANDLE_STORAGE_LOW_SMS"

    goto/16 :goto_0

    .line 5796
    :pswitch_4a
    const-string v0, "OP_HANDLE_STORAGE_OK_SMS"

    goto/16 :goto_0

    .line 5798
    :pswitch_4b
    const-string v0, "OP_FREE_SMS_STORAGE"

    goto/16 :goto_0

    .line 5800
    :pswitch_4c
    const-string v0, "OP_UPLOAD_ANALYTICS"

    goto/16 :goto_0

    .line 5802
    :pswitch_4d
    const-string v0, "OP_GET_USER_PHOTO_ALBUMS"

    goto/16 :goto_0

    .line 5804
    :pswitch_4e
    const-string v0, "OP_GET_VIDEO_DATA"

    goto/16 :goto_0

    .line 5806
    :pswitch_4f
    const-string v0, "OP_REMOVE_CONVERSATION_IF_EMPTY"

    goto/16 :goto_0

    .line 5808
    :pswitch_50
    const-string v0, "OP_SYNC_SMS_MESSAGES"

    goto/16 :goto_0

    .line 5810
    :pswitch_51
    const-string v0, "OP_TRIGGER_DEFERRED_NOTIFICATION"

    goto/16 :goto_0

    .line 5812
    :pswitch_52
    const-string v0, "OP_REVIVE_MMS_NOTIFICATION"

    goto/16 :goto_0

    .line 5814
    :pswitch_53
    const-string v0, "OP_RENEW_ACCOUNT_REGISTRATION"

    goto/16 :goto_0

    .line 5816
    :pswitch_54
    const-string v0, "OP_CREATE_HANGOUT_ID"

    goto/16 :goto_0

    .line 5818
    :pswitch_55
    const-string v0, "OP_LEAVE_CONTINGENCY_FAILED"

    goto/16 :goto_0

    .line 5820
    :pswitch_56
    const-string v0, "OP_DELETE_CONVERSATION_FAILED"

    goto/16 :goto_0

    .line 5822
    :pswitch_57
    const-string v0, "OP_UPLOAD_VIDEO_CALL_LOGS"

    goto/16 :goto_0

    .line 5824
    :pswitch_58
    const-string v0, "OP_RECEIVE_SMSMMS_FROM_DUMP_FILE"

    goto/16 :goto_0

    .line 5826
    :pswitch_59
    const-string v0, "OP_SEND_EASTER_EGG"

    goto/16 :goto_0

    .line 5828
    :pswitch_5a
    const-string v0, "OP_GET_VOICE_ACCOUNT_INFO"

    goto/16 :goto_0

    .line 5830
    :pswitch_5b
    const-string v0, "OP_CLEANUP_EVENT_SUGGESTIONS"

    goto/16 :goto_0

    .line 5832
    :pswitch_5c
    const-string v0, "OP_ENABLE_VOICE_CALLING"

    goto/16 :goto_0

    .line 5834
    :pswitch_5d
    const-string v0, "OP_GET_CALL_RATE"

    goto/16 :goto_0

    .line 5836
    :pswitch_5e
    const-string v0, "OP_SEND_STRESS_TEST_MESSAGE"

    goto/16 :goto_0

    .line 5838
    :pswitch_5f
    const-string v0, "OP_ADD_RECENT_PSTN_CALL"

    goto/16 :goto_0

    .line 5840
    :pswitch_60
    const-string v0, "OP_GET_PHONE_LIST"

    goto/16 :goto_0

    .line 5842
    :pswitch_61
    const-string v0, "OP_FETCH_PROXY_NUMBER"

    goto/16 :goto_0

    .line 5844
    :pswitch_62
    const-string v0, "OP_CLEAR_CONTINUATION_TOKEN"

    goto/16 :goto_0

    .line 5846
    :pswitch_63
    const-string v0, "OP_POLL_PARASITE_OPERATIONS"

    goto/16 :goto_0

    .line 5848
    :pswitch_64
    const-string v0, "OP_ADD_BROADCAST"

    goto/16 :goto_0

    .line 5850
    :pswitch_65
    const-string v0, "OP_GET_BROADCAST"

    goto/16 :goto_0

    .line 5852
    :pswitch_66
    const-string v0, "OP_MODIFY_BROADCAST"

    goto/16 :goto_0

    .line 5854
    :pswitch_67
    const-string v0, "OP_REMOVE_BROADCAST"

    goto/16 :goto_0

    .line 5856
    :pswitch_68
    const-string v0, "OP_WARN_NO_SIM_FOR_SMS"

    goto/16 :goto_0

    .line 5858
    :pswitch_69
    const-string v0, "OP_REFRESH_SMS_PARTICIPANTS"

    goto/16 :goto_0

    .line 5860
    :pswitch_6a
    const-string v0, "OP_TEST_WATCHDOG"

    goto/16 :goto_0

    .line 5862
    :pswitch_6b
    const-string v0, "OP_UNMERGE_CONVERSATIONS"

    goto/16 :goto_0

    .line 5864
    :pswitch_6c
    const-string v0, "OP_REQUEST_FIFE_URLS"

    goto/16 :goto_0

    .line 5866
    :pswitch_6d
    const-string v0, "OP_MERGE_ALL_CONVERSATIONS"

    goto/16 :goto_0

    .line 5868
    :pswitch_6e
    const-string v0, "OP_UNMERGE_ALL_CONVERSATIONS"

    goto/16 :goto_0

    .line 5870
    :pswitch_6f
    const-string v0, "OP_UNDISMISS_SUGGESTED_CONTACT"

    goto/16 :goto_0

    .line 5872
    :pswitch_70
    const-string v0, "OP_UPDATE_CONVERSATION_CALL_MEDIA_TYPE"

    goto/16 :goto_0

    .line 5874
    :pswitch_71
    const-string v0, "OP_SAVE_SMS_AND_NOTIFY_IF_UNREAD"

    goto/16 :goto_0

    .line 5876
    :pswitch_72
    const-string v0, "OP_GET_AUDIO_DATA"

    goto/16 :goto_0

    .line 5878
    :pswitch_73
    const-string v0, "OP_FORK_CONVERSATION"

    goto/16 :goto_0

    .line 5880
    :pswitch_74
    const-string v0, "OP_TICKLE_GCM"

    goto/16 :goto_0

    .line 5882
    :pswitch_75
    const-string v0, "OP_UPDATE_FAVORITE_CONTACT"

    goto/16 :goto_0

    .line 5884
    :pswitch_76
    const-string v0, "OP_GET_FAVORITES"

    goto/16 :goto_0

    .line 5648
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
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
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_34
        :pswitch_0
        :pswitch_35
        :pswitch_0
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_0
        :pswitch_3a
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3c
        :pswitch_0
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_0
        :pswitch_0
        :pswitch_45
        :pswitch_46
        :pswitch_0
        :pswitch_0
        :pswitch_47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_48
        :pswitch_0
        :pswitch_0
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_0
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_60
        :pswitch_0
        :pswitch_0
        :pswitch_62
        :pswitch_0
        :pswitch_63
        :pswitch_68
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_69
        :pswitch_0
        :pswitch_6a
        :pswitch_0
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_71
        :pswitch_0
        :pswitch_0
        :pswitch_72
        :pswitch_70
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_73
        :pswitch_74
        :pswitch_0
        :pswitch_0
        :pswitch_4d
        :pswitch_0
        :pswitch_0
        :pswitch_44
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_61
        :pswitch_0
        :pswitch_0
        :pswitch_75
        :pswitch_76
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_31
    .end packed-switch
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 50224
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2212
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2214
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->m()Landroid/app/PendingIntent;

    move-result-object v1

    .line 2215
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2216
    return-void
.end method

.method public static g(Lbfd;)V
    .locals 2

    .prologue
    .line 6085
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xa3

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50725
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50723
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 6087
    return-void
.end method

.method public static g(Lbfd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 5460
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 5461
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d(Lbfd;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5462
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d:Ljava/lang/String;

    .line 5463
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5464
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5467
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5468
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->t:Ljava/util/Map;

    monitor-enter v1

    .line 5469
    :try_start_1
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->t:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5470
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5471
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i:Landroid/os/Handler;

    new-instance v1, Ldzs;

    invoke-direct {v1, p1, p2}, Ldzs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5479
    return-void

    .line 5467
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5470
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 2517
    const/16 v0, 0xad

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i(I)Landroid/content/Intent;

    move-result-object v0

    .line 50261
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50259
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 2518
    return-void
.end method

.method private static final h(I)V
    .locals 2

    .prologue
    .line 712
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b:Lezv;

    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 713
    return-void
.end method

.method public static h(Lbfd;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1951
    invoke-static {p1}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1952
    invoke-static {p1}, Lbfz;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1953
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x53

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50173
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50171
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 1955
    :cond_0
    return-void
.end method

.method private static i(I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 716
    new-instance v0, Landroid/content/Intent;

    .line 10036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 716
    const-class v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 717
    const-string v1, "op"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h(I)V

    .line 719
    return-object v0
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 2521
    const/16 v0, 0xae

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i(I)Landroid/content/Intent;

    move-result-object v0

    .line 50264
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50262
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 2522
    return-void
.end method

.method public static i(Lbfd;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2100
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xb4

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "call_media_type"

    const/4 v2, 0x0

    .line 2102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 50206
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50204
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    .line 2104
    return-void
.end method

.method public static j(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2555
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2556
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50270
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50268
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2557
    return v0
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 6035
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    .line 6036
    if-nez v0, :cond_0

    .line 6042
    :goto_0
    return-void

    .line 6040
    :cond_0
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x83

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50713
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50711
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method private static j(I)V
    .locals 2

    .prologue
    .line 2498
    invoke-static {p0}, Leay;->b(I)Leay;

    move-result-object v0

    .line 2499
    invoke-virtual {v0}, Leay;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Leay;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2500
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 2501
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "RefreshParticipantsOperation is idle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2507
    :cond_0
    :goto_0
    return-void

    .line 2506
    :cond_1
    const/16 v0, 0x62

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50255
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50253
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method public static k(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2654
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x2a

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50291
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50289
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2654
    return v0
.end method

.method public static k()V
    .locals 2

    .prologue
    .line 6045
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    .line 6046
    if-nez v0, :cond_0

    .line 6052
    :goto_0
    return-void

    .line 6050
    :cond_0
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x84

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50716
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50714
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method private static k(I)V
    .locals 2

    .prologue
    .line 2525
    invoke-static {p0}, Ledq;->b(I)Ledq;

    move-result-object v0

    .line 2526
    invoke-virtual {v0}, Ledq;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ledq;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2527
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 2528
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UploadAnalyticsOperation is idle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2534
    :cond_0
    :goto_0
    return-void

    .line 2533
    :cond_1
    const/16 v0, 0x86

    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 50267
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50265
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    goto :goto_0
.end method

.method public static l(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2677
    invoke-static {p1}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2678
    const/4 v0, 0x0

    .line 2680
    :goto_0
    return v0

    .line 2681
    :cond_0
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x41

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50297
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50295
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    goto :goto_0
.end method

.method private static l(I)V
    .locals 2

    .prologue
    .line 50583
    sget-object v0, Leck;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leck;

    .line 4842
    if-eqz v0, :cond_0

    .line 4843
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->u:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 4847
    :cond_0
    invoke-static {p0}, Lecx;->c(I)Lecx;

    move-result-object v0

    .line 4848
    if-eqz v0, :cond_1

    .line 4849
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->u:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 4852
    :cond_1
    invoke-static {p0}, Leay;->c(I)Leay;

    move-result-object v0

    .line 4854
    if-eqz v0, :cond_2

    .line 4855
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->u:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 4857
    :cond_2
    return-void
.end method

.method private static l()Z
    .locals 2

    .prologue
    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 704
    const-class v1, Ledw;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledw;

    .line 705
    invoke-interface {v0}, Ledw;->b()Z

    move-result v0

    return v0
.end method

.method public static m(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2763
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x4f

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50312
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50310
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2762
    return v0
.end method

.method private static m()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 2179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.hangouts.CLEANUP_DB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2180
    const-string v1, "op"

    const/16 v2, 0x5e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50222
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 2185
    const/16 v2, 0x66

    .line 2186
    invoke-static {v2}, Leyr;->a(I)I

    move-result v2

    const/high16 v3, 0x8000000

    .line 2185
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static n(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2786
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x91

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2787
    const-string v1, "compressed_log_file"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50318
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50316
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2788
    return v0
.end method

.method public static o(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2802
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xbd

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2803
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50325
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50323
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2804
    return v0
.end method

.method public static p(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2822
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xb3

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2823
    const-string v1, "picasa_photo_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50331
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50329
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2824
    return v0
.end method

.method public static q(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2901
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x63

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 2902
    const-string v1, "email_address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50346
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50344
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 2903
    return v0
.end method

.method public static r(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 3009
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xa0

    .line 3008
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50379
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50377
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 3010
    return v0
.end method

.method public static s(Lbfd;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 3043
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xc2

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 3044
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50433
    sget-object v1, Lkmm;->a:Lkmm;

    .line 50431
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    .line 3045
    return v0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;JLknq;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "J",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    if-nez p1, :cond_1

    .line 796
    const-string v4, "Babel_RTCS"

    const-string v5, "RTCS onHandleIntent called with null intent"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    const-string v4, "op"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 800
    const/16 v4, 0x4e

    if-ne v5, v4, :cond_2

    .line 801
    const/16 v4, 0x948

    invoke-static {v4}, Laal;->c(I)V

    .line 804
    :cond_2
    const-string v4, "account_id"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 805
    const-string v4, "rqtms"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 807
    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->y:Z

    if-eqz v4, :cond_8

    .line 808
    :cond_3
    const-string v4, "rqtns"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 813
    :goto_1
    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v4, :cond_4

    .line 814
    sub-long v10, p2, v8

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    .line 815
    invoke-static {v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x56

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "RTCIntent: start processing intent:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " account:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " delay: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " ms"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_4
    sget v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->o:I

    const-string v10, "pid"

    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-ne v4, v10, :cond_9

    const/4 v4, 0x1

    .line 821
    :goto_2
    sget-boolean v10, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v10, :cond_5

    .line 822
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 823
    invoke-static {v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x2f

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "onHandleIntent "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " opcode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " respectWakeLock "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 826
    :cond_5
    if-eqz v4, :cond_b

    sget-object v10, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_6

    sget-object v10, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_b

    .line 827
    :cond_6
    const-string v6, "Babel_RTCS"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 828
    invoke-static {v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_a

    .line 830
    const-string v4, "(null)"

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x3a

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "RTCS.onHandleIntent called "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " opcode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sWakeLock: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isHeld: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .line 827
    invoke-static {v6, v4, v7}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    const/16 v4, 0x4e

    if-ne v5, v4, :cond_7

    .line 832
    const/16 v4, 0x949

    invoke-static {v4}, Laal;->c(I)V

    .line 835
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 810
    :cond_8
    const-wide/16 v8, 0x0

    goto/16 :goto_1

    .line 820
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 830
    :cond_a
    sget-object v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_3

    .line 11408
    :cond_b
    :try_start_0
    sget-object v10, Lbft;->b:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11409
    :try_start_1
    sget v11, Lbft;->c:I

    if-gez v11, :cond_d

    .line 11410
    new-instance v5, Ljava/lang/IllegalStateException;

    sget v6, Lbft;->c:I

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "sPendingChangeNotificationsCount is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 11414
    :catchall_0
    move-exception v5

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 917
    :catchall_1
    move-exception v5

    invoke-static {}, Lbft;->a()V

    .line 918
    if-eqz v4, :cond_c

    .line 922
    sget-object v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_c
    throw v5

    .line 11413
    :cond_d
    :try_start_3
    sget v11, Lbft;->c:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lbft;->c:I

    .line 11414
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 843
    sparse-switch v5, :sswitch_data_0

    .line 884
    :try_start_4
    invoke-static {v14}, Ldvd;->e(I)Lbfd;

    move-result-object v10

    .line 885
    if-nez v10, :cond_15

    .line 886
    const-string v10, "Babel_RTCS"

    const-string v11, "skipping intent for invalid account"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    const/16 v10, 0x4e

    if-ne v5, v10, :cond_e

    .line 889
    const/16 v10, 0x94a

    invoke-static {v10}, Laal;->c(I)V

    .line 13327
    :cond_e
    :goto_4
    sget-boolean v10, Lexo;->b:Z

    .line 912
    if-eqz v10, :cond_f

    .line 914
    invoke-static {}, Lexo;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 917
    :cond_f
    invoke-static {}, Lbft;->a()V

    .line 918
    if-eqz v4, :cond_10

    .line 922
    sget-object v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 925
    :cond_10
    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->y:Z

    if-nez v4, :cond_11

    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v4, :cond_0

    .line 926
    :cond_11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 927
    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->y:Z

    if-eqz v4, :cond_13

    .line 14135
    sget-object v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h:Lhli;

    if-eqz v4, :cond_13

    .line 14138
    new-instance v4, Leak;

    move-wide/from16 v10, p2

    invoke-direct/range {v4 .. v13}, Leak;-><init>(IJJJJ)V

    .line 14140
    sget-object v6, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->j:Ljava/lang/Object;

    monitor-enter v6

    .line 14141
    :try_start_5
    sget-object v7, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h:Lhli;

    if-eqz v7, :cond_12

    .line 14142
    sget-object v7, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h:Lhli;

    invoke-virtual {v7, v4}, Lhli;->a(Ljava/lang/Object;)V

    .line 14144
    :cond_12
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 931
    :cond_13
    sget-boolean v4, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v4, :cond_0

    .line 932
    sub-long v6, v12, p2

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    .line 933
    invoke-static {v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x56

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "RTCIntent: finish processing intent:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 847
    :sswitch_0
    :try_start_6
    const-string v10, "Babel_RTCS"

    const-string v11, "locale changed."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 851
    :sswitch_1
    const-string v10, "Babel_RTCS"

    const-string v11, "clean up database."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    invoke-static {}, Lehb;->c()Lehb;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lehb;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 855
    :sswitch_2
    const-string v10, "Babel_RTCS"

    const-string v11, "renew accounts."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    invoke-static {}, Ldvd;->p()V

    goto/16 :goto_4

    .line 860
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "package"

    .line 862
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 859
    invoke-static {v10, v11, v12}, Lcom/google/android/apps/hangouts/phone/PackageReplacedReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 865
    :sswitch_4
    invoke-static {v14}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l(I)V

    .line 12137
    sget-boolean v10, Lehd;->a:Z

    if-eqz v10, :cond_14

    .line 12138
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x27

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Removing contact loader for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12141
    :cond_14
    sget-object v10, Lehd;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    invoke-static {v14}, Lehi;->a(I)V

    .line 868
    invoke-static {v14}, Lebo;->c(I)Lebo;

    goto/16 :goto_4

    .line 871
    :sswitch_5
    const-string v10, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 872
    const-string v11, "timestamp"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 13015
    new-instance v11, Lbfz;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 13017
    invoke-virtual {v11, v10, v12, v13}, Lbfz;->e(Ljava/lang/String;J)I

    move-result v11

    .line 13019
    sget-boolean v15, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v15, :cond_e

    .line 13020
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x98

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v16, "Deleted "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " played event suggestions for conversation "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " on account "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " where the last played event was at timestamp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 876
    :sswitch_6
    invoke-static/range {p0 .. p0}, Lbfz;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 879
    :sswitch_7
    invoke-static/range {p0 .. p0}, Lbfz;->b(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 893
    :cond_15
    invoke-static {v10}, Ldvd;->d(Lbfd;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 894
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_16

    const/16 v10, 0x13

    if-ne v5, v10, :cond_17

    .line 898
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d(Landroid/content/Intent;Lknq;)V

    goto/16 :goto_4

    .line 900
    :cond_17
    const/16 v10, 0x4e

    if-ne v5, v10, :cond_18

    .line 901
    const/16 v10, 0x9dd

    invoke-static {v10}, Laal;->c(I)V

    .line 904
    :cond_18
    const/16 v10, 0xa06

    invoke-static {v14, v10}, Laal;->c(II)Lhax;

    move-result-object v10

    .line 906
    invoke-interface {v10, v5}, Lhax;->a(I)Lhax;

    move-result-object v10

    .line 907
    invoke-interface {v10}, Lhax;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_4

    .line 14144
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .line 843
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_4
        0x4a -> :sswitch_0
        0x5e -> :sswitch_1
        0x64 -> :sswitch_3
        0x8d -> :sswitch_2
        0x95 -> :sswitch_5
        0xad -> :sswitch_6
        0xae -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Landroid/content/Intent;Lknq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->y:Z

    if-eqz v0, :cond_3

    .line 777
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 781
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->m:Ledv;

    if-eqz v2, :cond_1

    .line 782
    iget-object v2, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->m:Ledv;

    invoke-virtual {v2, p1}, Ledv;->b(Ljava/lang/Object;)V

    .line 784
    :cond_1
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Landroid/content/Intent;JLknq;)V

    .line 785
    iget-object v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->m:Ledv;

    if-eqz v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->m:Ledv;

    invoke-virtual {v0}, Ledv;->a()V

    .line 788
    :cond_2
    return-void

    .line 779
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 1027
    const-string v0, "op"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1028
    sparse-switch v0, :sswitch_data_0

    .line 1037
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1031
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1033
    :sswitch_1
    const-string v0, "server_response_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    const-class v1, Ldrz;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1028
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0x27 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 969
    invoke-super {p0}, Leeb;->onCreate()V

    .line 970
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/DebugActivity;->b(Landroid/content/Context;)V

    .line 972
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->B:Z

    if-nez v0, :cond_1

    .line 973
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 974
    const-string v0, "Babel_RTCS"

    const-string v1, "start and bind to the request writer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->k()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 982
    iput-boolean v4, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->B:Z

    .line 988
    :cond_1
    new-instance v0, Leai;

    .line 14941
    invoke-direct {v0, p0}, Leai;-><init>(Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;)V

    .line 988
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Leai;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 989
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 997
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->B:Z

    if-eqz v0, :cond_1

    .line 999
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_0

    .line 1000
    const-string v0, "Babel_RTCS"

    const-string v1, "unbind to the request writer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1003
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l:Leer;

    .line 1004
    iput-boolean v3, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->B:Z

    .line 1007
    :cond_1
    invoke-super {p0}, Leeb;->onDestroy()V

    .line 1008
    iget-object v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->m:Ledv;

    if-eqz v0, :cond_2

    .line 1009
    iget-object v0, p0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->m:Ledv;

    invoke-virtual {v0}, Ledv;->b()V

    .line 1011
    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 760
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 761
    const-string v0, "Babel_RTCS"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "op"

    .line 763
    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x62

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "RTCS.onStartCommand called for redelivery / retry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    .line 761
    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    :cond_0
    invoke-super {p0, p1, p2, p3}, Leeb;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
