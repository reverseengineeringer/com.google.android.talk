.class public Lgyz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyu;


# instance fields
.field a:Lfyg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lfyg;

    invoke-direct {v0}, Lfyg;-><init>()V

    iput-object v0, p0, Lgyz;->a:Lfyg;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Lgyu;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lgyz;->a:Lfyg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfyg;->a(Z)Lfyg;

    .line 37
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lgyu;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgyz;->a:Lfyg;

    invoke-virtual {v0, p1}, Lfyg;->a(Landroid/graphics/Bitmap;)Lfyg;

    .line 43
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lgyu;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgyz;->a:Lfyg;

    invoke-virtual {v0, p1}, Lfyg;->a(Landroid/os/Bundle;)Lfyg;

    .line 61
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lgyu;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lgyz;->a:Lfyg;

    invoke-virtual {v0, p1}, Lfyg;->a(Ljava/lang/String;)Lfyg;

    .line 49
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lgyu;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lgyz;->a:Lfyg;

    invoke-virtual {v0, p1, p2}, Lfyg;->a(Ljava/lang/String;Ljava/lang/String;)Lfyg;

    .line 55
    return-object p0
.end method

.method public b()Lgyt;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lgyt;

    iget-object v1, p0, Lgyz;->a:Lfyg;

    invoke-virtual {v1}, Lfyg;->a()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v1

    .line 1014
    invoke-direct {v0, v1}, Lgyt;-><init>(Lcom/google/android/gms/feedback/FeedbackOptions;)V

    .line 92
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lgyu;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lgyz;->a:Lfyg;

    invoke-virtual {v0, p1}, Lfyg;->b(Ljava/lang/String;)Lfyg;

    .line 73
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lgyu;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lgyz;->a:Lfyg;

    invoke-virtual {v0, p1}, Lfyg;->c(Ljava/lang/String;)Lfyg;

    .line 79
    return-object p0
.end method
