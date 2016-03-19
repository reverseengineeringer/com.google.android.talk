.class public Lhox;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhox;

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lhoy;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lhox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lhox;->b:Ljava/util/logging/Logger;

    .line 46
    new-instance v0, Lhox;

    .line 4030
    new-instance v1, Lhoy;

    invoke-direct {v1}, Lhoy;-><init>()V

    .line 46
    invoke-direct {v0, v1}, Lhox;-><init>(Lhoy;)V

    sput-object v0, Lhox;->a:Lhox;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    sput-object v0, Lhox;->c:Ljava/util/Set;

    const-string v1, "BR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lhox;->c:Ljava/util/Set;

    const-string v1, "CL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lhox;->c:Ljava/util/Set;

    const-string v1, "NI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method private constructor <init>(Lhoy;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lhox;->d:Lhoy;

    .line 87
    invoke-static {}, Laal;->s()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhox;->e:Ljava/util/Map;

    .line 89
    return-void
.end method


# virtual methods
.method public a(Lhos;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1108
    invoke-virtual {p1}, Lhos;->a()I

    move-result v0

    .line 2097
    iget-object v2, p0, Lhox;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2098
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1109
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    if-nez v0, :cond_1

    move v0, v1

    .line 153
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-static {p2}, Lhnw;->a(Ljava/lang/String;)Lhpa;

    move-result-object v0

    .line 150
    if-nez v0, :cond_2

    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lhox;->d:Lhoy;

    .line 2591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2592
    invoke-virtual {p1}, Lhos;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2593
    invoke-virtual {p1}, Lhos;->g()I

    move-result v3

    new-array v3, v3, [C

    .line 2594
    const/16 v4, 0x30

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 2595
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    :cond_3
    invoke-virtual {p1}, Lhos;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2598
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    iget-object v0, v0, Lhpa;->a:Lhpc;

    invoke-virtual {v1, v2, v0}, Lhoy;->a(Ljava/lang/String;Lhpc;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    invoke-static {p2}, Lhnw;->a(Ljava/lang/String;)Lhpa;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lhox;->d:Lhoy;

    iget-object v0, v0, Lhpa;->a:Lhpc;

    invoke-virtual {v1, p1, v0}, Lhoy;->a(Ljava/lang/String;Lhpc;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3538
    invoke-static {p1}, Lhof;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3539
    sget-object v2, Lhof;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3547
    :cond_0
    :goto_0
    return v0

    .line 3545
    :cond_1
    invoke-static {p2}, Lhnw;->a(Ljava/lang/String;)Lhpa;

    move-result-object v2

    .line 3546
    if-eqz v2, :cond_0

    iget-object v3, v2, Lhpa;->k:Lhpc;

    if-eqz v3, :cond_0

    .line 3550
    invoke-static {v1}, Lhof;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3551
    iget-object v2, v2, Lhpa;->k:Lhpc;

    .line 3552
    sget-object v3, Lhox;->c:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 3554
    :cond_2
    iget-object v3, p0, Lhox;->d:Lhoy;

    invoke-virtual {v3, v1, v2, v0}, Lhoy;->a(Ljava/lang/String;Lhpc;Z)Z

    move-result v0

    goto :goto_0
.end method
