.class Lhme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhmb;


# direct methods
.method constructor <init>(Lhmb;)V
    .locals 0

    .prologue
    .line 2039
    iput-object p1, p0, Lhme;->a:Lhmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 2042
    iget-object v0, p0, Lhme;->a:Lhmb;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lhmb;->a(I)V

    .line 2043
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1039
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lhme;->a(Ljava/lang/Integer;)V

    return-void
.end method
