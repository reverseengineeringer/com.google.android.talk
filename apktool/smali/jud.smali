.class public final Ljud;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/concurrent/atomic/AtomicLong;

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljtn;",
            ">;"
        }
    .end annotation
.end field

.field static c:Ljtn;

.field private static final d:Limx;

.field private static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljtn;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/Runnable;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Limx;

    const-string v1, "tiktok_systrace"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Limx;-><init>(Ljava/lang/String;B)V

    sput-object v0, Ljud;->d:Limx;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljud;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljud;->e:Ljava/lang/ThreadLocal;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljud;->b:Ljava/util/List;

    .line 85
    new-instance v0, Ljue;

    invoke-direct {v0}, Ljue;-><init>()V

    sput-object v0, Ljud;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljtm;
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    .line 52
    invoke-static {v0}, Ljud;->b(Ljtn;)V

    .line 53
    invoke-interface {v0, p0}, Ljtn;->a(Ljava/lang/String;)Ljtn;

    move-result-object v0

    .line 54
    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 55
    new-instance v1, Ljtm;

    invoke-direct {v1, v0}, Ljtm;-><init>(Ljtn;)V

    return-object v1
.end method

.method static a()Ljtn;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Ljud;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljtn;

    return-object v0
.end method

.method static a(Ljtn;)V
    .locals 1

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljtn;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Ljud;->a(Ljtn;Z)V

    .line 100
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljtn;Z)V
    .locals 1

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    sget-object v0, Ljud;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    if-eqz p1, :cond_0

    invoke-static {}, Laal;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Ljud;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Ljud;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 111
    :cond_0
    return-void
.end method

.method public static a(Ljrw;)Z
    .locals 1

    .prologue
    .line 114
    invoke-static {p0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    sget-boolean v0, Ljud;->g:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "async trace was not properly paused"

    invoke-static {v0, v3}, Lfii;->b(ZLjava/lang/Object;)V

    .line 133
    sget-object v0, Ljud;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Ljud;->c:Ljtn;

    if-eqz v0, :cond_1

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    sget-object v0, Ljud;->e:Ljava/lang/ThreadLocal;

    sget-object v2, Ljud;->c:Ljtn;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 138
    sput-boolean v1, Ljud;->g:Z

    .line 142
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 132
    goto :goto_0

    .line 140
    :cond_1
    sput-boolean v2, Ljud;->g:Z

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljud;->b(Ljtn;)V

    .line 66
    invoke-interface {v0, p0}, Ljtn;->b(Ljava/lang/String;)V

    .line 67
    invoke-interface {v0}, Ljtn;->b()Ljtn;

    move-result-object v1

    invoke-interface {v0}, Ljtn;->d()Z

    move-result v0

    invoke-static {v1, v0}, Ljud;->a(Ljtn;Z)V

    .line 68
    return-void
.end method

.method private static b(Ljtn;)V
    .locals 2

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Was supposed to have a trace - did you neglect to propagate or create one? See http://go/tiktok-tracing for more details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 146
    sget-boolean v0, Ljud;->g:Z

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Ljud;->c:Ljtn;

    const-string v1, "current async trace should not be null"

    invoke-static {v0, v1}, Lfii;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 151
    sget-object v0, Ljud;->e:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Ljud;->g:Z

    .line 154
    :cond_0
    return-void
.end method
