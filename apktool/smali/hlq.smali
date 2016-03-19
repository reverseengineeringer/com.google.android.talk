.class public final Lhlq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Lhlr;

.field private final b:Lhls;

.field private final c:Landroid/app/Application;

.field private volatile d:Z

.field private volatile e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/app/Application;Lhlr;Lhls;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lhlq;->d:Z

    .line 32
    iput-boolean v0, p0, Lhlq;->e:Z

    .line 37
    iput v0, p0, Lhlq;->f:I

    .line 41
    iput-object p2, p0, Lhlq;->a:Lhlr;

    .line 42
    iput-object p3, p0, Lhlq;->b:Lhls;

    .line 43
    iput-object p1, p0, Lhlq;->c:Landroid/app/Application;

    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lhlq;->f:I

    .line 48
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1125
    const-string v0, "activity"

    .line 1126
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1128
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1129
    if-eqz v0, :cond_2

    .line 1130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1131
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1132
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v0, v5, :cond_0

    move v0, v1

    .line 101
    :goto_0
    if-nez v0, :cond_3

    .line 102
    iget-boolean v0, p0, Lhlq;->d:Z

    if-eqz v0, :cond_1

    .line 104
    iput-boolean v2, p0, Lhlq;->d:Z

    .line 105
    iget-object v0, p0, Lhlq;->a:Lhlr;

    invoke-virtual {v0}, Lhlr;->a()V

    .line 115
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1138
    goto :goto_0

    .line 108
    :cond_3
    iget-boolean v0, p0, Lhlq;->d:Z

    if-nez v0, :cond_1

    .line 111
    iput-boolean v1, p0, Lhlq;->d:Z

    .line 112
    iget-object v0, p0, Lhlq;->b:Lhls;

    invoke-virtual {v0}, Lhls;->a()V

    goto :goto_1
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lhlq;->c:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 91
    iget v2, p0, Lhlq;->f:I

    if-eq v2, v1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 95
    iput v1, p0, Lhlq;->f:I

    .line 97
    :cond_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lhlq;->c:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 146
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lhlq;->e:Z

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lhlq;->a(Landroid/app/Activity;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lhlq;->b()Z

    move-result v0

    iput-boolean v0, p0, Lhlq;->e:Z

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lhlq;->b()Z

    move-result v0

    iput-boolean v0, p0, Lhlq;->e:Z

    .line 75
    iget-boolean v0, p0, Lhlq;->e:Z

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lhlq;->a(Landroid/app/Activity;)V

    .line 78
    :cond_0
    return-void
.end method
