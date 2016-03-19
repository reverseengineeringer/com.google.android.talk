.class abstract Ldjc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:Z

.field final synthetic c:Ldiu;


# direct methods
.method constructor <init>(Ldiu;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Ldjc;->c:Ldiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjc;->b:Z

    return-void
.end method


# virtual methods
.method abstract a()Z
.end method

.method abstract b()Lepa;
.end method

.method c()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Ldjc;->c:Ldiu;

    .line 1045
    iget-object v0, v0, Ldiu;->g:Lepc;

    .line 164
    invoke-virtual {p0}, Ldjc;->b()Lepa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepc;->a(Lepa;)V

    .line 165
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Ldjc;->c:Ldiu;

    .line 2045
    iget-object v0, v0, Ldiu;->g:Lepc;

    .line 168
    invoke-virtual {p0}, Ldjc;->b()Lepa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepc;->b(Lepa;)V

    .line 169
    return-void
.end method
