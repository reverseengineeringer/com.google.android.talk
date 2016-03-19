.class public final Liat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldms;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhqe;)I
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Liat;->a:Ldms;

    invoke-virtual {v0}, Ldms;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    sget v0, Liau;->b:I

    .line 1057
    :goto_0
    return v0

    .line 1056
    :cond_0
    iget-object v0, p0, Liat;->a:Ldms;

    invoke-virtual {v0, p1}, Ldms;->a(Lhqe;)V

    .line 1057
    sget v0, Liau;->a:I

    goto :goto_0
.end method

.method public a(Lihw;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lihw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1045
    new-instance v0, Ldxi;

    invoke-virtual {p1}, Lihw;->e()Z

    move-result v1

    invoke-direct {v0, v1}, Ldxi;-><init>(Z)V

    .line 1046
    new-instance v1, Ldms;

    invoke-direct {v1, p1, v0}, Ldms;-><init>(Lihw;Ldxi;)V

    iput-object v1, p0, Liat;->a:Ldms;

    .line 1047
    iget-object v0, p0, Liat;->a:Ldms;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    return-void
.end method
