.class Lkxl;
.super Lkru;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkru",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lkrz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkrz",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lksf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksf",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkrz;Lksf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkrz",
            "<TE;>;",
            "Lksf",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lkru;-><init>()V

    .line 36
    iput-object p1, p0, Lkxl;->a:Lkrz;

    .line 37
    iput-object p2, p0, Lkxl;->b:Lksf;

    .line 38
    return-void
.end method

.method constructor <init>(Lkrz;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkrz",
            "<TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1291
    array-length v0, p2

    invoke-static {p2, v0}, Lksf;->b([Ljava/lang/Object;I)Lksf;

    move-result-object v0

    .line 41
    invoke-direct {p0, p1, v0}, Lkxl;-><init>(Lkrz;Lksf;)V

    .line 42
    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lkxl;->b:Lksf;

    invoke-virtual {v0, p1, p2}, Lksf;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public a(I)Lkyq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkyq",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lkxl;->b:Lksf;

    invoke-virtual {v0, p1}, Lksf;->a(I)Lkyq;

    move-result-object v0

    return-object v0
.end method

.method b()Lkrz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkrz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lkxl;->a:Lkrz;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lkxl;->b:Lksf;

    invoke-virtual {v0, p1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lkxl;->a(I)Lkyq;

    move-result-object v0

    return-object v0
.end method
