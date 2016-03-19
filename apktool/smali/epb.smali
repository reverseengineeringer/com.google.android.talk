.class public final Lepb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lepa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lepa;

    .line 1015
    invoke-direct {v0, p1}, Lepa;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v0, p0, Lepb;->a:Lepa;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Lepb;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lepb;->a:Lepa;

    .line 7015
    const/4 v1, 0x1

    iput-boolean v1, v0, Lepa;->f:Z

    .line 63
    return-object p0
.end method

.method public a(J)Lepb;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lepb;->a:Lepa;

    .line 6015
    iput-wide p1, v0, Lepa;->a:J

    .line 58
    return-object p0
.end method

.method public a(Leph;)Lepb;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lepb;->a:Lepa;

    .line 5015
    iput-object p1, v0, Lepa;->e:Leph;

    .line 53
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lepb;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lepb;->a:Lepa;

    .line 2015
    iput-object p1, v0, Lepa;->b:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public b()Lepa;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lepb;->a:Lepa;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lepb;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lepb;->a:Lepa;

    .line 3015
    iput-object p1, v0, Lepa;->c:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lepb;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lepb;->a:Lepa;

    .line 4015
    iput-object p1, v0, Lepa;->d:Ljava/lang/String;

    .line 48
    return-object p0
.end method
