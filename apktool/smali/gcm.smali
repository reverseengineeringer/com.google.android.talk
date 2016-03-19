.class public final Lgcm;
.super Lflc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflc",
        "<",
        "Lgcn;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lfif;Lfih;Lfkq;)V
    .locals 7

    const/16 v3, 0x1d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lflc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILfkq;Lfif;Lfih;)V

    iput-object p1, p0, Lgcm;->e:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/io/File;)Lcom/google/android/gms/feedback/ErrorReport;
    .locals 3

    new-instance v1, Lcom/google/android/gms/feedback/ErrorReport;

    invoke-direct {v1}, Lcom/google/android/gms/feedback/ErrorReport;-><init>()V

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->b()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->b()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->E:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->C:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->c:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->e()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->e()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->N:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->e()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    iput v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->L:I

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->e()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->M:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->e()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->O:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->e()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->J:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->e()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->P:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->e()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->K:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->c()Lcom/google/android/gms/feedback/ThemeSettings;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->c()Lcom/google/android/gms/feedback/ThemeSettings;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->Z:Lcom/google/android/gms/feedback/ThemeSettings;

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->Q:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->b:Landroid/app/ApplicationErrorReport;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->g()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->g()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->T:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iget-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->T:Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->a(Ljava/io/File;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->i()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/feedback/FileTeleporter;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/feedback/FileTeleporter;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/feedback/FileTeleporter;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/feedback/FileTeleporter;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->V:[Lcom/google/android/gms/feedback/FileTeleporter;

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->k()Lcom/google/android/gms/feedback/LogOptions;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->k()Lcom/google/android/gms/feedback/LogOptions;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->aa:Lcom/google/android/gms/feedback/LogOptions;

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->j()Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->X:Z

    :cond_b
    return-object v1
.end method

.method private c(Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/feedback/ErrorReport;
    .locals 1

    iget-object v0, p0, Lgcm;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lgcm;->a(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/io/File;)Lcom/google/android/gms/feedback/ErrorReport;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 2000
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.feedback.internal.IFeedbackService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lgcn;

    if-eqz v1, :cond_1

    check-cast v0, Lgcn;

    goto :goto_0

    :cond_1
    new-instance v0, Lgcp;

    invoke-direct {v0, p1}, Lgcp;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.feedback.internal.IFeedbackService"

    return-object v0
.end method

.method public a(Lcom/google/android/gms/feedback/FeedbackOptions;)V
    .locals 2

    invoke-virtual {p0}, Lgcm;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgcn;

    invoke-direct {p0, p1}, Lgcm;->c(Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/feedback/ErrorReport;

    move-result-object v1

    invoke-interface {v0, v1}, Lgcn;->a(Lcom/google/android/gms/feedback/ErrorReport;)Z

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.feedback.internal.IFeedbackService"

    return-object v0
.end method

.method public b(Lcom/google/android/gms/feedback/FeedbackOptions;)V
    .locals 2

    invoke-virtual {p0}, Lgcm;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgcn;

    invoke-direct {p0, p1}, Lgcm;->c(Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/feedback/ErrorReport;

    move-result-object v1

    invoke-interface {v0, v1}, Lgcn;->b(Lcom/google/android/gms/feedback/ErrorReport;)Z

    return-void
.end method
