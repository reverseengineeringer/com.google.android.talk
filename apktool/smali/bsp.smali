.class final Lbsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lbsq;

.field private c:J

.field private d:Landroid/net/Uri;

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lbsq;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lbsq;->b:Lbsq;

    if-eq p2, v0, :cond_0

    sget-object v0, Lbsq;->a:Lbsq;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Laen;->a(Z)V

    .line 52
    iput-object p1, p0, Lbsp;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lbsp;->b:Lbsq;

    .line 54
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lbso;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lbso;

    iget-object v1, p0, Lbsp;->a:Ljava/lang/String;

    iget-object v2, p0, Lbsp;->b:Lbsq;

    .line 1009
    invoke-direct {v0, v1, v2}, Lbso;-><init>(Ljava/lang/String;Lbsq;)V

    .line 58
    iget-wide v2, p0, Lbsp;->c:J

    iput-wide v2, v0, Lbso;->c:J

    .line 59
    iget-object v1, p0, Lbsp;->d:Landroid/net/Uri;

    iput-object v1, v0, Lbso;->d:Landroid/net/Uri;

    .line 60
    iget-object v1, p0, Lbsp;->e:Ljava/lang/String;

    iput-object v1, v0, Lbso;->e:Ljava/lang/String;

    .line 61
    iget-wide v2, p0, Lbsp;->f:J

    iput-wide v2, v0, Lbso;->f:J

    .line 62
    return-object v0
.end method

.method a(J)Lbsp;
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lbsp;->c:J

    .line 67
    return-object p0
.end method

.method a(Landroid/net/Uri;)Lbsp;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lbsp;->d:Landroid/net/Uri;

    .line 72
    return-object p0
.end method

.method a(Ljava/lang/String;)Lbsp;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lbsp;->e:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method b(J)Lbsp;
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lbsp;->f:J

    .line 82
    return-object p0
.end method
