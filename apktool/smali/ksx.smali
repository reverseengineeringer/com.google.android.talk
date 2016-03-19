.class final Lksx;
.super Lksv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lksv",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lksm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksm",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lksm;[Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lksm",
            "<TK;TV;>;[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lksv;-><init>()V

    .line 41
    iput-object p1, p0, Lksx;->a:Lksm;

    .line 42
    iput-object p2, p0, Lksx;->b:[Ljava/util/Map$Entry;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lkyp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lksx;->f()Lksf;

    move-result-object v0

    invoke-virtual {v0}, Lksf;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method b()Lksm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksm",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lksx;->a:Lksm;

    return-object v0
.end method

.method g()Lksf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksf",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lkxl;

    iget-object v1, p0, Lksx;->b:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lkxl;-><init>(Lkrz;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lksx;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method
