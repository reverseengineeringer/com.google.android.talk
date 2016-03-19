.class public abstract Lhuo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbg;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbg;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lhuo;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lhuo;->b:Lbg;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lhtu;)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lhuo;->b(Lhtu;)V

    .line 46
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lhuo;->c:Z

    .line 137
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lhuo;->c:Z

    return v0
.end method

.method public abstract a(Lhus;)Z
.end method

.method public b(Lhtu;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lhuo;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lhtu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    move-object v0, v1

    .line 63
    :cond_0
    invoke-virtual {p1}, Lhtu;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lhuo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    return-void
.end method
