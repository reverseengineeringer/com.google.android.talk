.class public Ldpq;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1741
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 1742
    iput-object p1, p0, Ldpq;->a:Ljava/lang/String;

    .line 1743
    iput-boolean v0, p0, Ldpq;->b:Z

    .line 1744
    iput p2, p0, Ldpq;->c:I

    .line 1745
    iput-boolean v0, p0, Ldpq;->d:Z

    .line 1746
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1787
    const-string v0, "background_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 2

    .prologue
    .line 1755
    new-instance v0, Lkea;

    invoke-direct {v0}, Lkea;-><init>()V

    .line 1757
    iget-object v1, p0, Ldpq;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Lkea;->requestHeader:Lkdo;

    .line 1759
    iget-object v1, p0, Ldpq;->a:Ljava/lang/String;

    iput-object v1, v0, Lkea;->b:Ljava/lang/String;

    .line 1760
    iget-boolean v1, p0, Ldpq;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lkea;->a:Ljava/lang/Boolean;

    .line 1761
    iget v1, p0, Ldpq;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkea;->c:Ljava/lang/Integer;

    .line 1762
    iget-boolean v1, p0, Ldpq;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lkea;->d:Ljava/lang/Boolean;

    .line 1763
    return-object v0
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1779
    invoke-static {p1}, Leck;->a(Lbfd;)Leck;

    move-result-object v1

    .line 1780
    const-string v2, "Babel_RequestWriter"

    const-string v3, "SetActiveClientOperation failed: "

    .line 1781
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    .line 1780
    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1782
    invoke-virtual {v1, v5}, Leck;->a(I)V

    .line 1783
    return-void

    .line 1781
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcwi;)Z
    .locals 2

    .prologue
    .line 1792
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1793
    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 1774
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1768
    const-string v0, "clients/setactiveclient"

    return-object v0
.end method
