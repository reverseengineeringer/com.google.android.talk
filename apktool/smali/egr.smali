.class public final Legr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Legs;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final a:J

.field private final b:Z


# direct methods
.method public constructor <init>(Lkdv;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Lkdv;->c:Ljyz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 24
    iput-boolean v0, p0, Legr;->b:Z

    .line 25
    iget-boolean v0, p0, Legr;->b:Z

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p1, Lkdv;->c:Ljyz;

    iget-object v0, v0, Ljyz;->b:Ljava/lang/Long;

    .line 1051
    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 27
    iput-wide v0, p0, Legr;->a:J

    .line 31
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0

    .line 29
    :cond_1
    iput-wide v2, p0, Legr;->a:J

    goto :goto_1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Legr;->a:J

    return-wide v0
.end method

.method public a(ILknq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 44
    iget-boolean v0, p0, Legr;->b:Z

    if-eqz v0, :cond_1

    .line 45
    iget-wide v2, p0, Legr;->a:J

    .line 46
    if-eqz v1, :cond_0

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 47
    const-class v4, Lekq;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    .line 48
    invoke-virtual {v0, p1, v2, v3}, Lekq;->a(IJ)V

    .line 50
    :cond_0
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;J)V

    .line 52
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Legr;->b:Z

    return v0
.end method
