.class public final Lege;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Legs;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lczb;


# direct methods
.method public constructor <init>(Ljzd;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Ljzd;->b:Ljxw;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p1, Ljzd;->b:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lege;->b:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Ljzd;->a:Lkcr;

    invoke-static {v0, v1}, Laal;->a(Lkcr;Ljava/lang/String;)Lczb;

    move-result-object v0

    iput-object v0, p0, Lege;->c:Lczb;

    .line 28
    iget-object v0, p1, Ljzd;->c:Ljzc;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p1, Ljzd;->c:Ljzc;

    iget-object v0, v0, Ljzc;->a:Ljava/lang/String;

    iput-object v0, p0, Lege;->a:Ljava/lang/String;

    .line 33
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 31
    :cond_1
    iput-object v1, p0, Lege;->a:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lege;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(ILknq;)V
    .locals 1
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
    .line 49
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 50
    invoke-static {v0, p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Lege;)V

    .line 51
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lege;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lczb;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lege;->c:Lczb;

    return-object v0
.end method
