.class final Lirf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lirf;->b:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lirf;->a:Ljava/lang/Class;

    .line 62
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lirf;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lirf;->a:Ljava/lang/Class;

    invoke-static {v0, v1}, Laal;->a(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lirf;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 1037
    :goto_0
    invoke-static {v0}, Lfii;->a(Z)V

    .line 75
    iget-object v0, p0, Lirf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
