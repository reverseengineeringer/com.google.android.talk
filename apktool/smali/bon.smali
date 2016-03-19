.class final Lbon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbje;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbng;


# direct methods
.method constructor <init>(Lbng;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 5598
    iput-object p1, p0, Lbon;->b:Lbng;

    iput-object p2, p0, Lbon;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbjb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbjb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5604
    iget-object v0, p0, Lbon;->b:Lbng;

    iget-object v1, p0, Lbon;->a:Ljava/util/List;

    .line 6285
    invoke-virtual {v0, v1, p1}, Lbng;->a(Ljava/util/List;Lbjb;)Z

    .line 5605
    return-void
.end method
