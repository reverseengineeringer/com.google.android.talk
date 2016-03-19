.class final Ldis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/Thread;

.field final synthetic d:Ldir;


# direct methods
.method constructor <init>(Ldir;Ljava/lang/Throwable;ZLjava/lang/Thread;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Ldis;->d:Ldir;

    iput-object p2, p0, Ldis;->a:Ljava/lang/Throwable;

    iput-boolean p3, p0, Ldis;->b:Z

    iput-object p4, p0, Ldis;->c:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 173
    iget-object v1, p0, Ldis;->d:Ldir;

    iget-object v2, p0, Ldis;->a:Ljava/lang/Throwable;

    .line 1195
    iget-object v0, v1, Ldir;->a:Landroid/content/Context;

    const-class v3, Lfak;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfak;

    .line 1196
    invoke-virtual {v0}, Lfak;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1197
    invoke-virtual {v0}, Lfak;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Ldir;->a:Landroid/content/Context;

    const-string v3, "babel_send_silent_crash_feedback"

    const/4 v4, 0x0

    .line 1198
    invoke-static {v0, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    :cond_0
    iget-object v0, v1, Ldir;->a:Landroid/content/Context;

    iget-object v1, v1, Ldir;->a:Landroid/content/Context;

    .line 1203
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ".SILENT_CRASH_REPORT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1202
    invoke-static {v0, v2, v1}, Likj;->a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 175
    :cond_1
    iget-boolean v0, p0, Ldis;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldis;->d:Ldir;

    .line 2036
    iget-object v0, v0, Ldir;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 175
    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Ldis;->d:Ldir;

    .line 3036
    iget-object v0, v0, Ldir;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 176
    iget-object v1, p0, Ldis;->c:Ljava/lang/Thread;

    iget-object v2, p0, Ldis;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 178
    :cond_2
    return-void
.end method
