.class final Lgvx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:Z

.field final synthetic e:Lgvw;


# direct methods
.method constructor <init>(Lgvw;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-object p1, p0, Lgvx;->e:Lgvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lgvx;->d:Z

    .line 49
    iput v0, p0, Lgvx;->a:I

    .line 50
    invoke-virtual {p1}, Lgvw;->a()I

    move-result v0

    iput v0, p0, Lgvx;->b:I

    .line 51
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lgvx;->c:I

    iget v1, p0, Lgvx;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lgvx;->e:Lgvw;

    iget v1, p0, Lgvx;->c:I

    invoke-virtual {v0, v1}, Lgvw;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Lgvx;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgvx;->c:I

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgvx;->d:Z

    .line 63
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lgvx;->d:Z

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 71
    :cond_0
    iget v0, p0, Lgvx;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgvx;->c:I

    .line 72
    iget v0, p0, Lgvx;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgvx;->b:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgvx;->d:Z

    .line 74
    iget-object v0, p0, Lgvx;->e:Lgvw;

    iget v1, p0, Lgvx;->c:I

    invoke-virtual {v0, v1}, Lgvw;->b(I)V

    .line 75
    return-void
.end method
