.class public final Lbip;
.super Lbet;
.source "SourceFile"


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLehh;)V
    .locals 1

    .prologue
    .line 14
    invoke-static {p1}, Ldtt;->b(Ljava/lang/String;)Ldtt;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lbet;-><init>(Ldtt;Lehg;)V

    .line 15
    iput-boolean p2, p0, Lbip;->c:Z

    .line 16
    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbip;->a:Ldtt;

    iget-object v0, v0, Ldtt;->d:Ljava/lang/String;

    return-object v0
.end method
