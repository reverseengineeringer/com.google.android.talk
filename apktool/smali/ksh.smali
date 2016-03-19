.class public final Lksh;
.super Lksa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lksa",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lksh;-><init>(B)V

    .line 635
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lksa;-><init>(I)V

    .line 640
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lksa;
    .locals 1

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lksh;->c(Ljava/lang/Object;)Lksh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a([Ljava/lang/Object;)Lksb;
    .locals 0

    .prologue
    .line 1679
    invoke-super {p0, p1}, Lksa;->a([Ljava/lang/Object;)Lksb;

    .line 628
    return-object p0
.end method

.method public a()Lksf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksf",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lksh;->a:[Ljava/lang/Object;

    iget v1, p0, Lksh;->b:I

    invoke-static {v0, v1}, Lksf;->b([Ljava/lang/Object;I)Lksf;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lksb;
    .locals 1

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lksh;->c(Ljava/lang/Object;)Lksh;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Lksh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lksh",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 651
    invoke-super {p0, p1}, Lksa;->a(Ljava/lang/Object;)Lksa;

    .line 652
    return-object p0
.end method
