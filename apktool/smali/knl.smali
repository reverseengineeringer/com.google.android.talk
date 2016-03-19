.class final Lknl;
.super Lknk;
.source "SourceFile"


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lknk;


# direct methods
.method constructor <init>(Lknk;Lknk;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lknl;->c:Lknk;

    iput-object p3, p0, Lknl;->b:Ljava/lang/String;

    .line 1066
    invoke-direct {p0, p2}, Lknk;-><init>(Lknk;)V

    .line 226
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 229
    if-nez p1, :cond_0

    iget-object v0, p0, Lknl;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lknl;->c:Lknk;

    invoke-virtual {v0, p1}, Lknk;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lknk;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
