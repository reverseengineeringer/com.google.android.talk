.class final Letg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhcy;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Letg;->a:Ljava/lang/String;

    .line 271
    iput-object p2, p0, Letg;->b:Ljava/lang/String;

    .line 272
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Letg;->c:Z

    return v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Letg;->c:Z

    .line 280
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Letg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Letg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Letg;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Letg;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
