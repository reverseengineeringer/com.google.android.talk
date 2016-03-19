.class public final Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->a:Ljava/lang/Object;

    .line 35
    iput v1, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->b:I

    .line 37
    iput v1, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->c:I

    return-void
.end method

.method private final b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    const v2, 0x645b68

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 85
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget v2, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->b:I

    if-nez v2, :cond_0

    .line 105
    iget v0, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->stopSelf(I)V

    .line 111
    :cond_1
    return-void

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 115
    iget-object v1, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->b:I

    .line 117
    iput p3, p0, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->c:I

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-direct {p0}, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->a()V

    .line 182
    :goto_0
    return v3

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lgxl;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxl;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lgys;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgys;

    invoke-interface {v1}, Lgys;->a()Latn;

    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Lgxl;->a(Lgxj;)Lgxl;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Lgxl;->a()Lgxk;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v2, Lgyr;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyr;

    invoke-interface {v0, v1}, Lgyr;->a(Lgxk;)Lgyq;

    move-result-object v0

    .line 139
    new-instance v2, Liko;

    invoke-direct {v2, p0, v0, p1, v1}, Liko;-><init>(Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;Lgyq;Landroid/content/Intent;Lgxk;)V

    invoke-interface {v1, v2}, Lgxk;->a(Lgxn;)V

    .line 170
    new-instance v0, Likq;

    invoke-direct {v0, p0}, Likq;-><init>(Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;)V

    invoke-interface {v1, v0}, Lgxk;->a(Lgxo;)V

    .line 180
    invoke-interface {v1}, Lgxk;->a()V

    goto :goto_0
.end method
