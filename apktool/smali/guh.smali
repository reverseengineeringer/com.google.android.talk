.class Lguh;
.super Lgsp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgsp;"
    }
.end annotation


# instance fields
.field private a:Lfis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfis",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfis",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgsp;-><init>()V

    iput-object p1, p0, Lguh;->a:Lfis;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lguh;->a:Lfis;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lfis;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lguh;->a:Lfis;

    :cond_0
    return-void
.end method
