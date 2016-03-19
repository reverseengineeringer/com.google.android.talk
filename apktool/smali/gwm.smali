.class public Lgwm;
.super Lgwj;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lgwj;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lgwm;->a:Landroid/content/Intent;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p3}, Lgwj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iput-object p2, p0, Lgwm;->a:Landroid/content/Intent;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lgwm;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgwm;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method
