.class public final Lihw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lihb;

.field private final e:Z

.field private final f:Lihp;


# direct methods
.method constructor <init>(Lihx;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    iget-object v0, p1, Lihx;->a:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lihw;->a:Ljava/lang/String;

    .line 2171
    iget-object v0, p1, Lihx;->b:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lihw;->b:Ljava/lang/String;

    .line 3171
    iget-object v0, p1, Lihx;->d:Lihb;

    .line 55
    iput-object v0, p0, Lihw;->d:Lihb;

    .line 4171
    iget-boolean v0, p1, Lihx;->e:Z

    .line 56
    iput-boolean v0, p0, Lihw;->e:Z

    .line 5171
    iget-object v0, p1, Lihx;->f:Lihp;

    .line 57
    iput-object v0, p0, Lihw;->f:Lihp;

    .line 6171
    iget-boolean v0, p1, Lihx;->c:Z

    .line 59
    if-eqz v0, :cond_0

    .line 7171
    iget-object v0, p1, Lihx;->b:Ljava/lang/String;

    .line 59
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lihw;->c:Z

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lihb;ZLihp;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "accountName"

    invoke-static {p1, v0}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lihw;->a:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lihw;->b:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lihw;->d:Lihb;

    .line 47
    iput-boolean p4, p0, Lihw;->e:Z

    .line 48
    iput-object v1, p0, Lihw;->f:Lihp;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lihw;->c:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, v3

    .line 37
    invoke-direct/range {v0 .. v5}, Lihw;-><init>(Ljava/lang/String;Ljava/lang/String;Lihb;ZLihp;)V

    .line 38
    return-void
.end method

.method public static newBuilder()Lihx;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lihx;

    invoke-direct {v0}, Lihx;-><init>()V

    return-object v0
.end method

.method public static newBuilder(Lihw;)Lihx;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lihx;

    invoke-direct {v0}, Lihx;-><init>()V

    .line 160
    invoke-virtual {p0}, Lihw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->a(Ljava/lang/String;)Lihx;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lihw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lihx;->b(Ljava/lang/String;)Lihx;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lihw;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lihx;->a(Z)Lihx;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lihw;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Lihx;->b(Z)Lihx;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lihw;->f()Lihp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lihx;->a(Lihp;)Lihx;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Lihw;->d()Lihb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lihx;->a(Lihb;)Lihx;

    .line 167
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lihw;->c:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lihw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lihw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lihb;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lihw;->d:Lihb;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lihw;->e:Z

    return v0
.end method

.method public f()Lihp;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lihw;->f:Lihp;

    return-object v0
.end method
