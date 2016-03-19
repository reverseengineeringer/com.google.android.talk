.class public final Lhxr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lhxq",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lhxr;->a:Ljava/util/Set;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Laal;->w()V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 40
    const/16 v0, 0x50

    invoke-static {v0}, Lhxr;->a(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Laal;->w()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Trimming memory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    sget-object v0, Lhxr;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxq;

    .line 29
    invoke-virtual {v0, p0}, Lhxq;->a(I)V

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method static a(Lhxq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhxq",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Laal;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lhxr;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Lhxs;

    invoke-direct {v0, p0}, Lhxs;-><init>(Lhxq;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
