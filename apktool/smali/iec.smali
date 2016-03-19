.class public final Liec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lieo;

.field b:Ljava/lang/String;

.field c:J

.field d:Ljava/lang/String;

.field e:J

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lieb;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lieb;

    .line 1006
    invoke-direct {v0, p0}, Lieb;-><init>(Liec;)V

    .line 70
    return-object v0
.end method

.method public a(J)Liec;
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Liec;->c:J

    .line 41
    return-object p0
.end method

.method public a(Lieo;)Liec;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Liec;->a:Lieo;

    .line 31
    return-object p0
.end method

.method public a(Ljava/lang/String;)Liec;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Liec;->b:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public b(J)Liec;
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Liec;->e:J

    .line 51
    return-object p0
.end method

.method public b(Ljava/lang/String;)Liec;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Liec;->d:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public c(Ljava/lang/String;)Liec;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Liec;->f:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public d(Ljava/lang/String;)Liec;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Liec;->g:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public e(Ljava/lang/String;)Liec;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Liec;->h:Ljava/lang/String;

    .line 66
    return-object p0
.end method
