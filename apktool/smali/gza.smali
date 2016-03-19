.class public final Lgza;
.super Lgyz;
.source "SourceFile"

# interfaces
.implements Lgyu;
.implements Lgyv;


# instance fields
.field b:Lfyh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lgyz;-><init>()V

    .line 104
    new-instance v0, Lfyh;

    invoke-direct {v0}, Lfyh;-><init>()V

    iput-object v0, p0, Lgza;->b:Lfyh;

    .line 105
    iget-object v0, p0, Lgza;->b:Lfyh;

    iput-object v0, p0, Lgza;->a:Lfyg;

    .line 106
    return-void
.end method


# virtual methods
.method public a(I)Lgyv;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lgza;->b:Lfyh;

    invoke-virtual {v0, p1}, Lfyh;->a(I)Lfyh;

    .line 126
    return-object p0
.end method

.method public b()Lgyt;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lgyt;

    iget-object v1, p0, Lgza;->b:Lfyh;

    invoke-virtual {v1}, Lfyh;->a()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v1

    .line 1014
    invoke-direct {v0, v1}, Lgyt;-><init>(Lcom/google/android/gms/feedback/FeedbackOptions;)V

    .line 158
    return-object v0
.end method

.method public d(Ljava/lang/String;)Lgyv;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lgza;->b:Lfyh;

    invoke-virtual {v0, p1}, Lfyh;->d(Ljava/lang/String;)Lfyh;

    .line 112
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lgyv;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lgza;->b:Lfyh;

    invoke-virtual {v0, p1}, Lfyh;->e(Ljava/lang/String;)Lfyh;

    .line 119
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lgyv;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lgza;->b:Lfyh;

    invoke-virtual {v0, p1}, Lfyh;->f(Ljava/lang/String;)Lfyh;

    .line 133
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lgyv;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lgza;->b:Lfyh;

    invoke-virtual {v0, p1}, Lfyh;->g(Ljava/lang/String;)Lfyh;

    .line 140
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lgyv;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lgza;->b:Lfyh;

    invoke-virtual {v0, p1}, Lfyh;->h(Ljava/lang/String;)Lfyh;

    .line 146
    return-object p0
.end method
